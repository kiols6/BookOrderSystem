package com.ishang.pojo;

public class OrderTB {
	int Borderid;
	String Sid;
	String Bid;
	int Bnum;
	float Buprice;
	float Btprice;
	String Borderdate;
	public int getBorderid() {
		return Borderid;
	}
	public void setBorderid(int borderid) {
		Borderid = borderid;
	}
	public String getSid() {
		return Sid;
	}
	public void setSid(String sid) {
		Sid = sid;
	}
	public String getBid() {
		return Bid;
	}
	public void setBid(String bid) {
		Bid = bid;
	}
	public int getBnum() {
		return Bnum;
	}
	public void setBnum(int bnum) {
		Bnum = bnum;
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
		Btprice = Buprice * Bnum;
	}
	public String getBorderdate() {
		return Borderdate;
	}
	public void setBorderdate(String borderdate) {
		Borderdate = borderdate;
	}
}
