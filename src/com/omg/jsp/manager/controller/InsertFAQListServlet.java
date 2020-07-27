package com.omg.jsp.manager.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.omg.jsp.faq.model.service.FAQService;
import com.omg.jsp.faq.model.vo.FAQ;

/**
 * Servlet implementation class InsertFAQListServlet
 */
@WebServlet("/InsertFAQ.mg")
public class InsertFAQListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertFAQListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 	
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		
		  String category = request.getParameter("category");
	      String ques = request.getParameter("question");
	      String question = "Q. " + ques;
	      String answer = request.getParameter("answer");
	      String managerId = request.getParameter("managerId");   
	      
	      
	      
	            
	      FAQ faq = new FAQ();
	      faq.setCategory(category);
	      faq.setQuestion(question);
	      faq.setAnswer(answer);
	      faq.setManagerId(managerId);
	      
	      
	      System.out.println("faq : " + faq);
	      
	      int result = new FAQService().insertFAQ(faq);
	      
	      String page = "";
	      if(result > 0) {
//	         response.sendRedirect("/jsp/selectList.no");
	         page = "views/manager/managerAll/manageFAQList.jsp";
	         request.setAttribute("successCode", "insertFAQ");
	         request.getRequestDispatcher(page).forward(request, response);
	      } else {
	         page = "views/common/errorPage.jsp";
	         request.setAttribute("msg", "자주묻는질문 등록 실패");
	         request.getRequestDispatcher(page).forward(request, response);
	      }
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
