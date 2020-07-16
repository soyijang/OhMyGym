package com.omg.jsp.member.model.vo;

import java.io.Serializable;

public class TrainerInfo implements Serializable{
	
	private String trainerType;
	private String trainerMainField;
	private String trainerSubField;
	private String bankAccount;
	private String bankCode;
	private String memberId;
	
	public TrainerInfo() {}

	public TrainerInfo(String trainerType, String trainerMainField, String trainerSubField, String bankAccount,
			String bankCode, String memberId) {
		super();
		this.trainerType = trainerType;
		this.trainerMainField = trainerMainField;
		this.trainerSubField = trainerSubField;
		this.bankAccount = bankAccount;
		this.bankCode = bankCode;
		this.memberId = memberId;
	}

	public String getTrainerType() {
		return trainerType;
	}

	public void setTrainerType(String trainerType) {
		this.trainerType = trainerType;
	}

	public String getTrainerMainField() {
		return trainerMainField;
	}

	public void setTrainerMainField(String trainerMainField) {
		this.trainerMainField = trainerMainField;
	}

	public String getTrainerSubField() {
		return trainerSubField;
	}

	public void setTrainerSubField(String trainerSubField) {
		this.trainerSubField = trainerSubField;
	}

	public String getBankAccount() {
		return bankAccount;
	}

	public void setBankAccount(String bankAccount) {
		this.bankAccount = bankAccount;
	}

	public String getBankCode() {
		return bankCode;
	}

	public void setBankCode(String backCode) {
		this.bankCode = backCode;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	@Override
	public String toString() {
		return "TrainerInfo [trainerType=" + trainerType + ", trainerMainField=" + trainerMainField
				+ ", trainerSubField=" + trainerSubField + ", bankAccount=" + bankAccount + ", backCode=" + bankCode
				+ ", memberId=" + memberId + "]";
	}
	
	
	
}
