package com.ishang.dao;

import java.util.List;

import com.ishang.pojo.OrderTB;

public interface OrderDao {
	
	/*提交订单使用的接口*/
	public void save(OrderTB order);
	
	/*查询订单使用的接口*/
	public List<OrderTB> queryAll();
}
