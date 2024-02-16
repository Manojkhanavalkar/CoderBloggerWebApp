package com.code.blog.dao;
import java.sql.Timestamp;

import java.sql.*;
import com.blog.entities.Blog;
import java.util.ArrayList;
import java.util.List;

import com.blog.entities.Category;
public class PostDao {
	Connection con;
	public PostDao(Connection con) {
		this.con=con;
	}
	public ArrayList<Category> getAllCategories(){
		ArrayList<Category> list=new ArrayList<Category>();
		try {
			String query="select * from categories;";
			Statement stmt=this.con.createStatement();
			ResultSet set=stmt.executeQuery(query);
			while(set.next()) {
				int cid=set.getInt("cid");
				String categoryName=set.getString("category");
				String description=set.getString("category");
				Category cat=new Category(cid,categoryName,description);
				list.add(cat);
				
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	//get all the posts
	public List<Blog>getAllPosts(){
		List<Blog>list=new ArrayList<Blog>();
		//fetch all the post 
		try {
			PreparedStatement p=con.prepareStatement("select * from blogs");
			ResultSet set=p.executeQuery();
			while(set.next()) {
				int post_id=set.getInt("post_id");
				String title=set.getString("title");
				String content=set.getString("content");
				String photo_path=set.getString("photo_path");
				String gitlink=set.getString("gitlink");
				int cid=set.getInt("cid");
				String category=set.getString("category");
				Timestamp created_at=set.getTimestamp("created_at");
				Blog post=new Blog(post_id,title,content,gitlink,photo_path,category,cid,created_at);
				list.add(post);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	public List<Blog> getPostByCatId(int catId){
		List<Blog>list=new ArrayList<Blog>();
		//fetch post by id
		
		try {
			PreparedStatement p=con.prepareStatement("select * from blogs where cid=?");
			p.setInt(1, catId);
			ResultSet set=p.executeQuery();
			while(set.next()) {
				int post_id=set.getInt("post_id");
				String title=set.getString("title");
				String content=set.getString("content");
				String photo_path=set.getString("photo_path");
				String gitlink=set.getString("gitlink");
				String category=set.getString("category");
				Timestamp created_at=set.getTimestamp("created_at");
				Blog post=new Blog(post_id,title,content,gitlink,photo_path,category,catId,created_at);
				list.add(post);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
}
