package com.coderblogger.helper;

import jakarta.servlet.http.HttpSession;

public class IsAdminCheck {
	public static boolean IsAdmin(HttpSession session) {
		boolean flag=false;
		if(session.getAttribute("coder_name").equals("Admin_1")) {
			flag=true;
		}
		return flag;
	}
}
