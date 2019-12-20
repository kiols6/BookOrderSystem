package com.ishang.dao;

import com.ishang.pojo.OrderTB;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;//Spring为Hibernate的DAO提供工具类

public class OrderDaoImpl extends HibernateDaoSupport implements OrderDao {

	@Override
	public void save(OrderTB order) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().save(order);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<OrderTB> queryAll() {
		// TODO Auto-generated method stub
		List<OrderTB> list = this.getHibernateTemplate().find("from Order o");
		return list;
	}

}
