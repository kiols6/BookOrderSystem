package com.ishang.service;

import org.springframework.dao.DataAccessException;

import com.ishang.dao.OrderDaoImpl;
import com.ishang.pojo.OrderTB;

public class OrderGenerate {
	private OrderDaoImpl dao;

	public OrderDaoImpl getDao() {
		return dao;
	}

	public void setDao(OrderDaoImpl dao) {
		this.dao = dao;
	}
	public Boolean OrderGenerate(OrderTB order) {
		try {
			dao.save(order);//调用UserDao数据层中的插入方法
			return true;
		}catch(DataAccessException e) {
			e.printStackTrace();//抛出插入异常
			return false;
		}
	}
}
