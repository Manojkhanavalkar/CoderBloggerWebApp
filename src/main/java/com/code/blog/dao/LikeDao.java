package com.code.blog.dao;
import java.sql.*;
public class LikeDao {
	Connection con;
	public LikeDao(Connection con) {
		this.con=con;
	}
	public boolean insertLike(int post_id,String email_id) {
		boolean f=false;
		try {
			String query="insert into likes (post_id,email_id) values(?,?)";
			PreparedStatement ps=this.con.prepareStatement(query);
			//values set...
			ps.setInt(1, post_id);
			ps.setString(2, email_id);
			ps.executeUpdate();
			f=true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}
	public int countLikeOnPost(int post_id) {
		int count=0;
		try {
			String query="select count(*) from likes where post_id=?";
			PreparedStatement ps=this.con.prepareStatement(query);
			ps.setInt(1, post_id);
			ResultSet rs= ps.executeQuery();
			if(rs.next()) {
				count=rs.getInt(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return count;
	}
	public boolean isLikedByUser(int post_id,String email_id ) {
		boolean f=false;
			try {
				String query="select * from likes where post_id=? and email_id=?";
				PreparedStatement ps=this.con.prepareStatement(query);
				ps.setInt(1, post_id);
				ps.setString(2, email_id);
				ResultSet set=ps.executeQuery();
				if(set.next()) {
					f=true;
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		return f;
		
	}
	public boolean deleteLike(int post_id,String email_id) {
		boolean f=false;
		try {
			PreparedStatement ps=this.con.prepareStatement("delete from likes where post_id=? and email_id=?");
			ps.setInt(1, post_id);
			ps.setString(2, email_id);
			ps.executeUpdate();
			f=true;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}
}
