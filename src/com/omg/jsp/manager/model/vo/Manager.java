package com.omg.jsp.manager.model.vo;

import java.io.Serializable;

public class Manager implements Serializable{

	private String managerId;
	private String managerName;
	private String managerPwd;
	private String empowerDate;
	private String masteryn;
	private String profileAttachmentCode;
	public Manager() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Manager(String managerId, String managerName, String managerPwd, String empowerDate, String masteryn,
			String profileAttachmentCode) {
		super();
		this.managerId = managerId;
		this.managerName = managerName;
		this.managerPwd = managerPwd;
		this.empowerDate = empowerDate;
		this.masteryn = masteryn;
		this.profileAttachmentCode = profileAttachmentCode;
	}
	public String getManagerId() {
		return managerId;
	}
	public void setManagerId(String managerId) {
		this.managerId = managerId;
	}
	public String getManagerName() {
		return managerName;
	}
	public void setManagerName(String managerName) {
		this.managerName = managerName;
	}
	public String getManagerPwd() {
		return managerPwd;
	}
	public void setManagerPwd(String managerPwd) {
		this.managerPwd = managerPwd;
	}
	public String getEmpowerDate() {
		return empowerDate;
	}
	public void setEmpowerDate(String empowerDate) {
		this.empowerDate = empowerDate;
	}
	public String getMasteryn() {
		return masteryn;
	}
	public void setMasteryn(String masteryn) {
		this.masteryn = masteryn;
	}
	public String getProfileAttachmentCode() {
		return profileAttachmentCode;
	}
	public void setProfileAttachmentCode(String profileAttachmentCode) {
		this.profileAttachmentCode = profileAttachmentCode;
	}
	@Override
	public String toString() {
		return "Manager [managerId=" + managerId + ", managerName=" + managerName + ", managerPwd=" + managerPwd
				+ ", empowerDate=" + empowerDate + ", masteryn=" + masteryn + ", profileAttachmentCode="
				+ profileAttachmentCode + "]";
	}
	
	
	
}
