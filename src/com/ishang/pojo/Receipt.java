package com.ishang.pojo;

import java.util.Date;

public class Receipt {
	int Borderid;
	int Sid;
	int Bid;
	int Bnum;
	float Buprice;
	float Apay;
	Date Gdate;
	public int getBorderid() {
		return Borderid;
	}
	public void setBorderid(int borderid) {
		Borderid = borderid;
	}
	public int getSid() {
		return Sid;
	}
	public void setSid(int sid) {
		Sid = sid;
	}
	public int getBid() {
		return Bid;
	}
	public void setBid(int bid) {
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
	public float getApay() {
		return Apay;
	}
	public void setApay(float apay) {
		Apay = apay;
	}
	public Date getGdate() {
		return Gdate;
	}
	public void setGdate(Date gdate) {
		Gdate = gdate;
	}
}
