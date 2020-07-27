package com.omg.jsp.report.model.vo;

public class Report implements java.io.Serializable{
	
	private String reportManageCode;
	private String reportCategory;
	private String reportDate;
	private String reportContent;
	private String memberId;
	private String reportTime;
	private String reportedMemberId;
	private String reportUrl;
	public Report() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Report(String reportManageCode, String reportCategory, String reportDate, String reportContent,
			String memberId, String reportTime, String reportedMemberId, String reportUrl) {
		super();
		this.reportManageCode = reportManageCode;
		this.reportCategory = reportCategory;
		this.reportDate = reportDate;
		this.reportContent = reportContent;
		this.memberId = memberId;
		this.reportTime = reportTime;
		this.reportedMemberId = reportedMemberId;
		this.reportUrl = reportUrl;
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
	public String getReportContent() {
		return reportContent;
	}
	public void setReportContent(String reportContent) {
		this.reportContent = reportContent;
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
	public String getReportUrl() {
		return reportUrl;
	}
	public void setReportUrl(String reportUrl) {
		this.reportUrl = reportUrl;
	}
	@Override
	public String toString() {
		return "Report [reportManageCode=" + reportManageCode + ", reportCategory=" + reportCategory + ", reportDate="
				+ reportDate + ", reportContent=" + reportContent + ", memberId=" + memberId + ", reportTime="
				+ reportTime + ", reportedMemberId=" + reportedMemberId + ", reportUrl=" + reportUrl + "]";
	}

	
	
}
