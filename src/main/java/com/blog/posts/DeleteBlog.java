package com.blog.posts;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import com.coderblogger.helper.ConnectionProvider;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/delete-post")
public class DeleteBlog extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String post_id=(String)req.getParameter("post_id");
		PrintWriter out=resp.getWriter();
		int postId=Integer.parseInt(post_id);
		try {
			Connection con=ConnectionProvider.getConnection();
			PreparedStatement ps=con.prepareStatement("delete from blogs where post_id=?");
			ps.setInt(1, postId);
			ps.executeUpdate();
			out.println("<script type=\"text/javascript\">");
			   out.println("alert('Blog deleted successfully!!');");//adding message
			   out.println("location='Feed.jsp';");
			   out.println("</script>");
			RequestDispatcher rd=req.getRequestDispatcher("/Feed.jsp");
			rd.include(req, resp);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
