package com.omg.jsp.followerBookMark.model.vo;

import java.io.Serializable;

public class BookMark implements Serializable {

	private String boardNum;
	private String memberId;
	private String bookmarkDate;
	private String bookmarkTime;
	public BookMark() {
		super();
		// TODO Auto-generated constructor stub
	}
	public BookMark(String boardNum, String memberId, String bookmarkDate, String bookmarkTime) {
		super();
		this.boardNum = boardNum;
		this.memberId = memberId;
		this.bookmarkDate = bookmarkDate;
		this.bookmarkTime = bookmarkTime;
	}
	public String getBoardNum() {
		return boardNum;
	}
	public void setBoardNum(String boardNum) {
		this.boardNum = boardNum;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getBookmarkDate() {
		return bookmarkDate;
	}
	public void setBookmarkDate(String bookmarkDate) {
		this.bookmarkDate = bookmarkDate;
	}
	public String getBookmarkTime() {
		return bookmarkTime;
	}
	public void setBookmarkTime(String bookmarkTime) {
		this.bookmarkTime = bookmarkTime;
	}
	@Override
	public String toString() {
		return "BookMark [boardNum=" + boardNum + ", memberId=" + memberId + ", bookmarkDate=" + bookmarkDate
				+ ", bookmarkTime=" + bookmarkTime + "]";
	}
	
	
	
	
}
