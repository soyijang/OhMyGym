package com.omg.jsp.followerDiet.model.vo;

public class FoodComponent implements java.io.Serializable{
	
	private String foodName;
	private int foodCalorie;
	private String foodCode;
	private int foodCarbohydrate;
	private int foodProtein;
	private int foodFat;
	private int foodWater;

	public FoodComponent() {
		
	}

	public FoodComponent(String foodName, int foodCalorie, String foodCode, int foodCarbohydrate, int foodProtein,
			int foodFat, int foodWater) {
		super();
		this.foodName = foodName;
		this.foodCalorie = foodCalorie;
		this.foodCode = foodCode;
		this.foodCarbohydrate = foodCarbohydrate;
		this.foodProtein = foodProtein;
		this.foodFat = foodFat;
		this.foodWater = foodWater;
	}

	public String getFoodName() {
		return foodName;
	}

	public void setFoodName(String foodName) {
		this.foodName = foodName;
	}

	public int getFoodCalorie() {
		return foodCalorie;
	}

	public void setFoodCalorie(int foodCalorie) {
		this.foodCalorie = foodCalorie;
	}

	public String getFoodCode() {
		return foodCode;
	}

	public void setFoodCode(String foodCode) {
		this.foodCode = foodCode;
	}

	public int getFoodCarbohydrate() {
		return foodCarbohydrate;
	}

	public void setFoodCarbohydrate(int foodCarbohydrate) {
		this.foodCarbohydrate = foodCarbohydrate;
	}

	public int getFoodProtein() {
		return foodProtein;
	}

	public void setFoodProtein(int foodProtein) {
		this.foodProtein = foodProtein;
	}

	public int getFoodFat() {
		return foodFat;
	}

	public void setFoodFat(int foodFat) {
		this.foodFat = foodFat;
	}

	public int getFoodWater() {
		return foodWater;
	}

	public void setFoodWater(int foodWater) {
		this.foodWater = foodWater;
	}

	@Override
	public String toString() {
		return "FoodComponent [foodName=" + foodName + ", foodCalorie=" + foodCalorie + ", foodCode=" + foodCode
				+ ", foodCarbohydrate=" + foodCarbohydrate + ", foodProtein=" + foodProtein + ", foodFat=" + foodFat
				+ ", foodWater=" + foodWater + "]";
	}
	

}
