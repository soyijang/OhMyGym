package com.omg.jsp.QNAAnswer.model.vo;

public class QNAAnswer {
	
	private String managerId;
	private String answerTitle;
	private String answerContent;
	private String date;
	private String manageCode;
	private String fileCode;
	private String answerTime;
	
	public QNAAnswer() {}

	public QNAAnswer(String managerId, String answerTitle, String answerContent, String date, String manageCode,
			String fileCode, String answerTime) {
		super();
		this.managerId = managerId;
		this.answerTitle = answerTitle;
		this.answerContent = answerContent;
		this.date = date;
		this.manageCode = manageCode;
		this.fileCode = fileCode;
		this.answerTime = answerTime;
	}

	public String getManagerId() {
		return managerId;
	}

	public void setManagerId(String managerId) {
		this.managerId = managerId;
	}

	public String getAnswerTitle() {
		return answerTitle;
	}

	public void setAnswerTitle(String answerTitle) {
		this.answerTitle = answerTitle;
	}

	public String getAnswerContent() {
		return answerContent;
	}

	public void setAnswerContent(String answerContent) {
		this.answerContent = answerContent;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getManageCode() {
		return manageCode;
	}

	public void setManageCode(String manageCode) {
		this.manageCode = manageCode;
	}

	public String getFileCode() {
		return fileCode;
	}

	public void setFileCode(String fileCode) {
		this.fileCode = fileCode;
	}

	public String getAnswerTime() {
		return answerTime;
	}

	public void setAnswerTime(String answerTime) {
		this.answerTime = answerTime;
	}

	@Override
	public String toString() {
		return "QNAAnswer [managerId=" + managerId + ", answerTitle=" + answerTitle + ", answerContent=" + answerContent
				+ ", date=" + date + ", manageCode=" + manageCode + ", fileCode=" + fileCode + ", answerTime="
				+ answerTime + "]";
	}
	
	
	

}
