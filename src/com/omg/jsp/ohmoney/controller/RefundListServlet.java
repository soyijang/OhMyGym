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
import com.omg.jsp.ohmoney.model.vo.ReFundOhMoney;

@WebServlet("/refundList.follower")
public class RefundListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public RefundListServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String userId = request.getParameter("userId");
		
		ArrayList<ReFundOhMoney> refundlist = new OhMoneyService().selectRefundList(userId);
		
		Collections.sort(refundlist, new Comparator<ReFundOhMoney>() {

			@Override
			public int compare(ReFundOhMoney o1, ReFundOhMoney o2) {
				
				//return o2.getRefundNum().compareTo(o1.getRefundNum());
				return Integer.parseInt(o2.getRefundNum()) - Integer.parseInt(o1.getRefundNum());
			}
			
		});
		
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");
		new Gson().toJson(refundlist, response.getWriter());
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
