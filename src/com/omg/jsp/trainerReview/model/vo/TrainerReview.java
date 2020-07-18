package com.omg.jsp.trainerReview.model.vo;

public class TrainerReview {
	
	private int trainerRatingManageCode;	//pk 트레이너 평점관리번호
	private double grade;	//점수
	private String ratingDate;	//평가 날짜
	private String ratingTime;	//평가시간
	private String followerId;
	private String trainerId;
	private String ratingContent;	//평가내용
	private String ratingFileCode;	//후기사진 파일 코드
	
	public TrainerReview() {}

	public TrainerReview(int trainerRatingManageCode, double grade, String followerId, String ratingContent) {
		super();
		this.trainerRatingManageCode = trainerRatingManageCode;
		this.grade = grade;
		this.followerId = followerId;
		this.ratingContent = ratingContent;
	}

	public TrainerReview(int trainerRatingManageCode, double grade, String ratingDate, String ratingTime,
			String followerId, String trainerId, String ratingContent, String ratingFileCode) {
		super();
		this.trainerRatingManageCode = trainerRatingManageCode;
		this.grade = grade;
		this.ratingDate = ratingDate;
		this.ratingTime = ratingTime;
		this.followerId = followerId;
		this.trainerId = trainerId;
		this.ratingContent = ratingContent;
		this.ratingFileCode = ratingFileCode;
	}

	public int getTrainerRatingManageCode() {
		return trainerRatingManageCode;
	}

	public void setTrainerRatingManageCode(int trainerRatingManageCode) {
		this.trainerRatingManageCode = trainerRatingManageCode;
	}

	public double getGrade() {
		return grade;
	}

	public void setGrade(double grade) {
		this.grade = grade;
	}

	public String getRatingDate() {
		return ratingDate;
	}

	public void setRatingDate(String ratingDate) {
		this.ratingDate = ratingDate;
	}

	public String getRatingTime() {
		return ratingTime;
	}

	public void setRatingTime(String ratingTime) {
		this.ratingTime = ratingTime;
	}

	public String getFollowerId() {
		return followerId;
	}

	public void setFollowerId(String followerId) {
		this.followerId = followerId;
	}

	public String getTrainerId() {
		return trainerId;
	}

	public void setTrainerId(String trainerId) {
		this.trainerId = trainerId;
	}

	public String getRatingContent() {
		return ratingContent;
	}

	public void setRatingContent(String ratingContent) {
		this.ratingContent = ratingContent;
	}

	public String getRatingFileCode() {
		return ratingFileCode;
	}

	public void setRatingFileCode(String ratingFileCode) {
		this.ratingFileCode = ratingFileCode;
	}

	@Override
	public String toString() {
		return "TrainerReview [trainerRatingManageCode=" + trainerRatingManageCode + ", grade=" + grade
				+ ", ratingDate=" + ratingDate + ", ratingTime=" + ratingTime + ", followerId=" + followerId
				+ ", trainerId=" + trainerId + ", ratingContent=" + ratingContent + ", ratingFileCode=" + ratingFileCode
				+ "]";
	}
}
