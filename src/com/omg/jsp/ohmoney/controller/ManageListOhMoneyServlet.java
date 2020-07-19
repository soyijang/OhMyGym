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


@WebServlet("/listOhMoney.manager")
public class ManageListOhMoneyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ManageListOhMoneyServlet() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<OhMoney> ohMoneyList = new OhMoneyService().manageListOhMoney();
			
			Collections.sort(ohMoneyList, new Comparator<OhMoney>() {
	
				@Override
				public int compare(OhMoney o1, OhMoney o2) {
					
					return o2.getManageCode().compareTo(o1.getManageCode());
				}
				
			});
		
			String page = "";
			if(ohMoneyList != null) {
				page = "views/manager/manageFollower/manageOhMoneyHistory.jsp";
				request.setAttribute("ohMoneyList", ohMoneyList);
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
