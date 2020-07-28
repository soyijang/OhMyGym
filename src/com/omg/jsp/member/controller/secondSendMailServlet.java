package com.omg.jsp.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

/**
 * Servlet implementation class SendMailServlet
 */
@WebServlet("/sendmail2.me")
public class secondSendMailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public secondSendMailServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("findId_Name");
		String phone = request.getParameter("findId_Phone");
		phone = request.getParameter("sum");
		int randomNum = (int)(Math.random()*10000 + 10000); //랜덤으로 인증번호 발생
		
		Config sendInfo = new Config();
		sendInfo.setNum(randomNum);
		sendInfo.setReceiver(phone);
		sendInfo.setContent(name + "님! OHMYGYM 본인인증 문자입니다. (인증번호 : " + randomNum + ")");
		
		SendSMS sms = new SendSMS();
		sms.sendMail();
		
		//인증번호 알려주기
	      response.setContentType("application/json");
	      response.setCharacterEncoding("UTF-8");
	      new Gson().toJson(randomNum, response.getWriter());
	      
		System.out.println("서블릿에서 조회된 인증번호" + sendInfo.getNum());
		System.out.println("전송된 번호 : " + Config.getReceiver());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
