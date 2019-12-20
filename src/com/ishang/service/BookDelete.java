package com.ishang.service;
import org.springframework.dao.DataAccessException;

import com.ishang.dao.BookDaoImpl;

public class BookDelete {
	private BookDaoImpl dao;

	public BookDaoImpl getDao() {
		return dao;
	}

	public void setDao(BookDaoImpl dao) {
		this.dao = dao;
	} 
	
	public boolean deleteCheck(int bid) {
		try {
			dao.delete(bid);//调用BookDao数据层中的删除方法
			return true;
		}catch(DataAccessException e) {
			e.printStackTrace();//抛出插入异常
			return false;
		}
	}
}
