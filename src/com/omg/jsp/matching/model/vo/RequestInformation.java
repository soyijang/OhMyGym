package com.omg.jsp.matching.model.vo;

public class RequestInformation {
	
	private String followerId;
	private String followerName;
	private String memberAge;
	private String chatContent;
	private String height;
	private String weight;
	private String wishPart;

	
	public RequestInformation() {}


	public RequestInformation(String followerId, String followerName, String memberAge, String chatContent,
			String height, String weight, String wishPart) {
		super();
		this.followerId = followerId;
		this.followerName = followerName;
		this.memberAge = memberAge;
		this.chatContent = chatContent;
		this.height = height;
		this.weight = weight;
		this.wishPart = wishPart;
	}


	public String getFollowerId() {
		return followerId;
	}


	public void setFollowerId(String followerId) {
		this.followerId = followerId;
	}


	public String getFollowerName() {
		return followerName;
	}


	public void setFollowerName(String followerName) {
		this.followerName = followerName;
	}


	public String getMemberAge() {
		return memberAge;
	}


	public void setMemberAge(String memberAge) {
		this.memberAge = memberAge;
	}


	public String getChatContent() {
		return chatContent;
	}


	public void setChatContent(String chatContent) {
		this.chatContent = chatContent;
	}


	public String getHeight() {
		return height;
	}


	public void setHeight(String height) {
		this.height = height;
	}


	public String getWeight() {
		return weight;
	}


	public void setWeight(String weight) {
		this.weight = weight;
	}


	public String getWishPart() {
		return wishPart;
	}


	public void setWishPart(String wishPart) {
		this.wishPart = wishPart;
	}


	@Override
	public String toString() {
		return "RequestInformation [followerId=" + followerId + ", followerName=" + followerName + ", memberAge="
				+ memberAge + ", chatContent=" + chatContent + ", height=" + height + ", weight=" + weight
				+ ", wishPart=" + wishPart + "]";
	}
	
	
}
