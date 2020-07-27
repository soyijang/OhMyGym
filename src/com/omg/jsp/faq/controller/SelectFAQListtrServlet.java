package com.omg.jsp.faq.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.omg.jsp.faq.model.service.FAQService;
import com.omg.jsp.faq.model.vo.FAQ;

/**
 * Servlet implementation class SelectFAQListtrServlet
 */
@WebServlet("/FAQList.tr")
public class SelectFAQListtrServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectFAQListtrServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		
		ArrayList<FAQ> list = new FAQService().selectList();
		
		
		String page = "";
		
		if(list != null) {
			page="views/trainer/trainerFAQ/trainerFAQMain.jsp";
			request.setAttribute("list", list);
			
		} else {
			page="views/common/errorPage.jsp";
			request.setAttribute("msg", "자주묻는질문 조회 실패");
		}
		request.getRequestDispatcher(page).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
