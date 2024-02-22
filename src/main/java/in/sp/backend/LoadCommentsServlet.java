package in.sp.backend;

import java.io.IOException;
import java.util.ArrayList;

import com.blog.entities.Comments;
import com.code.blog.dao.CommentDao;
import com.coderblogger.helper.ConnectionProvider;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/LoadCommentsServlet")
public class LoadCommentsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int postId = Integer.parseInt(req.getParameter("post_id"));
        CommentDao commentDao = new CommentDao(ConnectionProvider.getConnection());
        ArrayList<Comments> commentsList = commentDao.getCommentByPostId(postId);

        StringBuilder html = new StringBuilder();
        for (Comments comment : commentsList) {
            String commenterName = commentDao.getCommenterName(comment.getCommId());
            html.append("<div class=\"comment\">")
                .append("<strong>").append(commenterName).append(":</strong> ").append(comment.getComment())
                .append("</div>");
        }

        resp.setContentType("text/html");
        resp.getWriter().write(html.toString());
    }
}

