package com.omg.jsp.trainerCareer.model.vo;

public class TrainerCareer {
	
	private String compName;	//기관명
	private String enterDate;	//입사일
	private String resignDate;	//퇴사일
	private String careerLevel;	//직급
	private String careerId;	//경력관리번호
	private String careerProof;	//증빙자료
	private String proofYn;		//증빙확인여부
	private String memberId;
	private String careerType;	//근무분야
	
	public TrainerCareer() {}

	public TrainerCareer(String compName, String enterDate, String resignDate, String careerLevel) {
		super();
		this.compName = compName;
		this.enterDate = enterDate;
		this.resignDate = resignDate;
		this.careerLevel = careerLevel;
	}

	public TrainerCareer(String compName, String enterDate, String resignDate, String careerLevel, String careerId,
			String careerProof, String proofYn, String memberId, String careerType) {
		super();
		this.compName = compName;
		this.enterDate = enterDate;
		this.resignDate = resignDate;
		this.careerLevel = careerLevel;
		this.careerId = careerId;
		this.careerProof = careerProof;
		this.proofYn = proofYn;
		this.memberId = memberId;
		this.careerType = careerType;
	}

	public String getCompName() {
		return compName;
	}

	public void setCompName(String compName) {
		this.compName = compName;
	}

	public String getEnterDate() {
		return enterDate;
	}

	public void setEnterDate(String enterDate) {
		this.enterDate = enterDate;
	}

	public String getResignDate() {
		return resignDate;
	}

	public void setResignDate(String resignDate) {
		this.resignDate = resignDate;
	}

	public String getCareerLevel() {
		return careerLevel;
	}

	public void setCareerLevel(String careerLevel) {
		this.careerLevel = careerLevel;
	}

	public String getCareerId() {
		return careerId;
	}

	public void setCareerId(String careerId) {
		this.careerId = careerId;
	}

	public String getCareerProof() {
		return careerProof;
	}

	public void setCareerProof(String careerProof) {
		this.careerProof = careerProof;
	}

	public String getProofYn() {
		return proofYn;
	}

	public void setProofYn(String proofYn) {
		this.proofYn = proofYn;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getCareerType() {
		return careerType;
	}

	public void setCareerType(String careerType) {
		this.careerType = careerType;
	}

	@Override
	public String toString() {
		return "TrainerCareer [compName=" + compName + ", enterDate=" + enterDate + ", resignDate=" + resignDate
				+ ", careerLevel=" + careerLevel + ", careerId=" + careerId + ", careerProof=" + careerProof
				+ ", proofYn=" + proofYn + ", memberId=" + memberId + ", careerType=" + careerType + "]";
	}
	
	
	

}
