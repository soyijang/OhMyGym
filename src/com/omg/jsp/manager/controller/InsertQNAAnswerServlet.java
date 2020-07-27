package com.omg.jsp.manager.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.omg.jsp.QNAAnswer.model.service.QNAAnswerService;
import com.omg.jsp.QNAAnswer.model.vo.QNAAnswer;
import com.omg.jsp.faq.model.vo.FAQ;
import com.omg.jsp.manager.model.service.ManagerService;
import com.omg.jsp.qna.model.service.QNAService;
import com.omg.jsp.qna.model.vo.QNA;

/**
 * Servlet implementation class InsertQNAAnswerServlet
 */
@WebServlet("/InsertQNAAnswer")
public class InsertQNAAnswerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertQNAAnswerServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		String manageCode = request.getParameter("manageCode");
		String content = request.getParameter("content");
		String managerId = request.getParameter("managerId");   
		String title = request.getParameter("title");
		
		
		
		QNAAnswer qa = new QNAAnswer();
		
		qa.setAnswerTitle(title);
		qa.setAnswerContent(content);
		qa.setManagerId(managerId);
		qa.setManageCode(manageCode);
		
		System.out.println("managerId : " + managerId);
		System.out.println("content : " + content);
		System.out.println("manageCode : " + manageCode);
		System.out.println("title : " + title);
		
		
		int result = new QNAAnswerService().InsertAnswer(qa);
		
		String page = "";
		if(result > 0) {
	         page = "views/manager/manageAll/manageQnAList.jsp";
	         request.setAttribute("successCode", "insertQNAAnswer");
	         request.getRequestDispatcher(page).forward(request, response);
	      } else {
	         page = "views/common/errorPage.jsp";
	         request.setAttribute("msg", "답변 등록 실패");
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
