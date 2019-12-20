package com.ishang.dao;

import com.ishang.pojo.Book;


import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;//Spring为Hibernate的DAO提供工具类

public class BookDaoImpl extends HibernateDaoSupport implements BookDao {

	
	@Override
	public void save(Book book) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().save(book);
		this.getHibernateTemplate().flush();
	}

	@Override
	public void delete(int bid) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().delete(getHibernateTemplate().get(Book.class, bid));
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Book> queryAll() {
		// TODO Auto-generated method stub
		List<Book> list = this.getHibernateTemplate().find("from Book b");
		return list;
	}

}
