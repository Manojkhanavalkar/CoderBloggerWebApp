package in.sp.backend;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.websocket.Session;

@WebServlet("/Profile")
public class Profile extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PrintWriter out=resp.getWriter();
		try {
			Class.forName("org.postgresql.Driver");
			Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/coderblogger","postgres","Manoj@123");
			System.out.println("Database opened successfully inside profile");
			HttpSession session=req.getSession();//accessing the session
			String email=(String) session.getAttribute("email_id");//assigning email_id of session
			PreparedStatement ps;
			ps=con.prepareStatement("select name,photo_path,about_me from user_info,profile where user_info.email_id=profile.email_id and profile.email_id=?;");//creating query to get values as
			ps.setString(1, email);//setting the value 
			ResultSet rs=ps.executeQuery();//executing query
			//now we need to check if there any of record present if yes then send that to profile.jsp else send message to add info by clicking the link update profile
			if(rs.next()) {
				in.sp.backend.User user=new User(rs.getString("name"), rs.getString("photo_path"), rs.getString("about_me"));//User(String name, String image,String about_me )
//				req.setAttribute("Profile_info", user);
//				req.getServletContext().getRequestDispatcher("/Profile.jsp").forward(req, resp);/
				session.setAttribute("Profile_info", user); 
				req.getServletContext().getRequestDispatcher("/Profile.jsp").forward(req, resp);
			}else {//alert to update profile
				out.println("<script type=\"text/javascript\">");
				   out.println("alert('No data found please update your profile');");//adding message
				   out.println("location='Profile.jsp';");
				   out.println("</script>");
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
		//in.sp.backend.User user=new User(LEGACY_DO_HEAD, LEGACY_DO_HEAD, LEGACY_DO_HEAD);
	}
}
