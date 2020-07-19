package com.omg.jsp.member.model.vo;

import java.sql.Date;

public class Attachment implements java.io.Serializable{
	private int fid;
	private String originName;
	private String changeName;
	private String filePath;
	private String uploadDate;
	private String uploadTime;
	public Attachment() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Attachment(int fid, String originName, String changeName, String filePath, String uploadDate,
			String uploadTime) {
		super();
		this.fid = fid;
		this.originName = originName;
		this.changeName = changeName;
		this.filePath = filePath;
		this.uploadDate = uploadDate;
		this.uploadTime = uploadTime;
	}
	public int getFid() {
		return fid;
	}
	public void setFid(int fid) {
		this.fid = fid;
	}
	public String getOriginName() {
		return originName;
	}
	public void setOriginName(String originName) {
		this.originName = originName;
	}
	public String getChangeName() {
		return changeName;
	}
	public void setChangeName(String changeName) {
		this.changeName = changeName;
	}
	public String getFilePath() {
		return filePath;
	}
	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}
	public String getUploadDate() {
		return uploadDate;
	}
	public void setUploadDate(String uploadDate) {
		this.uploadDate = uploadDate;
	}
	public String getUploadTime() {
		return uploadTime;
	}
	public void setUploadTime(String uploadTime) {
		this.uploadTime = uploadTime;
	}
	@Override
	public String toString() {
		return "Attachment [fid=" + fid + ", originName=" + originName + ", changeName=" + changeName + ", filePath="
				+ filePath + ", uploadDate=" + uploadDate + ", uploadTime=" + uploadTime + "]";
	}
	
	
}
