package com.omg.jsp.report.model.vo;

public class Report implements java.io.Serializable{
	
	private String reportManageCode;
	private String reportCategory;
	private String reportDate;
	private String reportTitle;
	private String reportContent;
	private String boardNum;
	private String memberId;
	private String reportTime;
	private String reportedMemberId;
	public Report() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Report(String reportManageCode, String reportCategory, String reportDate, String reportTitle,
			String reportContent, String boardNum, String memberId, String reportTime, String reportedMemberId) {
		super();
		this.reportManageCode = reportManageCode;
		this.reportCategory = reportCategory;
		this.reportDate = reportDate;
		this.reportTitle = reportTitle;
		this.reportContent = reportContent;
		this.boardNum = boardNum;
		this.memberId = memberId;
		this.reportTime = reportTime;
		this.reportedMemberId = reportedMemberId;
	}
	public String getReportManageCode() {
		return reportManageCode;
	}
	public void setReportManageCode(String reportManageCode) {
		this.reportManageCode = reportManageCode;
	}
	public String getReportCategory() {
		return reportCategory;
	}
	public void setReportCategory(String reportCategory) {
		this.reportCategory = reportCategory;
	}
	public String getReportDate() {
		return reportDate;
	}
	public void setReportDate(String reportDate) {
		this.reportDate = reportDate;
	}
	public String getReportTitle() {
		return reportTitle;
	}
	public void setReportTitle(String reportTitle) {
		this.reportTitle = reportTitle;
	}
	public String getReportContent() {
		return reportContent;
	}
	public void setReportContent(String reportContent) {
		this.reportContent = reportContent;
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
	public String getReportTime() {
		return reportTime;
	}
	public void setReportTime(String reportTime) {
		this.reportTime = reportTime;
	}
	public String getReportedMemberId() {
		return reportedMemberId;
	}
	public void setReportedMemberId(String reportedMemberId) {
		this.reportedMemberId = reportedMemberId;
	}
	@Override
	public String toString() {
		return "Report [reportManageCode=" + reportManageCode + ", reportCategory=" + reportCategory + ", reportDate="
				+ reportDate + ", reportTitle=" + reportTitle + ", reportContent=" + reportContent + ", boardNum="
				+ boardNum + ", memberId=" + memberId + ", reportTime=" + reportTime + ", reportedMemberId="
				+ reportedMemberId + "]";
	}
	
}
