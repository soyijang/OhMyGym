package com.omg.jsp.trainerList.model.vo;

public class followerList {
	private String followerId;
	private String followerName;
	private String trainerId;
	private String listManageCode;
	private String profileCode;
	private String matchingDate;
	

	public followerList() {}
	
	public followerList(String followerId, String trainerId, String listManageCode) {
		super();
		this.followerId = followerId;
		this.trainerId = trainerId;
		this.listManageCode = listManageCode;
	}

	public String getFollowerId() {
		return followerId;
	}

	public void setFollowerId(String followerId) {
		this.followerId = followerId;
	}

	public String getTrainerId() {
		return trainerId;
	}

	public void setTrainerId(String trainerId) {
		this.trainerId = trainerId;
	}

	public String getListManageCode() {
		return listManageCode;
	}

	public void setListManageCode(String listManageCode) {
		this.listManageCode = listManageCode;
	}

	public String getFollowerName() {
		return followerName;
	}

	public void setFollowerName(String followerName) {
		this.followerName = followerName;
	}
	
	public String getProfileCode() {
		return profileCode;
	}

	public void setProfileCode(String profileCode) {
		this.profileCode = profileCode;
	}

	public String getMatchingDate() {
		return matchingDate;
	}

	public void setMatchingDate(String matchingDate) {
		this.matchingDate = matchingDate;
	}

	
}
