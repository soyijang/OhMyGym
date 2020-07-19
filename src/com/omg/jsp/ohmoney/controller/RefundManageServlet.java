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

/**
 * Servlet implementation class RefundManageServlet
 */
@WebServlet("/submitRefund.manager")
public class RefundManageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RefundManageServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			String requestNum = request.getParameter("requsetNum");
			String fileCode = request.getParameter("fileCode");
			String managerId = request.getParameter("managerId");
			
			ReFundOhMoney update = new ReFundOhMoney();
			update.setRefundNum(requestNum);
			update.setFileCode(fileCode);
			update.setManagerId(managerId);
			
			int result = new OhMoneyService().refundSubmit(update);
			
			response.setContentType("application/json");
			response.setCharacterEncoding("UTF-8");
			new Gson().toJson(result, response.getWriter());
			
		} 

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
