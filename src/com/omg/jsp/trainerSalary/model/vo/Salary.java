package com.omg.jsp.trainerSalary.model.vo;

public class Salary implements java.io.Serializable{
	
	private String salaryManageCode;
	private String salaryMonth;
	private String trainerId;
	private int trainingTimes;
	private String levelCode;
	private String managerId;
	private String payYN;
	private String levelName;
	private int levelFee;
	
	
	public Salary() {
		super();
		// TODO Auto-generated constructor stub
	}


	public Salary(String salaryManageCode, String salaryMonth, String trainerId, int trainingTimes, String levelCode,
			String managerId, String payYN, String levelName, int levelFee) {
		super();
		this.salaryManageCode = salaryManageCode;
		this.salaryMonth = salaryMonth;
		this.trainerId = trainerId;
		this.trainingTimes = trainingTimes;
		this.levelCode = levelCode;
		this.managerId = managerId;
		this.payYN = payYN;
		this.levelName = levelName;
		this.levelFee = levelFee;
	}


	public String getSalaryManageCode() {
		return salaryManageCode;
	}


	public void setSalaryManageCode(String salaryManageCode) {
		this.salaryManageCode = salaryManageCode;
	}


	public String getSalaryMonth() {
		return salaryMonth;
	}


	public void setSalaryMonth(String salaryMonth) {
		this.salaryMonth = salaryMonth;
	}


	public String getTrainerId() {
		return trainerId;
	}


	public void setTrainerId(String trainerId) {
		this.trainerId = trainerId;
	}


	public int getTrainingTimes() {
		return trainingTimes;
	}


	public void setTrainingTimes(int trainingTimes) {
		this.trainingTimes = trainingTimes;
	}


	public String getLevelCode() {
		return levelCode;
	}


	public void setLevelCode(String levelCode) {
		this.levelCode = levelCode;
	}


	public String getManagerId() {
		return managerId;
	}


	public void setManagerId(String managerId) {
		this.managerId = managerId;
	}


	public String getPayYN() {
		return payYN;
	}


	public void setPayYN(String payYN) {
		this.payYN = payYN;
	}


	public String getLevelName() {
		return levelName;
	}


	public void setLevelName(String levelName) {
		this.levelName = levelName;
	}


	public int getLevelFee() {
		return levelFee;
	}


	public void setLevelFee(int levelFee) {
		this.levelFee = levelFee;
	}


	@Override
	public String toString() {
		return "Salary [salaryManageCode=" + salaryManageCode + ", salaryMonth=" + salaryMonth + ", trainerId="
				+ trainerId + ", trainingTimes=" + trainingTimes + ", levelCode=" + levelCode + ", managerId="
				+ managerId + ", payYN=" + payYN + ", levelName=" + levelName + ", levelFee=" + levelFee + "]";
	}
	
	
}
