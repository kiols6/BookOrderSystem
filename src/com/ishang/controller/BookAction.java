package com.ishang.controller;

import com.ishang.pojo.Book;
import com.ishang.service.BookDelete;
import com.ishang.service.BookInsert;
import com.ishang.service.BookShopShow;
import com.opensymphony.xwork2.Action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
import net.sf.json.JSONObject;
 
import org.apache.log4j.Logger;
import org.apache.struts2.ServletActionContext;
public class BookAction implements Action {
	//图书实体
	private Book book;
	//图书的插入类
	private BookInsert insert;
	//图书的显示类
	private BookShopShow bss;
	static Logger log = Logger.getLogger(BookAction.class);
    private JSONObject jsonObj;
    private String rows;// 每页显示的记录数
    private String page;// 当前第几页
	//图书的删除类
    private BookDelete delete;
    
    public Book getBook() {
		return book;
	}
	public void setBook(Book book) {
		this.book = book;
	}
	// 图书新增时使用的接口
	public BookInsert getInsert() {
		return insert;
	}
	public void setInsert(BookInsert insert) {
		this.insert = insert;
	}
	// 学生端显示图书时使用的接口
	public BookShopShow getBss() {
		return bss;
	}
	public void setBss(BookShopShow bss) {
		this.bss = bss;
	}
	public JSONObject getJsonObj() {
		return jsonObj;
	}
	public void setJsonObj(JSONObject jsonObj) {
		this.jsonObj = jsonObj;
	}
	public String getRows() {
		return rows;
	}
	public void setRows(String rows) {
		this.rows = rows;
	}
	public String getPage() {
		return page;
	}
	public void setPage(String page) {
		this.page = page;
	}
	public BookDelete getDelete() {
		return delete;
	}
	public void setDelete(BookDelete delete) {
		this.delete = delete;
	}
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}
	public String bookInsertCheck() {
		if(insert.InsertCheck(book))
			return SUCCESS;
		else
			return ERROR;
	}
	//转化为Json格式
    public void toBeJson(List list,int total) throws Exception{
         HttpServletResponse response = ServletActionContext.getResponse();
         HttpServletRequest request = ServletActionContext.getRequest();
          
         JSONObject jobj = new JSONObject();//new一个JSON
         jobj.accumulate("total",total );//total代表一共有多少数据
         jobj.accumulate("rows", list);//row是代表显示的页的数据

         response.setCharacterEncoding("utf-8");//指定为utf-8
         response.getWriter().write(jobj.toString());//转化为JSOn格式
          
         log.info(jobj.toString());
    }
  //查询出所有学生信息
    public String getAllBook() throws Exception {
        log.info("查询出所有图书信息");     
         
        List list = bss.getBookList(page, rows);
        this.toBeJson(list,bss.getBookTotal());
 
        return null;
    }
    
    public String bookDeleteCheck() {
		if(delete.deleteCheck(book.getBid()))
			return SUCCESS;
		else
			return ERROR;
	}
}
