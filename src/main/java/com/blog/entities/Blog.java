package com.blog.entities;

import java.sql.Timestamp;

public class Blog {
	int post_id;
	String postPic;
	String title;
	String content;
	String gitlink;
	Timestamp created_at;
	String category;
	int cat_id;
	public Blog(int post_id,String title,String content,String gitlink,String photo_path,String category,int cat_id,Timestamp created_at){
		this.post_id=post_id;
		this.title=title;
		this.content=content;
		this.gitlink=gitlink;
		this.postPic=photo_path;
		this.category=category;
		this.cat_id=cat_id;
		this.created_at=created_at;
	}
	public String getTitle() {
		return title;
	}
	public String getContent() {
		return content;
	}
	public int getPost_id() {
		return post_id;
	}
	public String getPostPic() {
		return postPic;
	}
	public Timestamp getCreated_at() {
		return created_at;
	}
	public String getCategory() {
		return category;
	}
	public int getCat_id() {
		return cat_id;
	}
	public String getGitlink() {
		return gitlink;
	}
	
}
