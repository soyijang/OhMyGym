package com.omg.jsp.matching.model.vo;

import java.io.Serializable;

public class MatchingChat implements Serializable{
	
	private String chatNum;
	private String chatContent;
	private String writerId;
	private String chatDate;
	private String requestCode;
	
	public MatchingChat() {}

	public MatchingChat(String chatNum, String chatContent, String writerId, String chatDate, String requestCode) {
		super();
		this.chatNum = chatNum;
		this.chatContent = chatContent;
		this.writerId = writerId;
		this.chatDate = chatDate;
		this.requestCode = requestCode;
	}

	public String getChatNum() {
		return chatNum;
	}

	public void setChatNum(String chatNum) {
		this.chatNum = chatNum;
	}

	public String getChatContent() {
		return chatContent;
	}

	public void setChatContent(String chatContent) {
		this.chatContent = chatContent;
	}

	public String getWriterId() {
		return writerId;
	}

	public void setWriterId(String writerId) {
		this.writerId = writerId;
	}

	public String getChatDate() {
		return chatDate;
	}

	public void setChatDate(String chatDate) {
		this.chatDate = chatDate;
	}

	public String getRequestCode() {
		return requestCode;
	}

	public void setRequestCode(String requestCode) {
		this.requestCode = requestCode;
	}

	@Override
	public String toString() {
		return "MatchingChat [chatNum=" + chatNum + ", chatContent=" + chatContent + ", writerId=" + writerId
				+ ", chatDate=" + chatDate + ", requestCode=" + requestCode + "]";
	}
	
	

}
