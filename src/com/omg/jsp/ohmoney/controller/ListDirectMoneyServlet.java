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
import com.omg.jsp.ohmoney.model.service.OhMoneyService;
import com.omg.jsp.ohmoney.model.vo.OhMoney;

/**
 * Servlet implementation class ListDirectMoneyServlet
 */
@WebServlet("/directList.manager")
public class ListDirectMoneyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ListDirectMoneyServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
		ArrayList<OhMoney> directMoneyList = new OhMoneyService().listDirectMoney();
		
		Collections.sort(directMoneyList, new Comparator<OhMoney>() {

			@Override
			public int compare(OhMoney o1, OhMoney o2) {
				
				return Integer.parseInt(o2.getManageCode()) - Integer.parseInt(o1.getManageCode());
			}
			
		});
		
		String page = "";
		if(directMoneyList != null) {
			page = "views/manager/manageFollower/manageOhMoneyDirectHistory.jsp";
			request.setAttribute("directMoneyList", directMoneyList);
		} else {
			page = "views/common/errorPage.jsp";
			request.setAttribute("msg", "오머니 결제 기록 조회 실패");
		}
		
		request.getRequestDispatcher(page).forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
