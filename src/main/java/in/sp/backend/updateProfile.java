package in.sp.backend;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import jakarta.websocket.Session;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

/**
 * Servlet implementation class updateProfile
 */
//@MultipartConfig
@WebServlet("/updateProfile")
@MultipartConfig
public class updateProfile extends HttpServlet {
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		String about_me=request.getParameter("about_me");
		Part file=request.getPart("ProfileImage");
		String imageFileName=file.getSubmittedFileName();  // get selected image file name
		System.out.println("Selected Image File Name : "+imageFileName);
		//creating path to upload the image
	String uploadPath="D:/G-NEW_VOLUME/Coder Blogger website/CoderBlogger/ProfilePhotos/"+imageFileName;
		try
		{
		FileOutputStream fos=new FileOutputStream(uploadPath);
		InputStream is=file.getInputStream();
		byte[] data=new byte[is.available()];
		is.read(data);
		fos.write(data);
		fos.close();
		System.out.println("file uploaded"+uploadPath);
		}
		
		catch(Exception e)
		{
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
		try {
			Class.forName("org.postgresql.Driver");
			Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/coderblogger","postgres","Manoj@123");
			System.out.println("Database opened successfully in updateProfile.java");
			PreparedStatement stmt;
			jakarta.servlet.http.HttpSession session = request.getSession();
			String email=(String) session.getAttribute("email_id");//we have got the email id here which is primary key
			String query="insert into profile values(?,?,?);";
			stmt=con.prepareStatement(query);
			stmt.setString(1, email);
			stmt.setString(2, imageFileName);
			stmt.setString(3, about_me);
			int row=stmt.executeUpdate();
			if(row>0) {
				out.println("<script type=\"text/javascript\">");
				   out.println("alert('Image and your info stored');");//adding message
				   out.println("location='Profile.jsp';");
				   out.println("</script>");
				   RequestDispatcher rd=request.getRequestDispatcher("/Profile.jsp");
				   rd.include(request, response);
			}else {
				out.println("<script type=\"text/javascript\">");
				   out.println("alert('some error occured try again!');");//adding message
				   out.println("location='updateProfile.jsp';");
				   out.println("</script>");
				   RequestDispatcher rd=request.getRequestDispatcher("/updateProfile.jsp");
				   rd.include(request, response);
			}
			//System.out.println(email);
		} catch (Exception e) {
			e.printStackTrace();
			out.println("<script type=\"text/javascript\">");
			   out.println("alert('some error occured try again!');");//adding message
			   out.println("location='updateProfile.jsp';");
			   out.println("</script>");
			   RequestDispatcher rd=request.getRequestDispatcher("/updateProfile.jsp");
			   rd.include(request, response);

		}
	}
}
