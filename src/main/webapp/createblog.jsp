<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create BLog</title>
</head>
<body>
	<h2>Create a Blog Post</h2>
    
    <form action="/submitPost" method="post">
        <label for="postTitle">Title:</label>
        <input type="text" id="postTitle" name="postTitle" required><br>

        <label for="postContent">Content:</label><br>
        <textarea id="postContent" name="postContent" rows="6" cols="40" required></textarea><br>
        <label for="githubLink">GitHub Link:</label>
        <input type="url" id="githubLink" name="githubLink" pattern="https:\/\/github\.com\/.+">
        <small>Enter a valid GitHub link starting with "https://github.com/"</small><br><br>

        <input type="submit" value="Submit Post">
    </form>
</body>
</html>