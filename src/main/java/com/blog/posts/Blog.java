package com.blog.posts;

public class Blog {
	String title;
	String content;
	String gitlink;
	Blog(String title,String content,String gitlink){
		this.title=title;
		this.content=content;
		this.gitlink=gitlink;
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
