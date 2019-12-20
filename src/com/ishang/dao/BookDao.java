package com.ishang.dao;

import java.util.List;

import com.ishang.pojo.Book;

public interface BookDao {
	
	/*新增图书使用的接口*/
	public void save(Book book);
	/*下架图书使用的接口*/
	public void delete(int bid);
	/*查看图书使用的接口*/
	public List<Book> queryAll();
}
