package com.omg.jsp.ohmoney.model.vo;

import java.io.Serializable;

public class DirectOhMoney implements Serializable{
	private String directNum;
	private String userId;
	private String managerId;
	private String directDate;
	private String directTime;
	private String content;
	private int money; 
	private String isRefund;
	
	public DirectOhMoney() {}

	public DirectOhMoney(String directNum, String userId, String managerId, String directDate, String directTime,
			String content, int money, String isRefund) {
		super();
		this.directNum = directNum;
		this.userId = userId;
		this.managerId = managerId;
		this.directDate = directDate;
		this.directTime = directTime;
		this.content = content;
		this.money = money;
		this.isRefund = isRefund;
	}

	public String getDirectNum() {
		return directNum;
	}

	public void setDirectNum(String directNum) {
		this.directNum = directNum;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getManagerId() {
		return managerId;
	}

	public void setManagerId(String managerId) {
		this.managerId = managerId;
	}

	public String getDirectDate() {
		return directDate;
	}

	public void setDirectDate(String directDate) {
		this.directDate = directDate;
	}

	public String getDirectTime() {
		return directTime;
	}

	public void setDirectTime(String directTime) {
		this.directTime = directTime;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getMoney() {
		return money;
	}

	public void setMoney(int money) {
		this.money = money;
	}

	public String getIsRefund() {
		return isRefund;
	}

	public void setIsRefund(String isRefund) {
		this.isRefund = isRefund;
	}
	
}

