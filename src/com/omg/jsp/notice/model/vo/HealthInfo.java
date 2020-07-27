package com.omg.jsp.notice.model.vo;

public class HealthInfo implements java.io.Serializable{
	
	private String boardCode;
	private String boardNum;
	private String writedate;
	private String boardName;
	private String boardContent;
	private String boardCategory;
	private String viewCount;
	private String likeCount;
	private String bookmarkCount;
	private String boardFileCode;
	private String writeTime;
	private String managerId;
	private String boardTitle;
	private String status;
	
	
	public HealthInfo() {
	}


	public HealthInfo(String boardCode, String boardNum, String writedate, String boardName, String boardContent,
			String boardCategory, String viewCount, String likeCount, String bookmarkCount, String boardFileCode,
			String writeTime, String managerId, String boardTitle, String status) {
		super();
		this.boardCode = boardCode;
		this.boardNum = boardNum;
		this.writedate = writedate;
		this.boardName = boardName;
		this.boardContent = boardContent;
		this.boardCategory = boardCategory;
		this.viewCount = viewCount;
		this.likeCount = likeCount;
		this.bookmarkCount = bookmarkCount;
		this.boardFileCode = boardFileCode;
		this.writeTime = writeTime;
		this.managerId = managerId;
		this.boardTitle = boardTitle;
		this.status = status;
	}


	public String getBoardCode() {
		return boardCode;
	}


	public void setBoardCode(String boardCode) {
		this.boardCode = boardCode;
	}


	public String getBoardNum() {
		return boardNum;
	}


	public void setBoardNum(String boardNum) {
		this.boardNum = boardNum;
	}


	public String getWritedate() {
		return writedate;
	}


	public void setWritedate(String writedate) {
		this.writedate = writedate;
	}


	public String getBoardName() {
		return boardName;
	}


	public void setBoardName(String boardName) {
		this.boardName = boardName;
	}


	public String getBoardContent() {
		return boardContent;
	}


	public void setBoardContent(String boardContent) {
		this.boardContent = boardContent;
	}


	public String getBoardCategory() {
		return boardCategory;
	}


	public void setBoardCategory(String boardCategory) {
		this.boardCategory = boardCategory;
	}


	public String getViewCount() {
		return viewCount;
	}


	public void setViewCount(String viewCount) {
		this.viewCount = viewCount;
	}


	public String getLikeCount() {
		return likeCount;
	}


	public void setLikeCount(String likeCount) {
		this.likeCount = likeCount;
	}


	public String getBookmarkCount() {
		return bookmarkCount;
	}


	public void setBookmarkCount(String bookmarkCount) {
		this.bookmarkCount = bookmarkCount;
	}


	public String getBoardFileCode() {
		return boardFileCode;
	}


	public void setBoardFileCode(String boardFileCode) {
		this.boardFileCode = boardFileCode;
	}


	public String getWriteTime() {
		return writeTime;
	}


	public void setWriteTime(String writeTime) {
		this.writeTime = writeTime;
	}


	public String getManagerId() {
		return managerId;
	}


	public void setManagerId(String managerId) {
		this.managerId = managerId;
	}


	public String getBoardTitle() {
		return boardTitle;
	}


	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}


	public String getStatus() {
		return status;
	}


	public void setStatus(String status) {
		this.status = status;
	}


	@Override
	public String toString() {
		return "HealthInfo [boardCode=" + boardCode + ", boardNum=" + boardNum + ", writedate=" + writedate
				+ ", boardName=" + boardName + ", boardContent=" + boardContent + ", boardCategory=" + boardCategory
				+ ", viewCount=" + viewCount + ", likeCount=" + likeCount + ", bookmarkCount=" + bookmarkCount
				+ ", boardFileCode=" + boardFileCode + ", writeTime=" + writeTime + ", managerId=" + managerId
				+ ", boardTitle=" + boardTitle + ", status=" + status + "]";
	}

	
	
}