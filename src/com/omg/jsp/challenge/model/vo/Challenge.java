package com.omg.jsp.challenge.model.vo;

import java.sql.Date;

public class Challenge implements java.io.Serializable{

	private String title;
	private String manageCode;
	private String startDate;
	private String endDate;
	private String postDate;
	private String managerID;
	private String ingStartDate;
	private String ingEndDate;
	private int join;
	private int limit;
	private int payLimit;
	private String content;
	private String fileCode;
	
	
	public Challenge() {}

	public Challenge(String title, String manageCode, String startDate, String endDate, String postDate,
			String managerID, String ingStartDate, String ingEndDate, int join, int limit, int payLimit, String content,
			String fileCode) {
		super();
		this.title = title;
		this.manageCode = manageCode;
		this.startDate = startDate;
		this.endDate = endDate;
		this.postDate = postDate;
		this.managerID = managerID;
		this.ingStartDate = ingStartDate;
		this.ingEndDate = ingEndDate;
		this.join = join;
		this.limit = limit;
		this.payLimit = payLimit;
		this.content = content;
		this.fileCode = fileCode;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getManageCode() {
		return manageCode;
	}

	public void setManageCode(String manageCode) {
		this.manageCode = manageCode;
	}

	public String getStartDate() {
		return startDate;
	}

	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}

	public String getEndDate() {
		return endDate;
	}

	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}

	public String getPostDate() {
		return postDate;
	}

	public void setPostDate(String postDate) {
		this.postDate = postDate;
	}

	public String getManagerID() {
		return managerID;
	}

	public void setManagerID(String managerID) {
		this.managerID = managerID;
	}

	public String getIngStartDate() {
		return ingStartDate;
	}

	public void setIngStartDate(String ingStartDate) {
		this.ingStartDate = ingStartDate;
	}

	public String getIngEndDate() {
		return ingEndDate;
	}

	public void setIngEndDate(String ingEndDate) {
		this.ingEndDate = ingEndDate;
	}

	public int getJoin() {
		return join;
	}

	public void setJoin(int join) {
		this.join = join;
	}

	public int getLimit() {
		return limit;
	}

	public void setLimit(int limit) {
		this.limit = limit;
	}

	public int getPayLimit() {
		return payLimit;
	}

	public void setPayLimit(int payLimit) {
		this.payLimit = payLimit;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getFileCode() {
		return fileCode;
	}

	public void setFileCode(String fileCode) {
		this.fileCode = fileCode;
	}

	@Override
	public String toString() {
		return "Challenge [title=" + title + ", manageCode=" + manageCode + ", startDate=" + startDate + ", endDate="
				+ endDate + ", postDate=" + postDate + ", managerID=" + managerID + ", ingStartDate=" + ingStartDate
				+ ", ingEndDate=" + ingEndDate + ", join=" + join + ", limit=" + limit + ", payLimit=" + payLimit
				+ ", content=" + content + ", fileCode=" + fileCode + "]";
	}
	
	
	
	
	
}
