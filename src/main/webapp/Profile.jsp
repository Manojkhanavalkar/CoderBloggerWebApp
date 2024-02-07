<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<<<<<<< HEAD
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Profile Page</title>
<!-- Google font -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Song+Myung&display=swap" rel="stylesheet">

<link rel="stylesheet" href="CSS/feedpage.css" />
  </head>
  <body>
    <header class="header">
       
       <div class="title">
       <h1 class="title-text"><span>User Name </span></h1>
       </div>
        <i class= "fa fa bars menu-toggle"></i>
        <ul class="nav">
      
          <li><a href="index.jsp">Home</a></li> 
          <li><a href="#">New Post</a></li>
           <li>
          	<a href="#">Account
          	<i class="fa fa-chevron-down" style="font-size: .8em;"></i>
          	</a>
          	<ul>
          	<li><a href="#" class= "edit profile">Edit Profile</a></li>
          	<li><a href="#" class="change password" >Change Password</a></li>
          	<li><a href="Logout" class="logout" >Logout</a></li>
          	</ul>
          	</li>
        </ul>
    </header>
    </body>
    </html>
=======
<title>${coder_name}</title><!-- this is the profile name fetched from back end -->
</head>
<body>
	 <h1>Profile</h1>
	<div>
	NAME: ${Profile_info.name} <br>
	<img alt="profile_image" src="./img/profile/${Profile_info.image}" height="200px" width="200px"> <br>
	ABOUT ME:${Profile_info.about_me}
	</div>
	<a href="updateProfile.jsp">UPDATE profile</a>  
	<a href="myblogs.jsp"> <button>MY BLOGS</button> </a>
	
</body>
</html>
>>>>>>> branch 'master' of https://github.com/Manojkhanavalkar/CoderBloggerWebApp
