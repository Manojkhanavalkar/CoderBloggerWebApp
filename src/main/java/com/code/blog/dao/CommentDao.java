package com.code.blog.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.blog.entities.Comments;


public class CommentDao {
	Connection con=null;
	public CommentDao(Connection con) {
		this.con=con;
	}
	public ArrayList<Comments> getCommentByPostId(int post_id){
		ArrayList<Comments> list=new ArrayList<Comments>();
		try {
			PreparedStatement ps=this.con.prepareStatement("select * from comments where post_id=?");
			ps.setInt(1, post_id);
			ResultSet set=ps.executeQuery();
			while(set.next()) {
				String comment=set.getString("comment");
				int postId=set.getInt("post_id");
				String email_id=set.getString("email_id");
				int com_id=set.getInt("com_id");
				Comments com=new Comments(postId,comment,email_id,com_id);
				list.add(com);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	public String getCommenterName(int com_id) {
		String commName=null;
			try {
				//now i need to first fetch the email_id by comment id and then fetch the user name
				PreparedStatement ps=this.con.prepareStatement("select email_id from comments where com_id=?");
				ps.setInt(1, com_id);
				ResultSet set=ps.executeQuery();
				if(set.next()) {
					String email_id=set.getString("email_id");
					PreparedStatement p=this.con.prepareStatement("select coder_name from user_info where email_id=?;");
					p.setString(1, email_id);
					ResultSet set1=p.executeQuery();
					if(set1.next()) {
						commName=set1.getString("coder_name");
					}
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		return commName;
	}
}
