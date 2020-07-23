package com.omg.jsp.trainerApplyGrade.model.vo;

//정식트레이너 승인요청관리를 위한 vo
public class Apply implements java.io.Serializable{

	private String applyManageCode;	//관리번호
	private String trainerId; //트레이너id
	private String managerId; //매니저 id
	private String applyStatus; //상태(대기/승인/거절)
	private String replyDate; //신청날짜
	private String rejectReason; //거절사유
	private String applyDate;
	
	public Apply() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Apply(String applyManageCode, String trainerId, String managerId, String applyStatus, String replyDate,
			String rejectReason, String applyDate) {
		super();
		this.applyManageCode = applyManageCode;
		this.trainerId = trainerId;
		this.managerId = managerId;
		this.applyStatus = applyStatus;
		this.replyDate = replyDate;
		this.rejectReason = rejectReason;
		this.applyDate = applyDate;
	}

	public String getApplyManageCode() {
		return applyManageCode;
	}

	public void setApplyManageCode(String applyManageCode) {
		this.applyManageCode = applyManageCode;
	}

	public String getTrainerId() {
		return trainerId;
	}

	public void setTrainerId(String trainerId) {
		this.trainerId = trainerId;
	}

	public String getManagerId() {
		return managerId;
	}

	public void setManagerId(String managerId) {
		this.managerId = managerId;
	}

	public String getApplyStatus() {
		return applyStatus;
	}

	public void setApplyStatus(String applyStatus) {
		this.applyStatus = applyStatus;
	}

	public String getReplyDate() {
		return replyDate;
	}

	public void setReplyDate(String replyDate) {
		this.replyDate = replyDate;
	}

	public String getRejectReason() {
		return rejectReason;
	}

	public void setRejectReason(String rejectReason) {
		this.rejectReason = rejectReason;
	}

	public String getApplyDate() {
		return applyDate;
	}

	public void setApplyDate(String applyDate) {
		this.applyDate = applyDate;
	}

	@Override
	public String toString() {
		return "Apply [applyManageCode=" + applyManageCode + ", trainerId=" + trainerId + ", managerId=" + managerId
				+ ", applyStatus=" + applyStatus + ", replyDate=" + replyDate + ", rejectReason=" + rejectReason
				+ ", applyDate=" + applyDate + "]";
	}
	
	
	
}
