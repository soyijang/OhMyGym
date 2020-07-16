package com.omg.jsp.groupCommu.model.vo;

import java.io.Serializable;

public class GroupCommuPost implements Serializable{
	private String groupType;
	private String groupContent;
	private String groupFileCode;
	private String groupDate;
	private String groupBoardNum;
	private String groupUserId;
	private String userType;
	private String groupDateTime;
	private int groupContainerNum;
	
	public GroupCommuPost() {}

	public GroupCommuPost(String groupType, String groupContent, String groupFileCode, String groupDate,
			String groupBoardNum, String groupUserId, String userType, String groupDateTime, int groupContainerNum) {
		super();
		this.groupType = groupType;
		this.groupContent = groupContent;
		this.groupFileCode = groupFileCode;
		this.groupDate = groupDate;
		this.groupBoardNum = groupBoardNum;
		this.groupUserId = groupUserId;
		this.userType = userType;
		this.groupDateTime = groupDateTime;
		this.groupContainerNum = groupContainerNum;
	}



	public String getGroupType() {
		return groupType;
	}
	public void setGroupType(String groupType) {
		this.groupType = groupType;
	}
	public String getGroupContent() {
		return groupContent;
	}
	public void setGroupContent(String groupContent) {
		this.groupContent = groupContent;
	}
	public String getGroupFileCode() {
		return groupFileCode;
	}
	public void setGroupFileCode(String groupFileCode) {
		this.groupFileCode = groupFileCode;
	}
	public String getGroupDate() {
		return groupDate;
	}
	public void setGroupDate(String groupDate) {
		this.groupDate = groupDate;
	}
	public String getGroupBoardNum() {
		return groupBoardNum;
	}
	public void setGroupBoardNum(String groupBoardNum) {
		this.groupBoardNum = groupBoardNum;
	}
	public String getGroupUserId() {
		return groupUserId;
	}
	public void setGroupUserId(String groupUserId) {
		this.groupUserId = groupUserId;
	}
	public String getUserType() {
		return userType;
	}
	public void setUserType(String userType) {
		this.userType = userType;
	}
	public String getGroupDateTime() {
		return groupDateTime;
	}
	public void setGroupDateTime(String groupDateTime) {
		this.groupDateTime = groupDateTime;
	}

	public int getGroupContainerNum() {
		return groupContainerNum;
	}

	public void setGroupContainerNum(int groupContainerNum) {
		this.groupContainerNum = groupContainerNum;
	}	
	@Override
	public String toString() {
		return "GroupCommuPost [groupType=" + groupType + ", groupContent=" + groupContent + ", groupFileCode="
				+ groupFileCode + ", groupDate=" + groupDate + ", groupBoardNum=" + groupBoardNum + ", groupUserId="
				+ groupUserId + ", userType=" + userType + ", groupDateTime=" + groupDateTime + ", groupContainerNum="
				+ groupContainerNum + "]";
	}

}
