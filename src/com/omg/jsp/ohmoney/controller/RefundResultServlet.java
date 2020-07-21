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


@WebServlet("/returnMoney.follower")
public class RefundResultServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public RefundResultServlet() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String userId = request.getParameter("userId");
		String managerId = request.getParameter("returnManager");
		String content = request.getParameter("content");
		
		String addMoney = request.getParameter("returnMoney");
		int moneyData = Integer.parseInt(addMoney);
		
		String nofundBal = request.getParameter("userNoBal");
		int nofundMoney = Integer.parseInt(nofundBal);
		
		String refundBal = request.getParameter("userReBal");
		int refundMoney = Integer.parseInt(refundBal);

		String balance = request.getParameter("userBalance");
		int balanceMoney  = Integer.parseInt(balance);
		
		
		refundMoney = refundMoney - moneyData;
		
		balanceMoney = refundMoney + nofundMoney;
		
		OhMoney userOhMoney = new OhMoney();
		userOhMoney.setUserId(userId);
		userOhMoney.setContent(content);
		userOhMoney.setOhmoneyMean("자동");
		userOhMoney.setBalance(balanceMoney);
		userOhMoney.setRefundBal(refundMoney);
		userOhMoney.setNofundBal(nofundMoney);
		userOhMoney.setOhmoneyType("환급");
		userOhMoney.setIsRefund("N");
		userOhMoney.setOhmoneyAmount(addMoney);
		userOhMoney.setManagerId(managerId);
		
		int result = new OhMoneyService().refundUpdate(userId, userOhMoney);
		
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");
		new Gson().toJson(result, response.getWriter());
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
