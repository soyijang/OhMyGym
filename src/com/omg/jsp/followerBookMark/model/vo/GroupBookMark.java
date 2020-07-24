package com.omg.jsp.followerBookMark.model.vo;

public class GroupBookMark implements java.io.Serializable{
	
	private String memberId; //그룹북마크꺼 아이디
	private String groupBoardNum; //그룹북마크=그룹소통
	private String groupContent; //그룹소통방꺼 내용
	private String groupDate; //그룹소통방꺼 게시일
	public GroupBookMark() {
		super();
		// TODO Auto-generated constructor stub
	}
	public GroupBookMark(String memberId, String groupBoardNum, String groupContent, String groupDate) {
		super();
		this.memberId = memberId;
		this.groupBoardNum = groupBoardNum;
		this.groupContent = groupContent;
		this.groupDate = groupDate;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getGroupBoardNum() {
		return groupBoardNum;
	}
	public void setGroupBoardNum(String groupBoardNum) {
		this.groupBoardNum = groupBoardNum;
	}
	public String getGroupContent() {
		return groupContent;
	}
	public void setGroupContent(String groupContent) {
		this.groupContent = groupContent;
	}
	public String getGroupDate() {
		return groupDate;
	}
	public void setGroupDate(String groupDate) {
		this.groupDate = groupDate;
	}
	@Override
	public String toString() {
		return "GroupBookMark [memberId=" + memberId + ", groupBoardNum=" + groupBoardNum + ", groupContent="
				+ groupContent + ", groupDate=" + groupDate + "]";
	}
	
	
	
}
