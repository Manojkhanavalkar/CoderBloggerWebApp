package com.blog.entities;

public class Comments {
	int post_id;
	String comment;
	String email_id;
	int comment_id;
	public Comments(int post_id,String comment,String email_id,int comment_id) {
		this.post_id=post_id;
		this.comment=comment;
		this.email_id=email_id;
		this.comment_id=comment_id;
	}
	public int getPost_id() {
		return post_id;
	}
	public String getComment() {
		return comment;
	}
	public String getEmail_id() {
		return email_id;
	}
	public int getCommId() {
		return comment_id;
	}
	
}
