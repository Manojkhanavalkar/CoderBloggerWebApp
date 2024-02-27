
<%@page import="com.coderblogger.helper.IsAdminCheck"%>
<%@page import="com.code.blog.dao.LikeDao"%>
<%@page import="in.sp.backend.User"%>
<%@page import="com.code.blog.dao.UserDao"%>
<%@page import="com.coderblogger.helper.ConnectionProvider"%>
<%@page import="com.code.blog.dao.PostDao"%>
<%@page import="com.blog.entities.Blog"%>
<%@page import="java.util.Date"%>
<%@page errorPage="error_page.jsp" %>
<%
	String user_name=(String)session.getAttribute("coder_name");
	if(user_name==null){
		response.sendRedirect("CoderLogin.jsp");
	}
%>

<%
	int postId=Integer.parseInt(request.getParameter("post_id"));
	PostDao d=new PostDao(ConnectionProvider.getConnection());
	Blog b=d.getPostByPostId(postId);
%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><%=b.getTitle() %></title>


<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

    <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>


    <!-- Popper.js -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

    <!-- Bootstrap JS -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="JS/likeJs.js"></script>
    <style>
    
    	.post-title{
    		font-weight: 500;
    		font-size: 30px;
    	}
    	.post-content{
    		font-weight: 250;
    		font-size: 25px;
    	}
    	.post-date{
    		font-style: italic;
    		font-weight: bold;
    	}
    	.post-user-info{
    		font-size: 20px;
    	}
    	.row-user{
    		border: 1px solid #e2e2e2;
    		padding: 10px;
    	}
    </style>
    
</head>
<body>




	<div class="container">
		<div class="row my-4">
			<div class="col-md-8 offset-md-2">
				<div class="card">
					<div class="card-header">
						<h4 class="post-title"><%=b.getTitle() %></h4>
					</div>
					<div class="card-body">
						<img src="img/blogImage/<%=b.getPostPic()%>" class="card-img-top" alt="..."><br>
						<div class="row my-3 row-user">
							<div class="col-md-8">
								
								<% 
									UserDao ud=new UserDao(ConnectionProvider.getConnection());
									
									
								%>
								<p class="post-user-info">By <a href="#!"><%=ud.getUserbyEmailId(b.getemailId()).getCoder_name() %></a></p>
							</div>
							<div class="col-md-4">
								<p class="post-date"><%=b.getCreated_at().toLocaleString() %></p>
							</div>
						</div>
						<p class="post-content"><%=b.getContent() %></p>
						<br>
						<a href="<%=b.getGitlink() %>" class="post-link"><%=b.getGitlink() %></a>
						
					</div>
					<div class="card-footer text-right">
					
						<%
							LikeDao ld=new LikeDao(ConnectionProvider.getConnection());
						%>
						
						<a href="#!" onclick="doLike('<%=b.getPost_id() %>', '<%=session.getAttribute("email_id") %>')" class="btn btn-outline-primary btn-sm"> <i class="fa fa-thumbs-o-up"></i> <span class="like-counter"><%=ld.countLikeOnPost(b.getPost_id()) %></span> </a>
						<a href="#!" class="btn btn-outline-primary btn-sm"> <i class="fa fa-commenting-o"></i> <span></span> </a>
					</div>
					<div class="card-footer">
					<!-- Comments are Here I want to take this post id to Comment servlet so adding some hidden input tag -->
					<textarea rows="3" cols="70" placeholder="Enter text here..." name="comment" form="comment-form" id="comment-area"></textarea><br>
					<form  id="comment-form" >
						<input type="hidden" name="post_id" value=<%=b.getPost_id() %> >
						<input type="submit" value="Leave a comment!!" >
					</form>
					<!-- need to show all comment here using Ajax jQuery -->
					<div id="comments">
						
					</div>
					<a href="Feed.jsp"> <button>Back</button> </a>
					<%
						if(IsAdminCheck.IsAdmin(session)){
							%>
							<form action="delete-post" method="post">
								<input type="hidden" value=<%=b.getPost_id() %> name="post_id">
								<input type="submit" value="Delete Blog" style="color: red;">
							</form>
							<% 
						}
					%>
					<%
						String user=(String)session.getAttribute("coder_name");
						String writer=ud.getUserbyEmailId(b.getemailId()).getCoder_name() ;
						if(user.equals(writer)){
							%>
							<form action="delete-post" method="post">
								<input type="hidden" value=<%=b.getPost_id() %> name="post_id">
								<input type="submit" value="Delete Blog" style="color: red;">
							</form>
							<% 
						}
					%>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
        $(document).ready(function () {
            // Submit comment form using Ajax
            $('#comment-form').submit(function (e) {
                e.preventDefault();
                $.ajax({
                    type: 'POST',
                    url: 'CommentServlet',
                    data: $('#comment-form').serialize(),
                    success: function () {
                        // On success, reload comments dynamically
                        loadComments();
                     // Reset the comment form
                        $('#comment-form')[0].reset();
                    }
                });
            });

            // Load comments initially
            loadComments();
            
         
            


            // Function to load comments dynamically
            function loadComments() {
                $.ajax({
                    type: 'GET',
                    url: 'LoadCommentsServlet', // You need to create a servlet to load comments
                    data: { post_id: <%= postId %> },
                    success: function (data) {
                        $('#comments').html(data);
                    }
                });
            }
        });
    </script>
</body>
</html>