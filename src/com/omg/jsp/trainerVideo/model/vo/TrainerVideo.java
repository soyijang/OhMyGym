package com.omg.jsp.trainerVideo.model.vo;

public class TrainerVideo {
	
	private String trainerVideoCode;	//트레이너영상번호
	private String curriculumCode;	//커리큘럼 코드
	private String trainerUploadDate;	//영상업로드날짜
	private String trainerUploadTime;	//업로드 시간
	private String bookmarkCount;
	private String trainerVideoFileCode;	//영상첨부코드
	
	public TrainerVideo() {}

	public TrainerVideo(String trainerVideoCode, String curriculumCode, String trainerUploadDate,
			String trainerUploadTime, String bookmarkCount, String trainerVideoFileCode) {
		super();
		this.trainerVideoCode = trainerVideoCode;
		this.curriculumCode = curriculumCode;
		this.trainerUploadDate = trainerUploadDate;
		this.trainerUploadTime = trainerUploadTime;
		this.bookmarkCount = bookmarkCount;
		this.trainerVideoFileCode = trainerVideoFileCode;
	}

	public String getTrainerVideoCode() {
		return trainerVideoCode;
	}

	public void setTrainerVideoCode(String trainerVideoCode) {
		this.trainerVideoCode = trainerVideoCode;
	}

	public String getCurriculumCode() {
		return curriculumCode;
	}

	public void setCurriculumCode(String curriculumCode) {
		this.curriculumCode = curriculumCode;
	}

	public String getTrainerUploadDate() {
		return trainerUploadDate;
	}

	public void setTrainerUploadDate(String trainerUploadDate) {
		this.trainerUploadDate = trainerUploadDate;
	}

	public String getTrainerUploadTime() {
		return trainerUploadTime;
	}

	public void setTrainerUploadTime(String trainerUploadTime) {
		this.trainerUploadTime = trainerUploadTime;
	}

	public String getBookmarkCount() {
		return bookmarkCount;
	}

	public void setBookmarkCount(String bookmarkCount) {
		this.bookmarkCount = bookmarkCount;
	}

	public String getTrainerVideoFileCode() {
		return trainerVideoFileCode;
	}

	public void setTrainerVideoFileCode(String trainerVideoFileCode) {
		this.trainerVideoFileCode = trainerVideoFileCode;
	}

	@Override
	public String toString() {
		return "TrainerVideo [trainerVideoCode=" + trainerVideoCode + ", curriculumCode=" + curriculumCode
				+ ", trainerUploadDate=" + trainerUploadDate + ", trainerUploadTime=" + trainerUploadTime
				+ ", bookmarkCount=" + bookmarkCount + ", trainerVideoFileCode=" + trainerVideoFileCode + "]";
	}
	
	
}
