package com.omg.jsp.matching.model.vo;

import java.io.Serializable;

public class MatchingRequest implements Serializable{
	private String requestCode;
	private String requestDate;
	private String requestType;
	private String trainerId;
	private String trainerName;
	private String followerId;
	private String requestTime;
	private String groupCommuNum;
	
	public MatchingRequest() {}

	public MatchingRequest(String requestCode, String requestDate, String requestType, String trainerId,
			String followerId, String requestTime) {
		super();
		this.requestCode = requestCode;
		this.requestDate = requestDate;
		this.requestType = requestType;
		this.trainerId = trainerId;
		this.followerId = followerId;
		this.requestTime = requestTime;
	}

	public MatchingRequest(String requestCode, String requestDate, String requestType, String trainerId,
			String trainerName, String followerId, String requestTime) {
		super();
		this.requestCode = requestCode;
		this.requestDate = requestDate;
		this.requestType = requestType;
		this.trainerId = trainerId;
		this.trainerName = trainerName;
		this.followerId = followerId;
		this.requestTime = requestTime;
	}

	public String getRequestCode() {
		return requestCode;
	}

	public void setRequestCode(String requestCode) {
		this.requestCode = requestCode;
	}

	public String getRequestDate() {
		return requestDate;
	}

	public void setRequestDate(String requestDate) {
		this.requestDate = requestDate;
	}

	public String getRequestType() {
		return requestType;
	}

	public void setRequestType(String requestType) {
		this.requestType = requestType;
	}

	public String getTrainerId() {
		return trainerId;
	}

	public void setTrainerId(String trainerId) {
		this.trainerId = trainerId;
	}

	public String getFollowerId() {
		return followerId;
	}

	public void setFollowerId(String followerId) {
		this.followerId = followerId;
	}

	public String getRequestTime() {
		return requestTime;
	}

	public void setRequestTime(String requestTime) {
		this.requestTime = requestTime;
	}


	public String getTrainerName() {
		return trainerName;
	}

	public void setTrainerName(String trainerName) {
		this.trainerName = trainerName;
	}

	public String getGroupCommuNum() {
		return groupCommuNum;
	}

	public void setGroupCommuNum(String groupCommuNum) {
		this.groupCommuNum = groupCommuNum;
	}
	
	@Override
	public String toString() {
		return "MatchingRequest [requestCode=" + requestCode + ", requestDate=" + requestDate + ", requestType="
				+ requestType + ", trainerId=" + trainerId + ", followerId=" + followerId + ", requestTime="
				+ requestTime + "]";
	}

}
