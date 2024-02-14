package com.blog.entities;

import java.security.Timestamp;

public class Blog {
	int post_id;
	String postPic;
	String title;
	String content;
	String gitlink;
	Timestamp pDate;
	Blog(int post_id,String title,String content,String gitlink,String postPic,Timestamp pDate){
		this.title=title;
		this.content=content;
		this.gitlink=gitlink;
		this.post_id=post_id;
		this.pDate=pDate;
	}
	public String getTitle() {
		return title;
	}
	public String getContent() {
		return content;
	}
	public String getGitlink() {
		return gitlink;
	}
}
