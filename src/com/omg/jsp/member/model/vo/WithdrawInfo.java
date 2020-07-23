package com.omg.jsp.member.model.vo;

public class WithdrawInfo {
	
	private String memberId;
	private String withdrawReason;
	private String withdrawDate;
	private String withdrawAgreementYN;
	private String withdrawCalculateYN;
	public WithdrawInfo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public WithdrawInfo(String memberId, String withdrawReason, String withdrawDate, String withdrawAgreementYN,
			String withdrawCalculateYN) {
		super();
		this.memberId = memberId;
		this.withdrawReason = withdrawReason;
		this.withdrawDate = withdrawDate;
		this.withdrawAgreementYN = withdrawAgreementYN;
		this.withdrawCalculateYN = withdrawCalculateYN;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getWithdrawReason() {
		return withdrawReason;
	}
	public void setWithdrawReason(String withdrawReason) {
		this.withdrawReason = withdrawReason;
	}
	public String getWithdrawDate() {
		return withdrawDate;
	}
	public void setWithdrawDate(String withdrawDate) {
		this.withdrawDate = withdrawDate;
	}
	public String getWithdrawAgreementYN() {
		return withdrawAgreementYN;
	}
	public void setWithdrawAgreementYN(String withdrawAgreementYN) {
		this.withdrawAgreementYN = withdrawAgreementYN;
	}
	public String getWithdrawCalculateYN() {
		return withdrawCalculateYN;
	}
	public void setWithdrawCalculateYN(String withdrawCalculateYN) {
		this.withdrawCalculateYN = withdrawCalculateYN;
	}
	@Override
	public String toString() {
		return "WithdrawInfo [memberId=" + memberId + ", withdrawReason=" + withdrawReason + ", withdrawDate="
				+ withdrawDate + ", withdrawAgreementYN=" + withdrawAgreementYN + ", withdrawCalculateYN="
				+ withdrawCalculateYN + "]";
	}
	
}
