package com.omg.jsp.ohmoney.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.omg.jsp.ohmoney.model.service.OhMoneyService;
import com.omg.jsp.ohmoney.model.vo.OhMoney;

@WebServlet("/addOhMoney.follower")
public class AddOhMoney extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AddOhMoney() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userId = request.getParameter("userId");
		String content = request.getParameter("content");
		String means = request.getParameter("means");
		
		String addMoney = request.getParameter("addmoney");
		int moneyData = Integer.parseInt(addMoney);
		
		String nofundBal = request.getParameter("userNoBal");
		int nofundMoney = Integer.parseInt(nofundBal);
		
		String refundBal = request.getParameter("userReBal");
		int refundMoney = Integer.parseInt(refundBal);

		String balance = request.getParameter("userBalance");
		int balanceMoney  = Integer.parseInt(balance);
		
		
		refundMoney = refundMoney + moneyData;
		
		balanceMoney = refundMoney + nofundMoney;
		
		OhMoney userOhMoney = new OhMoney();
		userOhMoney.setUserId(userId);
		userOhMoney.setContent(content);
		userOhMoney.setOhmoneyMean(means);
		userOhMoney.setBalance(balanceMoney);
		userOhMoney.setRefundBal(refundMoney);
		userOhMoney.setNofundBal(nofundMoney);
		userOhMoney.setIsRefund("Y");
		userOhMoney.setOhmoneyAmount(addMoney);
		
		if(moneyData >= 0) {
			userOhMoney.setOhmoneyType("충전");
		} else {
			userOhMoney.setOhmoneyType("사용");
		}
		
		
		int result = new OhMoneyService().updateMoney(userOhMoney);
		
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");
		new Gson().toJson(result, response.getWriter());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
