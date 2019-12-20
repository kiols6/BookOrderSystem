package com.ishang.pojo;

import java.util.Date;

public class Purchase {
	int Bid;
	int Pid;
	int Bnum;
	Date Pdate;
	float Buprice;
	float Btprice;
	String Pagent;
	public int getBid() {
		return Bid;
	}
	public void setBid(int bid) {
		Bid = bid;
	}
	public int getPid() {
		return Pid;
	}
	public void setPid(int pid) {
		Pid = pid;
	}
	public int getBnum() {
		return Bnum;
	}
	public void setBnum(int bnum) {
		Bnum = bnum;
	}
	public Date getPdate() {
		return Pdate;
	}
	public void setPdate(Date pdate) {
		Pdate = pdate;
	}
	public float getBuprice() {
		return Buprice;
	}
	public void setBuprice(float buprice) {
		Buprice = buprice;
	}
	public float getBtprice() {
		return Btprice;
	}
	public void setBtprice(float btprice) {
		Btprice = btprice;
	}
	public String getPagent() {
		return Pagent;
	}
	public void setPagent(String pagent) {
		Pagent = pagent;
	}
}
