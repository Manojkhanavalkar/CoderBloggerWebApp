
<%@page import="com.coderblogger.helper.ConnectionProvider"%>
<%@page import="com.code.blog.dao.PostDao"%>
<%@page import="com.blog.entities.Blog"%>
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
</head>
<body>
	<div class="container">
		<div class="row my-4">
			<div class="col-md-8 offset-md-2">
				<div class="card">
					<div class="card-header">
						<h4><%=b.getTitle() %></h4>
					</div>
					<div class="card-body">
						<p><%=b.getContent() %></p>
						<br>
						<a href="<%=b.getGitlink() %>"><%=b.getGitlink() %></a>
						<br>
						<img src="img/blogImage/<%=b.getPostPic()%>" class="card-img-top" alt="...">
					</div>
					<div class="card-footer text-right">
						<a href="#!" class="btn btn-outline-primary btn-sm"> <i class="fa fa-thumbs-o-up"></i> <span>10</span> </a>
						<a href="#!" class="btn btn-outline-primary btn-sm"> <i class="fa fa-commenting-o"></i> <span>20</span> </a>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>