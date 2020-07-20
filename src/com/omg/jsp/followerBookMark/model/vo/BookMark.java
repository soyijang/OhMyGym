package com.omg.jsp.followerBookMark.model.vo;

import java.io.Serializable;

public class BookMark implements Serializable {

	private String boardNum;
	private String memberId;
	private String bookmarkDate;
	private String bookmarkTime;
	private String boardCode;
	private String writeDate;
	private String boardContent;
	private String boardTitle;
	private String boardFileCode;
	
	
	public BookMark() {
		super();
		// TODO Auto-generated constructor stub
	}


	public BookMark(String boardNum, String memberId, String bookmarkDate, String bookmarkTime, String boardCode,
			String writeDate, String boardContent, String boardTitle, String boardFileCode) {
		super();
		this.boardNum = boardNum;
		this.memberId = memberId;
		this.bookmarkDate = bookmarkDate;
		this.bookmarkTime = bookmarkTime;
		this.boardCode = boardCode;
		this.writeDate = writeDate;
		this.boardContent = boardContent;
		this.boardTitle = boardTitle;
		this.boardFileCode = boardFileCode;
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


	public String getBoardCode() {
		return boardCode;
	}


	public void setBoardCode(String boardCode) {
		this.boardCode = boardCode;
	}


	public String getWriteDate() {
		return writeDate;
	}


	public void setWriteDate(String writeDate) {
		this.writeDate = writeDate;
	}


	public String getBoardContent() {
		return boardContent;
	}


	public void setBoardContent(String boardContent) {
		this.boardContent = boardContent;
	}


	public String getBoardTitle() {
		return boardTitle;
	}


	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}


	public String getBoardFileCode() {
		return boardFileCode;
	}


	public void setBoardFileCode(String boardFileCode) {
		this.boardFileCode = boardFileCode;
	}


	@Override
	public String toString() {
		return "BookMark [boardNum=" + boardNum + ", memberId=" + memberId + ", bookmarkDate=" + bookmarkDate
				+ ", bookmarkTime=" + bookmarkTime + ", boardCode=" + boardCode + ", writeDate=" + writeDate
				+ ", boardContent=" + boardContent + ", boardTitle=" + boardTitle + ", boardFileCode=" + boardFileCode
				+ "]";
	}

	
	
}