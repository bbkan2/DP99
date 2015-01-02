package org.koushik.javabrains.action;

import org.apache.commons.lang.StringUtils;
import org.koushik.javabrains.model.User;
import org.koushik.javabrains.service.LoginService;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;


public class LoginAction extends ActionSupport implements ModelDriven<User> {
	
	private User user = new User();
	
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	private static String SUCCESS = "success";
	
	public void validate() {
		if (StringUtils.isEmpty(user.getUserId())) {
			addFieldError("userId", "User ID cannot be blank");
		}
		if (StringUtils.isEmpty(user.getPassword())) {
			addFieldError("password", "Password cannot be blank");
		}
    }
	
	public String execute() {
		LoginService loginService = new LoginService();
		if (loginService.verifyLogin(user)) {
			return SUCCESS;
		}
		return LOGIN;
	}

	@Override
	public User getModel() {
		// TODO Auto-generated method stub
		return user;
	}
}
