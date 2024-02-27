<%@page import="java.util.ArrayList"%>
<%@page import="com.code.blog.dao.PostDao"%>
<%@page import="com.blog.entities.Category"%>
<%@page import="com.coderblogger.helper.ConnectionProvider"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Create Blog Post</title>
  <link rel="stylesheet" href="styles.css">
  <link href="https://cdn.quilljs.com/1.3.6/quill.snow.css" rel="stylesheet">
  <script src="https://cdn.quilljs.com/1.3.6/quill.js"></script>
</head>

<!-- Style css -->
<style>
* {
  font-family: Arial, sans-serif;
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: "Open Sans", sans-serif;
}

body {
    background-image: linear-gradient(to bottom, #175d69 23%, #330c43 95%);
    height: 100vh;
    width: 100%;
  }

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

  .container {
    max-width: 540px;
    margin: 111px auto;
    background-color: #fff;
    padding: 30px;
    border-radius: 30px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
  }
  
  h1 {
    text-align: center;
    color: rgb(80, 156, 237);
    text-decoration-style: solid;
  }
  
  .form-group {
    margin-bottom: 15px;
  }
  
  label {
    display: block;
    margin-bottom: 5px;
  }
  
  input[type="text"],
  textarea {
    width: 100%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 11px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
  }

  
  input[type="file"] {
    margin-top: 5px;
  }
  
  button {
    display: block;
    width: 100%;
    padding: 10px;
    background-color: #61a6ef;
    color: #fff;
    border: none;
    border-radius: 11px;
    cursor: pointer;
    transition: background-color 0.3s;
    box-shadow: 0 2px 4px rgba(255, 251, 0, 0.1);
    
  }
  
  button:hover {
    background-color: #08c75e;
  }
  </style>

<body>

    <header class="header">
        <nav class="navbar">
          <h2 class="logo"><a href="#">Coder Blogger</a></h2>
          </nav>
          </header>
  <div class="container">
    <h1>Create Blog Post</h1>
    <form action="submitpost" method="post" enctype="multipart/form-data" onsubmit="prepareContent()">
    <%
    	Connection con=ConnectionProvider.getConnection();
    %>
      <div class="form-group">
        <select name="category">
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
        <input type="text" id="postTitle" name="postTitle" required>
      </div>
      <div class="form-group">
        <label for="postContent">Content:</label>
        <div id="editor"  style=" height: 150px;"></div>
        <input type="hidden" id="content" name="content" style="display:none;">  <br>

        <label for="githubLink">GitHub Link:</label>
        <input type="url" id="githubLink" name="githubLink" pattern="https:\/\/github\.com\/.+" required> <br>
        <small>Enter a valid GitHub link starting with "https://github.com/"</small><br><br>
      </div>
      <div class="form-group">
        <label for="image">Upload Picture:</label>
        <input type="file" id="image" name="blogImage">
      </div>
      <button type="submit">Post</button>
    </form>
  </div>
  
  <!-- Java script file -->
  <script>
 document.addEventListener("DOMContentLoaded", function() {
  var quill = new Quill('#editor', {
    theme: 'snow'
  });

  var contentInput = document.querySelector('input[name="content"]');
  quill.on('text-change', function() {
    contentInput.value = quill.root.innerHTML;
  });
});
 function prepareContent() {
     // Get the content from the div with id 'editor'
     var content = $('#editor').html();

     // Set the content as the value of the hidden input field with id 'content'
     $('#content').val(content);
 }
  </script>
</body>
</html>
