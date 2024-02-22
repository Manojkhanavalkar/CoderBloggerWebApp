
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
    
    .header {
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
}

.navbar {
  display: flex;
  align-items: center;
  justify-content: space-between;
  max-width: 1200px;
  margin: 0 auto;
  padding: 20px 15px;
}

.navbar .logo a {
  font-size: 1.8rem;
  text-decoration: none;
  color: #fff;
}

.navbar .links {
  display: flex;
  align-items: center;
  list-style: none;
  gap: 35px;
}

.navbar .links a {
  font-weight: 500;
  text-decoration: none;
  color: white;
  padding: 10px 0;
  transition: 0.2s ease;
}

.navbar .links a:hover {
  color: #47b2e4;
}
    
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

<body>
    <header class="header">
     <nav class="title">
        <h1 class="title-text">Coder Blogger</h1>
      </nav>
        <ul class="nav">
      
          <li><a href="index.jsp">Home</a></li> 
          <li><a href="#">Contact Us</a></li>
           <li>
          	<a href="Profile.jsp">Profile
          	<i class="fa fa-chevron-down" style="font-size: .8em;"></i>
          	</a>
          	<ul>
          	<li><a href="/CoderBlogger/Profile.jsp" class= "myblog" >${coder_name}</a></li>
          	<li><a href="Logout" class="logout" >Logout</a></li>
          	</ul>
          	</li>
        </ul>
    </header>
    
<div id="fb-root"></div>

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
						<a href="#!" class="btn btn-outline-primary btn-sm"> <i class="fa fa-commenting-o"></i> <span>20</span> </a>
					</div>
					<div class="card-footer">
					<script src="https://apis.google.com/js/plusone.js">
</script>
<div class="g-comments"
    data-href="http://stackoverflow.com"
    data-width="580"
    data-first_party_property="BLOGGER"
    data-view_type="FILTERED_POSTMOD">
</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>