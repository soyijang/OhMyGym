package com.omg.jsp.followerHealth.model.vo;

public class HealthInfo {
	
	private String memberId;
	private String healthData;
	private String healthInfoCode;
	private int healthInfoNowManagecode;
	
	public HealthInfo() {}
	
	public HealthInfo(String memberId, String healthData, String healthInfoCode) {
		super();
		this.memberId = memberId;
		this.healthData = healthData;
		this.healthInfoCode = healthInfoCode;
	}

	public HealthInfo(String memberId, String healthData, String healthInfoCode, int healthInfoNowManagecode) {
		super();
		this.memberId = memberId;
		this.healthData = healthData;
		this.healthInfoCode = healthInfoCode;
		this.healthInfoNowManagecode = healthInfoNowManagecode;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getHealthData() {
		return healthData;
	}

	public void setHealthData(String healthData) {
		this.healthData = healthData;
	}

	public String getHealthInfoCode() {
		return healthInfoCode;
	}

	public void setHealthInfoCode(String healthInfoCode) {
		this.healthInfoCode = healthInfoCode;
	}

	public int getHealthInfoNowManagecode() {
		return healthInfoNowManagecode;
	}

	public void setHealthInfoNowManagecode(int healthInfoNowManagecode) {
		this.healthInfoNowManagecode = healthInfoNowManagecode;
	}

	@Override
	public String toString() {
		return "HealthInfo [memberId=" + memberId + ", healthData=" + healthData + ", healthInfoCode=" + healthInfoCode
				+ ", healthInfoNowManagecode=" + healthInfoNowManagecode + "]";
	}
	
	
}
