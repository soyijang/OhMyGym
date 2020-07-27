package com.omg.jsp.trainerList.model.vo;

public class followerHealth {
	private String followerId;
	private String followerHeight;
	private String followerWeight;
	private String followerPart;
	
	public followerHealth() {}

	public followerHealth(String followerId, String followerHeight, String followerWeight) {
		super();
		this.followerId = followerId;
		this.followerHeight = followerHeight;
		this.followerWeight = followerWeight;
	}

	public String getFollowerId() {
		return followerId;
	}

	public void setFollowerId(String followerId) {
		this.followerId = followerId;
	}

	public String getFollowerHeight() {
		return followerHeight;
	}

	public void setFollowerHeight(String followerHeight) {
		this.followerHeight = followerHeight;
	}

	public String getFollowerWeight() {
		return followerWeight;
	}

	public void setFollowerWeight(String followerWeight) {
		this.followerWeight = followerWeight;
	}

	public String getFollowerPart() {
		return followerPart;
	}

	public void setFollowerPart(String followerPart) {
		this.followerPart = followerPart;
	}
	
	
}
