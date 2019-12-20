package com.ishang.dao;

import com.ishang.pojo.Receipt;

public interface ReceiptDao {
	/*保存收据单使用的接口*/
	public void save(Receipt receipt);
	
	/*查看收据单使用的接口*/
	public void queryAll(Receipt receipt);

}
