package com.ishang.dao;

import java.util.List;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;//Spring为Hibernate的DAO提供工具类
import com.ishang.pojo.User;

public class UserDaoImpl extends HibernateDaoSupport implements UserDao {
	
	
	@Override
	//注册时调用该方法
	public void save(User user) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().save(user);
		this.getHibernateTemplate().flush();
	}
	
	@Override
	//更新用户信息时调用该方法
	public void update(User user) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().saveOrUpdate(user);
		this.getHibernateTemplate().flush();
	}


	@SuppressWarnings("unchecked")
	@Override
	//登录时调用该方法
	public List<User> queryByEntity(User user) {
		// TODO Auto-generated method stub
		String hql= "from User u where u.Sname=? and u.Spassword=? and u.Type=?";//定义HQL查询语句，根据用户名和密码查询，这里是把实体作为查询对象
		String[] value = new String[] {user.getSname(), user.getSpassword(),user.getType()};//调用pojo类中的方法
		List<User> list = this.getHibernateTemplate().find(hql, value);
		return list;
	}

}
