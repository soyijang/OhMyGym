package com.omg.jsp.ohmoney.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.omg.jsp.ohmoney.model.service.OhMoneyService;

@WebServlet("/rejectRefund.manager")
public class RefundRejectUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public RefundRejectUpdate() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String returnNum = request.getParameter("requsetNum");
		String managerId = request.getParameter("managerId");
			
		int result = new OhMoneyService().rejectReturn(managerId, returnNum);
		
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");
		new Gson().toJson(result, response.getWriter());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
