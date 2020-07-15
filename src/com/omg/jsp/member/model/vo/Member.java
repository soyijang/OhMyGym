package com.omg.jsp.member.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class Member implements Serializable{
	
	private String name;
	private String memberId;
	private String memberPwd;
	private String memberDivision;
	private String memberStatus;
	private String gender;
	private String address;
	private String email;
	private String phone;
	private String profileAttachmentCode;
	private String enrollDate;
	private String enrollTime;
	private String memberAge;
	
	public Member() {}

	public Member(String name, String memberId, String memberPwd, String memberDivision, String memberStatus,
			String gender, String address, String email, String phone, String profileAttachmentCode, String enrollDate,
			String enrollTime, String memberAge) {
		super();
		this.name = name;
		this.memberId = memberId;
		this.memberPwd = memberPwd;
		this.memberDivision = memberDivision;
		this.memberStatus = memberStatus;
		this.gender = gender;
		this.address = address;
		this.email = email;
		this.phone = phone;
		this.profileAttachmentCode = profileAttachmentCode;
		this.enrollDate = enrollDate;
		this.enrollTime = enrollTime;
		this.memberAge = memberAge;
	}

	
	
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getMemberPwd() {
		return memberPwd;
	}

	public void setMemberPwd(String memberPwd) {
		this.memberPwd = memberPwd;
	}

	public String getMemberDivision() {
		return memberDivision;
	}

	public void setMemberDivision(String memberDivision) {
		this.memberDivision = memberDivision;
	}

	public String getMemberStatus() {
		return memberStatus;
	}

	public void setMemberStatus(String memberStatus) {
		this.memberStatus = memberStatus;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getProfileAttachmentCode() {
		return profileAttachmentCode;
	}

	public void setProfileAttachmentCode(String profileAttachmentCode) {
		this.profileAttachmentCode = profileAttachmentCode;
	}

	public String getEnrollDate() {
		return enrollDate;
	}

	public void setEnrollDate(String enrollDate) {
		this.enrollDate = enrollDate;
	}

	public String getEnrollTime() {
		return enrollTime;
	}

	public void setEnrollTime(String enrollTime) {
		this.enrollTime = enrollTime;
	}
	
	public String getMemberAge() {
		return memberAge;
	}
	
	public void setMemberAge(String memberAge) {
		this.memberAge = memberAge;
	}

	@Override
	public String toString() {
		return "Member [name=" + name + ", memberId=" + memberId + ", memberPwd=" + memberPwd + ", memberDivision="
				+ memberDivision + ", memberStatus=" + memberStatus + ", gender=" + gender + ", address=" + address
				+ ", email=" + email + ", phone=" + phone + ", profileAttachmentCode=" + profileAttachmentCode
				+ ", enrollDate=" + enrollDate + ", enrollTime=" + enrollTime + ", memberAge=" + memberAge + "]";
	}

	
	

}
