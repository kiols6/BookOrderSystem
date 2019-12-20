package com.ishang.service;

import org.springframework.dao.DataAccessException;

import com.ishang.dao.UserDaoImpl;
import com.ishang.pojo.User;

public class UpdateInfo {
	
	private UserDaoImpl dao;
	public UserDaoImpl getDao() {
		return dao;
	}
	
	public void setDao(UserDaoImpl dao) {
		this.dao = dao;
	}
	
	public Boolean UpdateInfoCheck(User user) {
		try {
			dao.update(user);//调用UserDao数据层中的更新插入方法
			return true;
		}catch(DataAccessException e) {
			e.printStackTrace();//抛出插入异常
			return false;
		}
	}
}
//https://blog.csdn.net/qq_37591637/article/details/89282992 ssh 查询后台数据库集合显示在前端页面上