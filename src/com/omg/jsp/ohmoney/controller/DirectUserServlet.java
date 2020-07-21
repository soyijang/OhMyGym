package com.omg.jsp.ohmoney.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.omg.jsp.ohmoney.model.service.OhMoneyService;
import com.omg.jsp.ohmoney.model.vo.OhMoney;


@WebServlet("/giveDirectUser.manager")
public class DirectUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public DirectUserServlet() {
        super();

    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userId = request.getParameter("UserId");
		String managerId = request.getParameter("managerId");
		String content = request.getParameter("selectContent");
		String userBal = request.getParameter("haveOhMoneyVal");
		String amount = request.getParameter("nofundVal");
		String nofundBal = request.getParameter("haveNoRefundVal");
		String refundBal = request.getParameter("haveRefundVal");
		
		
		int userBalNum = Integer.parseInt(userBal);
		int amountNum = Integer.parseInt(amount);
		int nofundNum = Integer.parseInt(nofundBal);
		int refundNum = Integer.parseInt(refundBal);
		
		userBalNum = userBalNum + amountNum;
		nofundNum = nofundNum + amountNum;
		
		OhMoney inputOhMoney = new OhMoney();
		
		inputOhMoney.setUserId(userId);
		inputOhMoney.setManagerId(managerId);
		inputOhMoney.setContent(content);
		inputOhMoney.setBalance(userBalNum);
		inputOhMoney.setOhmoneyAmount(amount);
		inputOhMoney.setNofundBal(nofundNum);
		inputOhMoney.setRefundBal(refundNum);
		
		
		int result = new OhMoneyService().directUser(inputOhMoney);
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
