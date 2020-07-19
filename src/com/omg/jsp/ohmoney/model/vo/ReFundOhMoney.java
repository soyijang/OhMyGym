package com.omg.jsp.ohmoney.model.vo;

public class ReFundOhMoney {
	private String refundNum;
	private String refundState;
	private String memberId;
	private int money;
	private String managerId;
	private String fileCode;
	private String refundDate;
	private String memberName;
	
	public ReFundOhMoney() {}

	public ReFundOhMoney(String refundNum, String refundState, String memberId, int money, String managerId,
			String fileCode) {
		super();
		this.refundNum = refundNum;
		this.refundState = refundState;
		this.memberId = memberId;
		this.money = money;
		this.managerId = managerId;
		this.fileCode = fileCode;
	}

	public String getRefundNum() {
		return refundNum;
	}

	public void setRefundNum(String refundNum) {
		this.refundNum = refundNum;
	}

	public String getRefundState() {
		return refundState;
	}

	public void setRefundState(String refundState) {
		this.refundState = refundState;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public int getMoney() {
		return money;
	}

	public void setMoney(int money) {
		this.money = money;
	}

	public String getManagerId() {
		return managerId;
	}

	public void setManagerId(String managerId) {
		this.managerId = managerId;
	}

	public String getFileCode() {
		return fileCode;
	}

	public void setFileCode(String fileCode) {
		this.fileCode = fileCode;
	}

	@Override
	public String toString() {
		return "ReFundOhMoney [refundNum=" + refundNum + ", refundState=" + refundState + ", memberId=" + memberId
				+ ", money=" + money + ", managerId=" + managerId + ", fileCode=" + fileCode + "]";
	}

	public String getRefundDate() {
		return refundDate;
	}

	public void setRefundDate(String refundDate) {
		this.refundDate = refundDate;
	}

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	
	
}
