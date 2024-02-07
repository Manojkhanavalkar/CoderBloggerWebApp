package com.blog.posts;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@WebServlet("/submitpost")
public class PostBlog extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		PrintWriter out=resp.getWriter();
		String title=req.getParameter("postTitle");
		String content=req.getParameter("postContent");
		String gitLink=req.getParameter("githubLink");
		HttpSession session=req.getSession();//accessing the session
		String email=(String) session.getAttribute("email_id");//assigning email_id of session
		try {
			Class.forName("org.postgresql.Driver");
			Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/coderblogger","postgres","Manoj@123");
			System.out.println("Database opened successfully inside postblog");
			String query="insert into blogs (email_id,title,content,gitlink) values(?,?,?,?);";
			PreparedStatement stmt;
			stmt=con.prepareStatement(query);
			stmt.setString(1, email);
			stmt.setString(2, title);
			stmt.setString(3, content);
			stmt.setString(4, gitLink);
			int row=stmt.executeUpdate();
			if(row>0) {
				out.println("<script type=\"text/javascript\">");
				   out.println("alert('your post is uploaded');");//adding message
				   out.println("location='myblogs.jsp';");
				   out.println("</script>");
				   RequestDispatcher rd=req.getRequestDispatcher("/myblogs.jsp");
				   rd.include(req, resp);
			}
			else {
				out.println("<script type=\"text/javascript\">");
				   out.println("alert('Some error occred post again');");//adding message
				   out.println("location='myblogs.jsp';");
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
