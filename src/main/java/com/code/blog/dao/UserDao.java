package com.code.blog.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import in.sp.backend.User;
public class UserDao {
	Connection con;
	public UserDao(Connection con) {
		this.con=con;
	}
	public User getUserbyEmailId(String email) {
		User user=null;
		try {
			String query="select * from user_info where email_id=?";
			PreparedStatement ps=this.con.prepareStatement(query);
			ps.setString(1, email);
			ResultSet rs=ps.executeQuery();
			if(rs.next()) {
				String name=rs.getString("name");
				String coder_name=rs.getString("coder_name");
				String gender=rs.getString("gender");
				String email_id=rs.getString("email_id");
				user=new User( name, coder_name, gender, email_id);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return user;
	}
}
