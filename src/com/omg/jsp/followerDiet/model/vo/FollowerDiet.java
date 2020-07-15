package com.omg.jsp.followerDiet.model.vo;

public class FollowerDiet implements java.io.Serializable{
	
	private int intakeVolume;
	private String intakeDate;
	private String intekeTime;
	private String dietManageCode;
	private String memberId;
	private String foodCode;
	
	public FollowerDiet() {}

	public FollowerDiet(int intakeVolume, String intakeDate, String intekeTime, String dietManageCode, String memberId,
			String foodCode) {
		super();
		this.intakeVolume = intakeVolume;
		this.intakeDate = intakeDate;
		this.intekeTime = intekeTime;
		this.dietManageCode = dietManageCode;
		this.memberId = memberId;
		this.foodCode = foodCode;
	}

	public int getIntakeVolume() {
		return intakeVolume;
	}

	public void setIntakeVolume(int intakeVolume) {
		this.intakeVolume = intakeVolume;
	}

	public String getIntakeDate() {
		return intakeDate;
	}

	public void setIntakeDate(String intakeDate) {
		this.intakeDate = intakeDate;
	}

	public String getIntekeTime() {
		return intekeTime;
	}

	public void setIntekeTime(String intekeTime) {
		this.intekeTime = intekeTime;
	}

	public String getDietManageCode() {
		return dietManageCode;
	}

	public void setDietManageCode(String dietManageCode) {
		this.dietManageCode = dietManageCode;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getFoodCode() {
		return foodCode;
	}

	public void setFoodCode(String foodCode) {
		this.foodCode = foodCode;
	}

	@Override
	public String toString() {
		return "FollowerDiet [intakeVolume=" + intakeVolume + ", intakeDate=" + intakeDate + ", intekeTime="
				+ intekeTime + ", dietManageCode=" + dietManageCode + ", memberId=" + memberId + ", foodCode="
				+ foodCode + "]";
	}
	
}
