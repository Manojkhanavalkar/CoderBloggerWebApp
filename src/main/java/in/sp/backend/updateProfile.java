package in.sp.backend;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;

/**
 * Servlet implementation class updateProfile
 */
@MultipartConfig
@WebServlet("/updateProfile")
public class updateProfile extends HttpServlet {
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
		}
		
		catch(Exception e)
		{
			e.printStackTrace();
		}
		try {
			Class.forName("org.postgresql.Driver");
			Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/coderblogger","postgres","Manoj@123");
			System.out.println("Database opened successfully");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
