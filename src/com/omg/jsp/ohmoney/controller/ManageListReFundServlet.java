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

import com.omg.jsp.ohmoney.model.service.OhMoneyService;
import com.omg.jsp.ohmoney.model.vo.OhMoney;
import com.omg.jsp.ohmoney.model.vo.ReFundOhMoney;

@WebServlet("/refundList.manager")
public class ManageListReFundServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ManageListReFundServlet() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<ReFundOhMoney> refundList = new OhMoneyService().manageListRefund();
		
		Collections.sort(refundList, new Comparator<ReFundOhMoney>() {

			@Override
			public int compare(ReFundOhMoney r1, ReFundOhMoney r2) {
				return Integer.parseInt(r2.getRefundNum()) - Integer.parseInt(r1.getRefundNum());
			}
		
		});
	
		String page = "";
		if(refundList != null) {
			page = "views/manager/manageFollower/manageOhMoneyReturnHistory.jsp";
			request.setAttribute("refundList", refundList);
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
