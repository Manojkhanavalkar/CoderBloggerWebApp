<%@page import="com.code.blog.dao.LikeDao"%>
<%@page import="com.blog.entities.Blog"%>
<%@page import="java.util.List"%>
<%@page import="com.coderblogger.helper.ConnectionProvider"%>
<%@page import="com.code.blog.dao.PostDao"%>

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
    
<div class="row">
<%
	
	PostDao d=new PostDao(ConnectionProvider.getConnection());
	int cid=Integer.parseInt(request.getParameter("cid"));
	List<Blog> posts=null;
	if(cid==0){
		 posts=d.getAllPosts();
	}else{
		 posts=d.getPostByCatId(cid);
	}
	if(posts.size()==0){
		out.println("<h3 class='display-3 text-center'>No Posts Yet in this Category</h3>");
		return;
	}
	for(Blog b:posts){
		%>
	
		<div class="col-md-6 mt-2">
			<div class="card" >
			 <img src="img/blogImage/<%=b.getPostPic()%>" class="card-img-top" alt="...">
				<div class="card-body">
					<b><%=b.getTitle() %></b>
				</div>
					<div class="card-footer text-center">
						<%
							LikeDao ld=new LikeDao(ConnectionProvider.getConnection());
							
						%><!-- I am getting the post id from here -->
						<a href="show_blog_page.jsp?post_id=<%=b.getPost_id()%>" class="btn btn-outline-primary btn-sm">Read more...</a>
						<a href="#!"  class="btn btn-outline-primary btn-sm"> <i class="fa fa-thumbs-o-up"></i> <span class="like-counter"><%=ld.countLikeOnPost(b.getPost_id()) %></span> </a>
						<a href="#!" class="btn btn-outline-primary btn-sm"> <i class="fa fa-commenting-o"></i> <span></span> </a>
					</div>
			</div>
		</div>
		<%
	}
	
%>
</div>