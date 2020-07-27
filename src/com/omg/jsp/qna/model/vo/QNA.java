package com.omg.jsp.qna.model.vo;

import java.io.Serializable;

public class QNA implements Serializable{
	
	private String manageCode;
	private String questionTitle;
	private String questionContent;
	private String fileCode;
	private String date;
	private String category;
	private String qnaYn;
	private String memberId;
	private String time;
	private String memberType;
	
	public QNA() {}

	public QNA(String manageCode, String questionTitle, String questionContent, String fileCode, String date,
			String category, String qnaYn, String memberId, String time) {
		super();
		this.manageCode = manageCode;
		this.questionTitle = questionTitle;
		this.questionContent = questionContent;
		this.fileCode = fileCode;
		this.date = date;
		this.category = category;
		this.qnaYn = qnaYn;
		this.memberId = memberId;
		this.time = time;
	}
	
	

	public QNA(String manageCode, String questionTitle, String questionContent, String fileCode, String date,
			String category, String qnaYn, String memberId, String time, String memberType) {
		super();
		this.manageCode = manageCode;
		this.questionTitle = questionTitle;
		this.questionContent = questionContent;
		this.fileCode = fileCode;
		this.date = date;
		this.category = category;
		this.qnaYn = qnaYn;
		this.memberId = memberId;
		this.time = time;
		this.memberType = memberType;
	}
	
	

	public String getMemberType() {
		return memberType;
	}

	public void setMemberType(String memberType) {
		this.memberType = memberType;
	}

	public String getManageCode() {
		return manageCode;
	}

	public void setManageCode(String manageCode) {
		this.manageCode = manageCode;
	}

	public String getQuestionTitle() {
		return questionTitle;
	}

	public void setQuestionTitle(String questionTitle) {
		this.questionTitle = questionTitle;
	}

	public String getQuestionContent() {
		return questionContent;
	}

	public void setQuestionContent(String questionContent) {
		this.questionContent = questionContent;
	}

	public String getFileCode() {
		return fileCode;
	}

	public void setFileCode(String fileCode) {
		this.fileCode = fileCode;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getQnaYn() {
		return qnaYn;
	}

	public void setQnaYn(String qnaYn) {
		this.qnaYn = qnaYn;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	@Override
	public String toString() {
		return "QNA [manageCode=" + manageCode + ", questionTitle=" + questionTitle + ", questionContent="
				+ questionContent + ", fileCode=" + fileCode + ", date=" + date + ", category=" + category + ", qnaYn="
				+ qnaYn + ", memberId=" + memberId + ", time=" + time + ", memberType=" + memberType + "]";
	}
	
	
	

	
	
	

}
