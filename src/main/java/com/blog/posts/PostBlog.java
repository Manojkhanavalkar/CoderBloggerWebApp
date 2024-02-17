package com.blog.posts;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;
@WebServlet("/submitpost")
@MultipartConfig 
public class PostBlog extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		PrintWriter out=resp.getWriter();
		String category=req.getParameter("category");
		String title=req.getParameter("postTitle");
		String content=req.getParameter("postContent");
		String gitLink=req.getParameter("githubLink");
		Part file=req.getPart("blogImage");
		String imageFileName=file.getSubmittedFileName();
		System.out.println("selected image file name for the blog="+imageFileName);
		String uploadPath="D:/G-NEW_VOLUME/Coder Blogger website/CoderBlogger/src/main/webapp/img/blogImage/"+imageFileName;
		HttpSession session=req.getSession();//accessing the session
		String email=(String) session.getAttribute("email_id");//assigning email_id of session
		//to upload photo
		try {
			FileOutputStream fos=new FileOutputStream(uploadPath);
			InputStream is=file.getInputStream();
			byte[] data=new byte[is.available()];
			is.read(data);
			fos.write(data);
			fos.close();
			System.out.println("File uploaded "+uploadPath);
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
		//to save info in database
		try {
			Class.forName("org.postgresql.Driver");
			Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/coderblogger","postgres","Manoj@123");
			System.out.println("Database opened successfully inside postblog");
			//code to cid from category table
			int cid=0;
			PreparedStatement ps=con.prepareStatement("Select cid from categories where category=?");
			ps.setString(1, category);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				cid=rs.getInt("cid");//done adding category id
			}
			String query="insert into blogs (email,title,content,category,gitlink,photo_path,cid) values(?,?,?,?,?,?,?);";
			PreparedStatement stmt;
			stmt=con.prepareStatement(query);
			stmt.setString(1, email);
			stmt.setString(2, title);
			stmt.setString(3, content);
			stmt.setString(4, category);
			stmt.setString(5, gitLink);
			stmt.setString(6, imageFileName);
			stmt.setInt(7, cid);
			int row=stmt.executeUpdate();
			if(row>0) {
				out.println("<script type=\"text/javascript\">");
				   out.println("alert('post done successfully');");//adding message
				   out.println("location='Profile.jsp';");
				   out.println("</script>");
				   RequestDispatcher rd=req.getRequestDispatcher("/Profile.jsp");
				   rd.include(req, resp);
			}
			else {
				out.println("<script type=\"text/javascript\">");
				   out.println("alert('Some error occred post again');");//adding message
				   out.println("location='createblog.jsp';");
				   out.println("</script>");
				   RequestDispatcher rd=req.getRequestDispatcher("/createblog.jsp");
				   rd.include(req, resp);
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
	}
}
