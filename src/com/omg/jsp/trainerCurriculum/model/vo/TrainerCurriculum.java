package com.omg.jsp.trainerCurriculum.model.vo;

public class TrainerCurriculum {
	
	private String curriculumCode;
	private String curriculumTitle;
	private String memberId;
	
	public TrainerCurriculum() {}

	public TrainerCurriculum(String curriculumCode, String curriculumTitle, String memberId) {
		super();
		this.curriculumCode = curriculumCode;
		this.curriculumTitle = curriculumTitle;
		this.memberId = memberId;
	}

	public String getCurriculumCode() {
		return curriculumCode;
	}

	public void setCurriculumCode(String curriculumCode) {
		this.curriculumCode = curriculumCode;
	}

	public String getCurriculumTitle() {
		return curriculumTitle;
	}

	public void setCurriculumTitle(String curriculumTitle) {
		this.curriculumTitle = curriculumTitle;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	@Override
	public String toString() {
		return "TrainerCurriculum [curriculumCode=" + curriculumCode + ", curriculumTitle=" + curriculumTitle
				+ ", memberId=" + memberId + "]";
	}
	
	

}
