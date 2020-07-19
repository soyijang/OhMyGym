package com.omg.jsp.ohmoney.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.omg.jsp.groupCommu.model.vo.GroupComment;
import com.omg.jsp.ohmoney.model.service.OhMoneyService;
import com.omg.jsp.ohmoney.model.vo.OhMoney;

@WebServlet("/listOhMoney.follower")
public class ListOhMoneyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ListOhMoneyServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String userId = request.getParameter("userId");
		
		ArrayList<OhMoney> ohMoneyList = new OhMoneyService().listOhMoney(userId);
		
		Collections.sort(ohMoneyList, new Comparator<OhMoney>() {

			@Override
			public int compare(OhMoney o1, OhMoney o2) {
				
				return o2.getManageCode().compareTo(o1.getManageCode());
			}
			
		});
		
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");
		new Gson().toJson(ohMoneyList, response.getWriter());
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
