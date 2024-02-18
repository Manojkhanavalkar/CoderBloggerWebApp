package in.sp.backend;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.coderblogger.helper.ConnectionProvider;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/forgotPasswordForm")
public class ForgotPassword extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PrintWriter out=resp.getWriter();
		String email=req.getParameter("email");
		//check if account is present of such email address first
		try {
			Connection con=ConnectionProvider.getConnection();
			PreparedStatement check=con.prepareStatement("select * from user_info where email_id=?");
			check.setString(1, email);
			ResultSet set=check.executeQuery();
			if(set.next()) {
				String newPass=com.logicAlgo.PasswordHashing.doHashing(req.getParameter("newPassword"));
				String confirmPass=com.logicAlgo.PasswordHashing.doHashing(req.getParameter("confirmPassword"));
				if(newPass.equals(confirmPass)) {
					try {
//						Connection con=ConnectionProvider.getConnection();
						PreparedStatement update=con.prepareStatement("update user_info set password=? where email_id=?");
						update.setString(1, newPass);
						update.setString(2, email);
						int result=update.executeUpdate();
						if(result>0) {
							out.println("<script type=\"text/javascript\">");
							   out.println("alert('Password Changed Sucessfully!!');");//adding message
							   out.println("location='CoderLogin.jsp';");
							   out.println("</script>");
							   RequestDispatcher rd=req.getRequestDispatcher("/CoderLogin.jsp");
								rd.include(req, resp);	   
						}
					} catch (Exception e) {
						e.printStackTrace();
					}
					
				}
				else {
					out.println("<script type=\"text/javascript\">");
					   out.println("alert('Some Error Occurred! Try again');");//adding message
					   out.println("location='forgot_password.jsp';");
					   out.println("</script>");
					   RequestDispatcher rd=req.getRequestDispatcher("/forgot_password.jsp");
						rd.include(req, resp);	
				}
			}
			else {
				out.println("<script type=\"text/javascript\">");
				   out.println("alert('This Email does not exists Please register!!');");//adding message
				   out.println("location='forgot_password.jsp';");
				   out.println("</script>");
				   RequestDispatcher rd=req.getRequestDispatcher("/forgot_password.jsp");
					rd.include(req, resp);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}	
	}
}
