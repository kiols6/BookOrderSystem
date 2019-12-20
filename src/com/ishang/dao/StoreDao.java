package com.ishang.dao;

import java.util.List;

import com.ishang.pojo.Store;

public interface StoreDao {
	
	/*查看库存使用的接口*/
	public List<Store> queryAll(Store store);
	
	/*修改库存使用的接口*/
	public void update(Store store);
}
