package com.code.blog.dao;
import java.sql.*;
import java.util.ArrayList;

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
}
