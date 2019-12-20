package com.ishang.service;

import java.util.List;

import com.ishang.dao.UserDaoImpl;
import com.ishang.pojo.User;

//用于用户登录时的验证
public class LoginCheck {
	
	private UserDaoImpl dao;
	public UserDaoImpl getDao() {
		return dao;
	}
	public void setDao(UserDaoImpl dao) {
		this.dao = dao;
	}
	
	public Boolean loginCheck(User user) {
		List<User> rs = dao.queryByEntity(user);
		if(rs.size()>0) 
			return true;
		else 
			return false;
	}
}
