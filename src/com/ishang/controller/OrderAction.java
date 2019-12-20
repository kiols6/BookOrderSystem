package com.ishang.controller;
import com.ishang.pojo.OrderTB;
import com.ishang.service.OrderGenerate;
import com.ishang.service.OrderQuery;
import com.opensymphony.xwork2.Action;

import net.sf.json.JSONObject;

import java.text.ParseException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.apache.struts2.ServletActionContext;

public class OrderAction implements Action {
	private OrderTB order;
	private OrderGenerate generateOrder;
	private OrderQuery odq;
	static Logger log = Logger.getLogger(OrderAction.class);
    private JSONObject jsonObj;
    private String rows;// 每页显示的记录数
    private String page;// 当前第几页
    
	public OrderTB getOrder() {
		return order;
	}
	public void setOrder(OrderTB order) {
		this.order = order;
	}
	public OrderGenerate getGenerateOrder() {
		return generateOrder;
	}
	public void setGenerateOrder(OrderGenerate generateOrder) {
		this.generateOrder = generateOrder;
	}
	public OrderQuery getOdq() {
		return odq;
	}
	public void setOdq(OrderQuery odq) {
		this.odq = odq;
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
	@Override
	public String execute() throws Exception {
		
		// TODO Auto-generated method stub
		return null;
	}
	public String generateCheck() throws ParseException {
		if(generateOrder.OrderGenerate(order))
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
    public String getAllOrder() throws Exception {
        log.info("查询出所有图书信息");     
         
        List list = odq.getOrderList(page, rows);
        this.toBeJson(list,odq.getOrderTotal());
 
        return null;
    }
}
