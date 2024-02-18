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
import jakarta.servlet.http.HttpSession;

@WebServlet("/changePasswordForm")
public class ChangePassword extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Connection con=ConnectionProvider.getConnection();//data base connection
		PrintWriter out=resp.getWriter();
		String oldPassword=com.logicAlgo.PasswordHashing.doHashing(req.getParameter("oldpassword"));//hashing old password to match with database
		//get email_Id
		HttpSession session=req.getSession();
		String email=(String)session.getAttribute("email_id");
		try {
			PreparedStatement ps=con.prepareStatement("select password from user_info where email_id=?");
			ps.setString(1, email);
			ResultSet rs=ps.executeQuery();
			if(rs.next()) {
				if(oldPassword.equals(rs.getString("password"))) {//checking if old password match with the database
					String newPass= com.logicAlgo.PasswordHashing.doHashing(req.getParameter("newPassword"));
					String confirmPass= com.logicAlgo.PasswordHashing.doHashing(req.getParameter("confirmPassword")); 
					if(newPass.equals(confirmPass)) {
						PreparedStatement update=con.prepareStatement("update user_info set password=? where email_id=?");
						update.setString(1, newPass);
						update.setString(2, email);
						int result=update.executeUpdate();
						if(result>0) {
							out.println("<script type=\"text/javascript\">");
							   out.println("alert('Password Changed Sucessfully!!');");//adding message
							   out.println("location='CoderLogin.jsp';");
							   out.println("</script>");
							   RequestDispatcher rd=req.getRequestDispatcher("/Profile.jsp");
								rd.include(req, resp);	   
						}
						else {
							out.println("<script type=\"text/javascript\">");
							   out.println("alert('Some Error Occurred! Try again');");//adding message
							   out.println("location='CoderLogin.jsp';");
							   out.println("</script>");
							   RequestDispatcher rd=req.getRequestDispatcher("/change_password.jsp");
								rd.include(req, resp);	
						}
					}
					else {
						out.println("<script type=\"text/javascript\">");
						   out.println("alert('New password and confirm password did not match!!');");//adding message
						   out.println("location='CoderLogin.jsp';");
						   out.println("</script>");
						   RequestDispatcher rd=req.getRequestDispatcher("/change_password.jsp");
							rd.include(req, resp);	
					}
				}else {
					out.println("<script type=\"text/javascript\">");
					   out.println("alert('Old password does not Match!');");//adding message
					   out.println("location='CoderLogin.jsp';");
					   out.println("</script>");
					   RequestDispatcher rd=req.getRequestDispatcher("/change_password.jsp");
						rd.include(req, resp);	
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
}
