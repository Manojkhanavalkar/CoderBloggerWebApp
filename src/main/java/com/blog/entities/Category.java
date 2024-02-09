package com.blog.entities;

public class Category {
	private int cid;
	private String name;
	private String description;
	public Category(int cid,String name,String description) {
		this.cid=cid;
		this.name=name;
		this.description=description;
	}
	public Category() {
		
	}
	public Category(String name,String description) {
		this.name=name;
		this.description=description;
	}
	public String getName() {
		return this.name;
	}
	public String getDescription() {
		return this.description;
	}
	public int getCid() {
		return this.cid;
	}
}
