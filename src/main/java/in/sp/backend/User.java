package in.sp.backend;

public class User {
	String name,image,about_me;
	User(String name, String image,String about_me ){
		this.name=name;
		this.image=image;
		this.about_me=about_me;
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
}
