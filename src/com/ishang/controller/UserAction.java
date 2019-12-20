package com.ishang.controller;

import java.util.Map;

import com.ishang.pojo.User;
import com.ishang.service.LoginCheck;
import com.ishang.service.RegisterValid;
import com.ishang.service.UpdateInfo;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;

public class UserAction implements Action {
	private User user;
	private LoginCheck login;
	private RegisterValid register;
	private UpdateInfo update;

	
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
	public LoginCheck getService() {
		return login;
	}

	public void setService(LoginCheck login) {
		this.login = login;
	}
	public RegisterValid getRegister() {
		return register;
	}

	public void setRegister(RegisterValid register) {
		this.register = register;
	}
	public UpdateInfo getUpdate() {
		return update;
	}

	public void setUpdate(UpdateInfo update) {
		this.update = update;
	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
			return SUCCESS;
	}
	
	//鐧诲綍妫�鏌ヨ烦杞�
	@SuppressWarnings("unchecked")
	public String loginCheck() {
		if(login.loginCheck(user)&&user.getType().equals("adm")) {
			Map<String, Object> session = ActionContext.getContext().getSession();
        	session.put("sname", user.getSname());
			return "admin";
		}
		else if(login.loginCheck(user)&&user.getType().equals("stu")) {
			Map<String, Object> session = ActionContext.getContext().getSession();
        	session.put("sname", user.getSname());
			session.put("sid",user.getSid());
        	return "student";
			}
		else
			return ERROR;
	}
	
	//娉ㄥ唽妫�鏌ヨ烦杞�
	public String registerCheck() {
		if(register.RegisterCheck(user))
			return SUCCESS;
		else
			return ERROR;
	}
	//鏇存柊鐢ㄦ埛淇℃伅璺宠浆
	public  String updateCheck() {
		if(update.UpdateInfoCheck(user))
			return SUCCESS;
		else
			return ERROR;
	}

}
