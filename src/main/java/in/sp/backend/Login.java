package in.sp.backend;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/LoginForm")
public class Login extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email=req.getParameter("email");
		String password=com.logicAlgo.PasswordHashing.doHashing(req.getParameter("password"));
		PrintWriter out=resp.getWriter();
		try {
			Class.forName("org.postgresql.Driver");
			Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/coderblogger","postgres","Manoj@123");
			System.out.println("Database opened successfully");
			PreparedStatement ps=con.prepareStatement("select * from user_info where email_id=? and password=? ;");
			ps.setString(1, email);
			ps.setString(2, password);
			ResultSet rs=ps.executeQuery();
			if(rs.next())
			{
				HttpSession session=req.getSession();
				session.setAttribute("coder_name", rs.getString("coder_name"));
				RequestDispatcher rd=req.getRequestDispatcher("/Feed.jsp");
				rd.include(req, resp);
			}
			else {
				 out.println("<script type=\"text/javascript\">");
				   out.println("alert('User or password incorrect');");
				   out.println("location='index.jsp';");
				   out.println("</script>");
			}
		} catch (Exception e) {
			e.printStackTrace();
			out.println("<script type=\"text/javascript\">");
			   out.println("alert('Some error occured');");
			   out.println("location='index.jsp';");
			   out.println("</script>");
		}
	}

}
