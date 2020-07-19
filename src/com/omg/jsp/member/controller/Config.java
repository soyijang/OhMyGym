package com.omg.jsp.member.controller;

public class Config {
	public static final String appid = "OhmyGymTeam";
	public static final String apikey = "00f5ba98bda811ea9cda0cc47a1fcfae";
	public static final String content = "OHMYGYM 본인인증 서비스입니다. 본인인증번호..";
	public static final String sender = "01064249454";//청기와랩에 등록된 전화번호 (변경X)
	public static String receiver = "";//받는사람 전화번호
	
	public static String getReceiver() {
		return receiver;
	}
	public static void setReceiver(String receiver) {
		Config.receiver = receiver;
	}
	
	
}