package com.ishang.service;

import org.springframework.dao.DataAccessException;

import com.ishang.dao.BookDaoImpl;
import com.ishang.pojo.Book;


public class BookInsert {
	private BookDaoImpl dao;
	public BookDaoImpl getDao() {
		return dao;
	}
	
	public void setDao(BookDaoImpl dao) {
		this.dao = dao;
	}
	
	public Boolean InsertCheck(Book book) {
		try {
			dao.save(book);//调用BookDao数据层中的插入方法
			return true;
		}catch(DataAccessException e) {
			e.printStackTrace();//抛出插入异常
			return false;
		}
	}
}
