package com.omg.jsp.trainerCeritificate.model.vo;

public class TrainerCeritificate {
	
	private String certiManageCode;	//자격증제출관리번호
	private String memberId;	
	private String certiCode;	//자격증코드
	private String certiName;	//자격증명
	private String certiNum;	//자격증일련번호
	private String certiDate;	//취득일
	private String certiInstitution;	//발급기관
	private String certiFileCode; //첨부코드
	
	
	public TrainerCeritificate() {}

	public TrainerCeritificate(String certiManageCode, String memberId, String certiCode, String certiName,
			String certiNum, String certiDate, String certiInstitution, String certiFileCode) {
		super();
		this.certiManageCode = certiManageCode;
		this.memberId = memberId;
		this.certiCode = certiCode;
		this.certiName = certiName;
		this.certiNum = certiNum;
		this.certiDate = certiDate;
		this.certiInstitution = certiInstitution;
		this.certiFileCode = certiFileCode;
	}

	public String getCertiManageCode() {
		return certiManageCode;
	}

	public void setCertiManageCode(String certiManageCode) {
		this.certiManageCode = certiManageCode;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getCertiCode() {
		return certiCode;
	}

	public void setCertiCode(String certiCode) {
		this.certiCode = certiCode;
	}

	public String getCertiName() {
		return certiName;
	}

	public void setCertiName(String certiName) {
		this.certiName = certiName;
	}

	public String getCertiNum() {
		return certiNum;
	}

	public void setCertiNum(String certiNum) {
		this.certiNum = certiNum;
	}

	public String getCertiDate() {
		return certiDate;
	}

	public void setCertiDate(String certiDate) {
		this.certiDate = certiDate;
	}

	public String getCertiInstitution() {
		return certiInstitution;
	}

	public void setCertiInstitution(String certiInstitution) {
		this.certiInstitution = certiInstitution;
	}

	public String getCertiFileCode() {
		return certiFileCode;
	}

	public void setCertiFileCode(String certiFileCode) {
		this.certiFileCode = certiFileCode;
	}

	@Override
	public String toString() {
		return "TrainerCeritificate [certiManageCode=" + certiManageCode + ", memberId=" + memberId + ", certiCode="
				+ certiCode + ", certiName=" + certiName + ", certiNum=" + certiNum + ", certiDate=" + certiDate
				+ ", certiInstitution=" + certiInstitution + ", certiFileCode=" + certiFileCode + "]";
	}
}
