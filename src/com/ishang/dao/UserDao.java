package com.ishang.dao;

import java.util.List;

import com.ishang.pojo.User;

public interface UserDao {
	
	/*用户注册所使用的接口*/
	public void save(User p);
	
	/*用户修改个人信息所使用的接口*/
	public void update(User p);
	
	/*用户登录验证所使用的接口*/
	public List<User> queryByEntity(User user);

	
	
}
