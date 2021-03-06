//参考https://www.cnblogs.com/dreammyle/p/4123064.html该篇文档实现前端显示后端信息
package com.ishang.service;

import java.util.List;

import org.hibernate.SessionFactory;

public class BookShopShow {
	
	private SessionFactory sessionFactory;
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	// 根据第几页获取，每页几行获取数据
    public List getBookList(String page, String rows) {
    
        // 当为缺省值的时候进行赋值
        int currentpage = Integer.parseInt((page == null || page == "0") ? "1": page);//第几页
        int pagesize = Integer.parseInt((rows == null || rows == "0") ? "10": rows);//每页多少行
        // 这里使用openSession方法是为了因使用getCurrentSession方法而出现的线程未绑定报错
        List list = this.sessionFactory.openSession().createQuery("from Book")
                       .setFirstResult((currentpage - 1) * pagesize).setMaxResults(pagesize).list();
 
        return list;
    }
    // 统计一共有多少数据
    public int getBookTotal() throws Exception {
        return this.sessionFactory.openSession().find("from Book").size();
    }

}
