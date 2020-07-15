package com.omg.jsp.followerHealth.model.vo;

public class HealthHistory {
	
	private String healthHistoryManagecode;	//건강정보이력관리번호
	private String healthBefore;	//변경 전 값
	private String healthAfter;		//변경 후 값
	private String healthChangeDate;		//변경일자
	private String healthInfoCode;	//건강정보 코드
	private String memberId;		//회원ID
	private String healthChangeTime;	//변경시간
	
	public HealthHistory() {}

	public HealthHistory(String healthHistoryManagecode, String healthBefore, String healthAfter,
			String healthChangeDate, String healthInfoCode, String memberId, String healthChangeTime) {
		super();
		this.healthHistoryManagecode = healthHistoryManagecode;
		this.healthBefore = healthBefore;
		this.healthAfter = healthAfter;
		this.healthChangeDate = healthChangeDate;
		this.healthInfoCode = healthInfoCode;
		this.memberId = memberId;
		this.healthChangeTime = healthChangeTime;
	}

	public String getHealthHistoryManagecode() {
		return healthHistoryManagecode;
	}

	public void setHealthHistoryManagecode(String healthHistoryManagecode) {
		this.healthHistoryManagecode = healthHistoryManagecode;
	}

	public String getHealthBefore() {
		return healthBefore;
	}

	public void setHealthBefore(String healthBefore) {
		this.healthBefore = healthBefore;
	}

	public String getHealthAfter() {
		return healthAfter;
	}

	public void setHealthAfter(String healthAfter) {
		this.healthAfter = healthAfter;
	}

	public String getHealthChangeDate() {
		return healthChangeDate;
	}

	public void setHealthChangeDate(String healthChangeDate) {
		this.healthChangeDate = healthChangeDate;
	}

	public String getHealthInfoCode() {
		return healthInfoCode;
	}

	public void setHealthInfoCode(String healthInfoCode) {
		this.healthInfoCode = healthInfoCode;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getHealthChangeTime() {
		return healthChangeTime;
	}

	public void setHealthChangeTime(String healthChangeTime) {
		this.healthChangeTime = healthChangeTime;
	}

	@Override
	public String toString() {
		return "HealthHistory [healthHistoryManagecode=" + healthHistoryManagecode + ", healthBefore=" + healthBefore
				+ ", healthAfter=" + healthAfter + ", healthChangeDate=" + healthChangeDate + ", healthInfoCode="
				+ healthInfoCode + ", memberId=" + memberId + ", healthChangeTime=" + healthChangeTime + "]";
	}
}
