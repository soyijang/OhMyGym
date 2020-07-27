package com.omg.jsp.followerDiet.model.vo;

public class FollowerDiet implements java.io.Serializable{
	
	private int intakeVolume;
	private String intakeDate;
	private String intekeTime;
	private String dietManageCode;
	private String memberId;
	private String foodCode;
	private String foodName;
	private String foodCalorie;
	private String foodCarbohydrate;
	private String foodProtein;
	private String foodFat;
	private String foodWater;
	
	public FollowerDiet() {}

	public FollowerDiet(int intakeVolume, String intakeDate, String intekeTime, String dietManageCode, String memberId,
			String foodCode, String foodName, String foodCalorie, String foodCarbohydrate, String foodProtein,
			String foodFat, String foodWater) {
		super();
		this.intakeVolume = intakeVolume;
		this.intakeDate = intakeDate;
		this.intekeTime = intekeTime;
		this.dietManageCode = dietManageCode;
		this.memberId = memberId;
		this.foodCode = foodCode;
		this.foodName = foodName;
		this.foodCalorie = foodCalorie;
		this.foodCarbohydrate = foodCarbohydrate;
		this.foodProtein = foodProtein;
		this.foodFat = foodFat;
		this.foodWater = foodWater;
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



	public String getFoodName() {
		return foodName;
	}



	public void setFoodName(String foodName) {
		this.foodName = foodName;
	}



	public String getFoodCalorie() {
		return foodCalorie;
	}



	public void setFoodCalorie(String foodCalorie) {
		this.foodCalorie = foodCalorie;
	}



	public String getFoodCarbohydrate() {
		return foodCarbohydrate;
	}



	public void setFoodCarbohydrate(String foodCarbohydrate) {
		this.foodCarbohydrate = foodCarbohydrate;
	}



	public String getFoodProtein() {
		return foodProtein;
	}

	public void setFoodProtein(String foodProtein) {
		this.foodProtein = foodProtein;
	}

	public String getFoodFat() {
		return foodFat;
	}

	public void setFoodFat(String foodFat) {
		this.foodFat = foodFat;
	}

	public String getFoodWater() {
		return foodWater;
	}

	public void setFoodWater(String foodWater) {
		this.foodWater = foodWater;
	}

	@Override
	public String toString() {
		return "FollowerDiet [intakeVolume=" + intakeVolume + ", intakeDate=" + intakeDate + ", intekeTime="
				+ intekeTime + ", dietManageCode=" + dietManageCode + ", memberId=" + memberId + ", foodCode="
				+ foodCode + ", foodName=" + foodName + ", foodCalorie=" + foodCalorie + ", foodCarbohydrate="
				+ foodCarbohydrate + ", foodProtein=" + foodProtein + ", foodFat=" + foodFat + ", foodWater="
				+ foodWater + "]";
	}

	
	
	
}
