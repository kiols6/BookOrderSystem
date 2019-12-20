package com.ishang.service;

import org.springframework.dao.DataAccessException;

import com.ishang.dao.UserDaoImpl;
import com.ishang.pojo.User;

//用户注册时更新数据表
public class RegisterValid {
	
	private UserDaoImpl dao;
	public UserDaoImpl getDao() {
		return dao;
	}
	
	public void setDao(UserDaoImpl dao) {
		this.dao = dao;
	}
	
	public Boolean RegisterCheck(User user) {
		try {
			dao.save(user);//调用UserDao数据层中的插入方法
			return true;
		}catch(DataAccessException e) {
			e.printStackTrace();//抛出插入异常
			return false;
		}
	}
}
