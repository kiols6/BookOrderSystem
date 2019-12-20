package com.ishang.dao;

import java.util.List;

import com.ishang.pojo.Purchase;

public interface PurchaseDao {
	
	/*保存采购单使用的接口*/
	public void save(Purchase purchase);
	
	/*调用采购单使用的接口*/
	public List<Purchase> quaryAll(Purchase purchase);
}
