package in.sp.backend;
import java.sql.*;
import java.util.ArrayList;
import in.sp.backend.User;
public class Profile{
	Connection con;
	String email;
	public Profile(Connection con,String email) {
		this.con=con;
		this.email=email;
	}
	
	public  ArrayList<User> getUser() {
		User user=null;
		ArrayList<User> list=new ArrayList<User>();
		try {
//			String query="select name,photo_path,about_me from user_info,profile where user_info.email_id=profile.email_id and profile.email_id=?;";
//			Statement stmt=this.con.createStatement();
//			ResultSet set=stmt.executeQuery(query);
			PreparedStatement ps;
			ps=con.prepareStatement("select name,photo_path,about_me from user_info,profile where user_info.email_id=profile.email_id and profile.email_id=?;");//creating query to get values as
			ps.setString(1, email);
			ResultSet rs=ps.executeQuery();//executing query
			while(rs.next()) {
				String name=rs.getString("name");
				String image=rs.getString("photo_path");
				String about_me=rs.getString("about_me");
				user =new User(name,image,about_me);
				list.add(user);
				//return user;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
}
