package com.omg.jsp.groupCommu.model.vo;

public class GroupComment {
	private String commentNum;
	private String commentUserId;
	private String commentContent;
	private String commentDate;
	private String commentTime;
	private String groupBoardNum;
	
	public GroupComment() {};
	
	public GroupComment(String commentNum, String commentUserId, String commentContent, String commentDate,
			String commentTime, String groupBoardNum) {
		super();
		this.commentNum = commentNum;
		this.commentUserId = commentUserId;
		this.commentContent = commentContent;
		this.commentDate = commentDate;
		this.commentTime = commentTime;
		this.groupBoardNum = groupBoardNum;
	}
	public String getCommentNum() {
		return commentNum;
	}
	public void setCommentNum(String commentNum) {
		this.commentNum = commentNum;
	}
	public String getCommentUserId() {
		return commentUserId;
	}
	public void setCommentUserId(String commentUserId) {
		this.commentUserId = commentUserId;
	}
	public String getCommentContent() {
		return commentContent;
	}
	public void setCommentContent(String commentContent) {
		this.commentContent = commentContent;
	}
	public String getCommentDate() {
		return commentDate;
	}
	public void setCommentDate(String commentDate) {
		this.commentDate = commentDate;
	}
	public String getCommentTime() {
		return commentTime;
	}
	public void setCommentTime(String commentTime) {
		this.commentTime = commentTime;
	}
	public String getGroupBoardNum() {
		return groupBoardNum;
	}
	public void setGroupBoardNum(String groupBoardNum) {
		this.groupBoardNum = groupBoardNum;
	}

	@Override
	public String toString() {
		return "GroupComment [commentNum=" + commentNum + ", commentUserId=" + commentUserId + ", commentContent="
				+ commentContent + ", commentDate=" + commentDate + ", commentTime=" + commentTime + ", groupBoardNum="
				+ groupBoardNum + "]";
	}
	
	
}
