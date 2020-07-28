package com.omg.jsp.member.controller;

public class Config implements java.io.Serializable{
	public static final String appid = "good";
	public static final String apikey = "9b796812d02711ea8e1a0cc47a1fcfae";
	public static final String sender = "01082461905";//청기와랩에 등록된 전화번호 (변경X)
	public static String receiver = "";//받는사람 전화번호
	public static String content = "";
	public int num ;
	
	
	public static String getReceiver() {
		return receiver;
	}
	public static void setReceiver(String phone) {
		Config.receiver = phone;
	}
	public static String getContent() {
		return content;
	}
	public static void setContent(String content) {
		Config.content = content;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}

	
	
}