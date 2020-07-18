package com.omg.jsp.ohmoney.model.vo;

import java.io.Serializable;

public class OhMoney implements Serializable{
	private String userId;
	private String ohmoneyType;
	private String ohmoneyAmount;
	private String managerId;
	private String content;
	private String isRefund;
	private String ohmoneyMean;
	private String ohmoneyDate;
	private String ohmoneyTime;
	private int balance;
	
	public OhMoney() {}

	public OhMoney(String userId, String ohmoneyType, String ohmoneyAmount, String managerId, String content,
			String isRefund, String ohmoneyMean, String ohmoneyDate, String ohmoneyTime, int balance) {
		super();
		this.userId = userId;
		this.ohmoneyType = ohmoneyType;
		this.ohmoneyAmount = ohmoneyAmount;
		this.managerId = managerId;
		this.content = content;
		this.isRefund = isRefund;
		this.ohmoneyMean = ohmoneyMean;
		this.ohmoneyDate = ohmoneyDate;
		this.ohmoneyTime = ohmoneyTime;
		this.balance = balance;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getOhmoneyType() {
		return ohmoneyType;
	}

	public void setOhmoneyType(String ohmoneyType) {
		this.ohmoneyType = ohmoneyType;
	}

	public String getOhmoneyAmount() {
		return ohmoneyAmount;
	}

	public void setOhmoneyAmount(String ohmoneyAmount) {
		this.ohmoneyAmount = ohmoneyAmount;
	}

	public String getManagerId() {
		return managerId;
	}

	public void setManagerId(String managerId) {
		this.managerId = managerId;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getIsRefund() {
		return isRefund;
	}

	public void setIsRefund(String isRefund) {
		this.isRefund = isRefund;
	}

	public String getOhmoneyMean() {
		return ohmoneyMean;
	}

	public void setOhmoneyMean(String ohmoneyMean) {
		this.ohmoneyMean = ohmoneyMean;
	}

	public String getOhmoneyDate() {
		return ohmoneyDate;
	}

	public void setOhmoneyDate(String ohmoneyDate) {
		this.ohmoneyDate = ohmoneyDate;
	}

	public String getOhmoneyTime() {
		return ohmoneyTime;
	}

	public void setOhmoneyTime(String ohmoneyTime) {
		this.ohmoneyTime = ohmoneyTime;
	}

	public int getBalance() {
		return balance;
	}

	public void setBalance(int balance) {
		this.balance = balance;
	}

	@Override
	public String toString() {
		return "OhMoney [userId=" + userId + ", ohmoneyType=" + ohmoneyType + ", ohmoneyAmount=" + ohmoneyAmount
				+ ", managerId=" + managerId + ", content=" + content + ", isRefund=" + isRefund + ", ohmoneyMean="
				+ ohmoneyMean + ", ohmoneyDate=" + ohmoneyDate + ", ohmoneyTime=" + ohmoneyTime + ", balance=" + balance
				+ "]";
	}
	
	
}
