package com.omg.jsp.file.model.vo;

public class Files {
	private String fileCode;
	private String fileOriginName;
	private String fileManageName;
	private String filePath;
	private String fileUploadDate;
	private String fileUploadTime;
	
	public Files() {}
		
	public Files(String fileCode, String fileOriginName, String fileManageName, String filePath, String fileUploadDate,
			String fileUploadTime) {
		super();
		this.fileCode = fileCode;
		this.fileOriginName = fileOriginName;
		this.fileManageName = fileManageName;
		this.filePath = filePath;
		this.fileUploadDate = fileUploadDate;
		this.fileUploadTime = fileUploadTime;
	}



	public String getFileCode() {
		return fileCode;
	}
	public void setFileCode(String fileCode) {
		this.fileCode = fileCode;
	}
	public String getFileOriginName() {
		return fileOriginName;
	}
	public void setFileOriginName(String fileOriginName) {
		this.fileOriginName = fileOriginName;
	}
	public String getFileManageName() {
		return fileManageName;
	}
	public void setFileManageName(String fileManageName) {
		this.fileManageName = fileManageName;
	}
	public String getFilePath() {
		return filePath;
	}
	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}
	public String getFileUploadDate() {
		return fileUploadDate;
	}
	public void setFileUploadDate(String fileUploadDate) {
		this.fileUploadDate = fileUploadDate;
	}
	public String getFileUploadTime() {
		return fileUploadTime;
	}
	public void setFileUploadTime(String fileUploadTime) {
		this.fileUploadTime = fileUploadTime;
	}
	
	
}
