package com.omg.jsp.ohmoney.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.omg.jsp.ohmoney.model.service.OhMoneyService;
import com.omg.jsp.ohmoney.model.vo.ReFundOhMoney;

@WebServlet("/submitReFund.follower")
public class RefundApplyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public RefundApplyServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String userId = request.getParameter("userId");
		String applyMoney = request.getParameter("money");
		
		int money = Integer.parseInt(applyMoney);
		
		ReFundOhMoney refund = new ReFundOhMoney();
		
		refund.setMemberId(userId);
		refund.setMoney(money);
		refund.setRefundState("대기");
		
		int result = new OhMoneyService().applyRefund(refund);
		
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");
		new Gson().toJson(refund, response.getWriter());
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
