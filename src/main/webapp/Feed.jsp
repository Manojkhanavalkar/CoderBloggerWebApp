<%@page import="com.blog.entities.Category"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.coderblogger.helper.ConnectionProvider"%>
<%@page import="com.code.blog.dao.PostDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<title>Feed Page</title>
<!-- Google font -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Song+Myung&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

    <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>


    <!-- Popper.js -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

    <!-- Bootstrap JS -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <style type="text/css">
    #post-container {
    overflow-y: auto; /* or overflow-y: scroll; */
    height: 600px;
}
    </style>
<link rel="stylesheet" href="CSS/feedpage.css" />
  </head>
  <body>
    <header class="header">
     <nav class="title">
        <h1 class="title-text">Coder Blogger</h1>
      </nav>
        <i class= "fa fa bars menu-toggle"></i>
        <ul class="nav">
      
          <li><a href="index.jsp" style="color: #f8f9fa;">Home</a></li> 
          <li><a href="#" style="color: #f8f9fa;">Contact Us</a></li>
           <li>
          	<a href="Profile.jsp" style="color: #f8f9fa;">Profile
          	<i class="fa fa-chevron-down" style="font-size: .8em;"></i>
          	</a>
          	<ul>
          	<li><a href="/CoderBlogger/Profile.jsp" class= "myblog" >${coder_name}</a></li>
          	<li><a href="Logout" class="logout" >Logout</a></li>
          	</ul>
          	</li>
        </ul>
    </header>
    <!-- Main body of the page -->
    	<main>
    		<div class="container">
    			<div class="row">
    				<div class="col-md-4">
    				<div class="catagory-table">
    				<table>
    				<tr>
    					<th><a href="#" onclick="getPosts(0,this)" class=" c-link list-group-item list-group-item-action active rounded-pill mb-4 text-center">All post</a></th>
    					</tr>
    					<%
    						PostDao p=new PostDao(ConnectionProvider.getConnection());
    						ArrayList<Category> list1=p.getAllCategories();
    						for(Category c:list1){
    					%>
    					<tr>
    					<th><a href="#" onclick="getPosts(<%=c.getCid() %>,this)" class="c-link list-group-item list-group-item-action  rounded-pill text-center"><%=c.getName() %></a><br></th>
    					</tr>
    					<%} %>
    				
    				</table>
    			</div>
    				</div>
    				<div class="col-md-8" align="center" id="post-container">
    				<!-- all posts -->
    				<div class="container" id="loader">
    					<i class="fa fa-refresh fa-spin fa-5x" ></i>
    					<h3>Loading...</h3>
    				</div>
    				
    			</div>
    			</div>
    			
    		</div>
    	</main>
    
    <!-- End of main body -->
    <script>
    function getPosts(catId,temp){
    	
    	$("#loader").show();
    	$("#post-container").hide();
    	$(".c-link").removeClass('active');
    	
    	$.ajax({
			url:"load_post.jsp",
			data:{cid:catId},
			success:function(data,textStatus,jqXHR){
				console.log(data);
				$("#loader").hide();
			    $("#post-container").show();
				$("#post-container").html(data);
				$(temp).addClass('active');
			}
		})
    }
    	$(document).ready(function (e){
    		let allPostRef=$('.c-link')[0]
    		getPosts(0,allPostRef);
    	})
    	
    </script>
    </body>
    </html>