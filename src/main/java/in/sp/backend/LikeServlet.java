package in.sp.backend;

import java.io.IOException;
import java.io.PrintWriter;

import com.code.blog.dao.LikeDao;
import com.coderblogger.helper.ConnectionProvider;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/LikeServlet")
public class LikeServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String operation=req.getParameter("operation");
		String email_id=req.getParameter("email_id");
		int post_id=Integer.parseInt(req.getParameter("post_id"));
		PrintWriter out=resp.getWriter();
//		out.println("data from server");
//		out.println(operation);
//		out.println(post_id);
//		out.println(email_id);
		LikeDao ldao=new LikeDao(ConnectionProvider.getConnection());
		if (operation.equals("like")) {
            boolean isLiked = ldao.isLikedByUser(post_id, email_id);

            if (isLiked) {
                boolean unlikeSuccess = ldao.deleteLike(post_id, email_id);
                out.println(!unlikeSuccess); // Return false if unlike was successful
            } else {
                boolean likeSuccess = ldao.insertLike(post_id, email_id);
                out.println(likeSuccess); // Return true if like was successful
            }
        }else if(operation.equals("getLikeCount")) {
            int likeCount = ldao.countLikeOnPost(post_id);
            out.println(likeCount);
        }
	}
}
