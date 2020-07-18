package com.omg.jsp.trainerEducation.model.vo;

public class TrainerEducation {
	
	private String eduManageCode;	//학력관리코드pk
	private String eduType;			//학력구분
	private String eduName;			//학교명
	private String eduEnrollDate;	//입학일
	private String graduateDate;	//졸업일
	private String eduFileCode;		//졸업증명서 파일코드
	private String eduState;		//학력상태구분
	
	public TrainerEducation() {}
	
	public TrainerEducation(String eduName, String eduEnrollDate, String eduState) {
		super();
		this.eduName = eduName;
		this.eduEnrollDate = eduEnrollDate;
		this.eduState = eduState;
	}

	public TrainerEducation(String eduManageCode, String eduType, String eduName, String eduEnrollDate,
			String graduateDate, String eduFileCode, String eduState) {
		super();
		this.eduManageCode = eduManageCode;
		this.eduType = eduType;
		this.eduName = eduName;
		this.eduEnrollDate = eduEnrollDate;
		this.graduateDate = graduateDate;
		this.eduFileCode = eduFileCode;
		this.eduState = eduState;
	}

	public String getEduManageCode() {
		return eduManageCode;
	}

	public void setEduManageCode(String eduManageCode) {
		this.eduManageCode = eduManageCode;
	}

	public String getEduType() {
		return eduType;
	}

	public void setEduType(String eduType) {
		this.eduType = eduType;
	}

	public String getEduName() {
		return eduName;
	}

	public void setEduName(String eduName) {
		this.eduName = eduName;
	}

	public String getEduEnrollDate() {
		return eduEnrollDate;
	}

	public void setEduEnrollDate(String eduEnrollDate) {
		this.eduEnrollDate = eduEnrollDate;
	}

	public String getGraduateDate() {
		return graduateDate;
	}

	public void setGraduateDate(String graduateDate) {
		this.graduateDate = graduateDate;
	}

	public String getEduFileCode() {
		return eduFileCode;
	}

	public void setEduFileCode(String eduFileCode) {
		this.eduFileCode = eduFileCode;
	}

	public String getEduState() {
		return eduState;
	}

	public void setEduState(String eduState) {
		this.eduState = eduState;
	}

	@Override
	public String toString() {
		return "TrainerEducation [eduManageCode=" + eduManageCode + ", eduType=" + eduType + ", eduName=" + eduName
				+ ", eduEnrollDate=" + eduEnrollDate + ", graduateDate=" + graduateDate + ", eduFileCode=" + eduFileCode
				+ ", eduState=" + eduState + "]";
	}
}
