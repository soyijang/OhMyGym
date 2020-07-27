package com.omg.jsp.followerFeedbackRoom.model.vo;

public class FeedbackRoom {
	
	private String followerVideoCode;
	private String feedbackFileCode;
	private String requestManageCode;
	private String feedbackUploadDate;
	private String feedbackUploadTime;
	private String feedbackTitle;
	private String feedbackContent;

	public FeedbackRoom() {}

	public FeedbackRoom(String followerVideoCode, String feedbackFileCode, String requestManageCode,
			String feedbackUploadDate, String feedbackUploadTime, String feedbackTitle, String feedbackContent) {
		super();
		this.followerVideoCode = followerVideoCode;
		this.feedbackFileCode = feedbackFileCode;
		this.requestManageCode = requestManageCode;
		this.feedbackUploadDate = feedbackUploadDate;
		this.feedbackUploadTime = feedbackUploadTime;
		this.feedbackTitle = feedbackTitle;
		this.feedbackContent = feedbackContent;
	}

	public String getFollowerVideoCode() {
		return followerVideoCode;
	}

	public void setFollowerVideoCode(String followerVideoCode) {
		this.followerVideoCode = followerVideoCode;
	}

	public String getFeedbackFileCode() {
		return feedbackFileCode;
	}

	public void setFeedbackFileCode(String feedbackFileCode) {
		this.feedbackFileCode = feedbackFileCode;
	}

	public String getRequestManageCode() {
		return requestManageCode;
	}

	public void setRequestManageCode(String requestManageCode) {
		this.requestManageCode = requestManageCode;
	}

	public String getFeedbackUploadDate() {
		return feedbackUploadDate;
	}

	public void setFeedbackUploadDate(String feedbackUploadDate) {
		this.feedbackUploadDate = feedbackUploadDate;
	}

	public String getFeedbackUploadTime() {
		return feedbackUploadTime;
	}

	public void setFeedbackUploadTime(String feedbackUploadTime) {
		this.feedbackUploadTime = feedbackUploadTime;
	}

	public String getFeedbackTitle() {
		return feedbackTitle;
	}

	public void setFeedbackTitle(String feedbackTitle) {
		this.feedbackTitle = feedbackTitle;
	}

	public String getFeedbackContent() {
		return feedbackContent;
	}

	public void setFeedbackContent(String feedbackContent) {
		this.feedbackContent = feedbackContent;
	}

	@Override
	public String toString() {
		return "FeedbackRoom [followerVideoCode=" + followerVideoCode + ", feedbackFileCode=" + feedbackFileCode
				+ ", requestManageCode=" + requestManageCode + ", feedbackUploadDate=" + feedbackUploadDate
				+ ", feedbackUploadTime=" + feedbackUploadTime + ", feedbackTitle=" + feedbackTitle
				+ ", feedbackContent=" + feedbackContent + "]";
	}
	
	

}