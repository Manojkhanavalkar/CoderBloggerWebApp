package in.sp.backend;

public class User {
	String name,image,about_me;
	String coder_name,gender,email_id;
	
	User(String name, String image,String about_me ){
		this.name=name;
		this.image=image;
		this.about_me=about_me;
	}
	public User(String name,String coder_name,String gender,String email_id) {
		this.name=name;
		this.coder_name=coder_name;
		this.gender=gender;
		this.email_id=email_id;
	}
	public String getName() {
        return name;
    }

    public String getImage() {
        return image;
    }

    public String getAbout_me() {
        return about_me;
    }
	public String getCoder_name() {
		return coder_name;
	}
	public String getGender() {
		return gender;
	}
	public String getEmail_id() {
		return email_id;
	}
    
}
