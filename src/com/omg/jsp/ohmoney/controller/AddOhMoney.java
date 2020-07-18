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
		
		OhMoney addMoney = new OhMoney();
		addMoney.setUserId(userId);
		addMoney.setContent(content);
		addMoney.setOhmoneyMean(means);
		
		
		OhMoney userMoney = new OhMoneyService().checkMoney(userId);
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");
		new Gson().toJson(userMoney, response.getWriter());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
