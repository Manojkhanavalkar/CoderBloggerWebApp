<%@page import="java.util.ArrayList"%>
<%@page import="com.code.blog.dao.PostDao"%>
<%@page import="com.blog.entities.Category"%>
<%@page import="com.coderblogger.helper.ConnectionProvider"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create BLog</title>
</head>
<body>
	<h2>Create a Blog Post</h2>
    
    <form action="submitpost" method="post" enctype="multipart/form-data">
    <!-- creating a drop down list to select category-->
    <%
    	Connection con=ConnectionProvider.getConnection();
    %>
<<<<<<< HEAD
     <h1><%= con %></h1> 
    <select>
=======
    <!-- <h1><%= con %></h1> --> 
    <select name="category">
>>>>>>> branch 'master' of https://github.com/Manojkhanavalkar/CoderBloggerWebApp
    	<option selected disabled>---select category---</option>
    	<%
    		PostDao postd=new PostDao(ConnectionProvider.getConnection());
    		ArrayList<Category> list=postd.getAllCategories();
    		for(Category c:list){	
    	%>
    	<option><%=c.getName() %></option><!-- Adding categories from backend -->
    	<%
    		}
    	%>
    	<!-- i have given six options here those are like java,Python,c/c++,frontend,backend,fullstack and showing here from backend -->
    </select><br><br>
        <label for="postTitle">Title:</label>
        <input type="text" id="postTitle" name="postTitle" required><br>

        <label for="postContent">Content:</label><br>
        <textarea id="postContent" name="postContent" rows="6" cols="40" required></textarea><br>
        <label for="githubLink">GitHub Link:</label>
        <input type="url" id="githubLink" name="githubLink" pattern="https:\/\/github\.com\/.+" required> <br>
        <small>Enter a valid GitHub link starting with "https://github.com/"</small><br><br>
        Add photo:<input type="file" name="blogImage" value="" required><br><br>
        <input type="submit" value="Post">
    </form>
</body>
</html>