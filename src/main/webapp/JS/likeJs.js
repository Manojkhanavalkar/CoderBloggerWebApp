function doLike(post_id,email_id){
	console.log(post_id+","+email_id)
	const d={
		post_id:post_id,
		email_id:email_id,
		operation:'like'
	}
	$.ajax({
		url:"LikeServlet",
		data:d,
		success:function(data,textStatus,jqXHR){
			console.log(data);
			if(data.trim()=='true'){
				let c=$(".like-counter").html();
				c++;
				$('.like-counter').html(c);
			}
		},
		error: function(jqXHR,textStatus,errorThrown){
			console.log(data)
		}
	})
}