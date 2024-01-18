package in.sp.backend;

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
@WebServlet("/RegisterForm")
public class Registration extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
		PrintWriter out=resp.getWriter();
		String name=req.getParameter("name");
		String coderName=req.getParameter("coderName");
		String gender=req.getParameter("gender1");
		String email=req.getParameter("email");
		String password=com.logicAlgo.PasswordHashing.doHashing(req.getParameter("password"));
		String codedPass=com.logicAlgo.PasswordHashing.doHashing(req.getParameter("password"));
		resp.setContentType("text/html");
		try {
			if(!codedPass.equals(password)) {
				out.print("<h3 style='color:red'>confirm password and password did not match</h3>");
				RequestDispatcher rd=req.getRequestDispatcher("/CoderRegister.jsp");
				rd.include(req, resp);
			}
			else {
				Class.forName("org.postgresql.Driver");
				Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/coderblogger","postgres","Manoj@123");
				System.out.println("Database opened successfully");
				PreparedStatement ps=con.prepareStatement("insert into user_info values(?,?,?,?,?)");
				ps.setString(1, name);
				ps.setString(2, coderName);
				ps.setString(3, gender);
				ps.setString(4,email);
				ps.setString(5,password);
				
				int count=ps.executeUpdate();
				if(count>0) {
					out.print("<h3 style='color:green'>User registration successful</h3>");
					RequestDispatcher rd=req.getRequestDispatcher("/CoderLogin.jsp");
					rd.include(req, resp);
				}
				else {
					out.print("<h3 style='color:red'>User registration unsuccessful some error occured!</h3>");
					RequestDispatcher rd=req.getRequestDispatcher("/CoderRegister.jsp");
					rd.include(req, resp);
				}
			}
		} catch (Exception e) {
			out.print("<h3 style='color:red'>User registration unsuccessful some error occured!</h3>");
			out.print("<h3 style='color:red'>Error:</h3>"+"<h3>"+e.getMessage()+"</h3>");
			RequestDispatcher rd=req.getRequestDispatcher("/CoderRegister.jsp");
			rd.include(req, resp);
		}
		
		
	}

}
