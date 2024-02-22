<%@page import="com.blog.entities.Comments"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.coderblogger.helper.ConnectionProvider"%>
<%@page import="com.code.blog.dao.CommentDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    int postId = Integer.parseInt(request.getParameter("post_id"));
    CommentDao commentDao = new CommentDao(ConnectionProvider.getConnection());
    ArrayList<Comments> commentsList = commentDao.getCommentByPostId(postId);
%>
<html>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<body>
	<div id="comments-container">
        <!-- Display existing comments -->
        <%
            for (Comments comment : commentsList) {
                String commenterName = commentDao.getCommenterName(comment.getCommId());
        %>
        <div class="comment">
            <strong><%= commenterName %>:</strong> <%= comment.getComment() %>
        </div>
        <%
            }
        %>
    </div>
</body>
</html>