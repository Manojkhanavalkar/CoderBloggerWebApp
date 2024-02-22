package in.sp.backend;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.coderblogger.helper.ConnectionProvider;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.websocket.Session;

@WebServlet("/CommentServlet")
public class CommentServlet extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String comment=req.getParameter("comment");
		HttpSession session=req.getSession();
		String email_id=(String)session.getAttribute("email_id");
		int post_id=Integer.parseInt(req.getParameter("post_id")) ;
		try {
			Connection con=ConnectionProvider.getConnection();
			PreparedStatement ps=con.prepareStatement("insert into comments (comment,post_id,email_id) values(?,?,?);");
			ps.setString(1, comment);
			ps.setInt(2, post_id);
			ps.setString(3, email_id);
			ps.executeUpdate();//if some error occur we can see it on console
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
