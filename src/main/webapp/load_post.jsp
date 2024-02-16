<%@page import="com.blog.entities.Blog"%>
<%@page import="java.util.List"%>
<%@page import="com.coderblogger.helper.ConnectionProvider"%>
<%@page import="com.code.blog.dao.PostDao"%>
<!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

    <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>


    <!-- Popper.js -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

    <!-- Bootstrap JS -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<div class="row">
<%
	PostDao d=new PostDao(ConnectionProvider.getConnection());
	List<Blog> posts=d.getAllPosts();
	for(Blog b:posts){
		%>
		
		<div class="col-md-6 mt-2">
			<div class="card">
			 <img src="img/blogImage/<%=b.getPostPic()%>" class="card-img-top" alt="...">
				<div class="card-body">
					<b><%=b.getTitle() %></b>
					<p><%=b.getContent() %></p>
				</div>
			</div>
		</div>
		<%
	}
	
%>
</div>