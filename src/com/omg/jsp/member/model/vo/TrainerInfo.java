package com.omg.jsp.member.model.vo;

import java.io.Serializable;

public class TrainerInfo implements Serializable{
	
	private String trainerType;
	private String trainerMainField;
	private String trainerSubField;
	private String bankAccount;
	private String bankCode;
	private String bankName;
	private String memberId;
	private String trainerComment;
	private String name;
	private String phone;
	private String enrollDate;
	private String email;
	private String address;
	
	public TrainerInfo() {}

	public TrainerInfo(String trainerType, String trainerMainField, String trainerSubField, String bankAccount,
			String bankCode, String memberId, String trainerComment) {
		super();
		this.trainerType = trainerType;
		this.trainerMainField = trainerMainField;
		this.trainerSubField = trainerSubField;
		this.bankAccount = bankAccount;
		this.bankCode = bankCode;
		this.memberId = memberId;
		this.trainerComment = trainerComment;
	}

	public TrainerInfo(String trainerType, String trainerMainField, String trainerSubField, String bankAccount,
			String bankCode, String bankName, String memberId, String trainerComment, String name, String phone,
			String enrollDate, String email, String address) {
		super();
		this.trainerType = trainerType;
		this.trainerMainField = trainerMainField;
		this.trainerSubField = trainerSubField;
		this.bankAccount = bankAccount;
		this.bankCode = bankCode;
		this.bankName = bankName;
		this.memberId = memberId;
		this.trainerComment = trainerComment;
		this.name = name;
		this.phone = phone;
		this.enrollDate = enrollDate;
		this.email = email;
		this.address = address;
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

	public void setBankCode(String bankCode) {
		this.bankCode = bankCode;
	}

	public String getBankName() {
		return bankName;
	}

	public void setBankName(String bankName) {
		this.bankName = bankName;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getTrainerComment() {
		return trainerComment;
	}

	public void setTrainerComment(String trainerComment) {
		this.trainerComment = trainerComment;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEnrollDate() {
		return enrollDate;
	}

	public void setEnrollDate(String enrollDate) {
		this.enrollDate = enrollDate;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	@Override
	public String toString() {
		return "TrainerInfo [trainerType=" + trainerType + ", trainerMainField=" + trainerMainField
				+ ", trainerSubField=" + trainerSubField + ", bankAccount=" + bankAccount + ", bankCode=" + bankCode
				+ ", bankName=" + bankName + ", memberId=" + memberId + ", trainerComment=" + trainerComment + ", name="
				+ name + ", phone=" + phone + ", enrollDate=" + enrollDate + ", email=" + email + ", address=" + address
				+ "]";
	}
	
	
	
	
}
