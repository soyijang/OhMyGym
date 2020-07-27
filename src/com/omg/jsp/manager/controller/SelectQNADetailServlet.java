package com.omg.jsp.manager.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.omg.jsp.QNAAnswer.model.service.QNAAnswerService;
import com.omg.jsp.QNAAnswer.model.vo.QNAAnswer;
import com.omg.jsp.manager.model.vo.Manager;
import com.omg.jsp.member.model.vo.Member;
import com.omg.jsp.qna.model.service.QNAService;
import com.omg.jsp.qna.model.vo.QNA;

/**
 * Servlet implementation class SelectQNADetailServlet
 */
@WebServlet("/QNADetail")
public class SelectQNADetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectQNADetailServlet() {
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
//		String managerId = request.getParameter("managerId");
		Manager loginUser = (Manager) request.getSession().getAttribute("loginManager");
		
		System.out.println(loginUser);
		String managerId = loginUser.getManagerId();
		
		System.out.println(loginUser);
		
		
		
		
		QNA q = new QNAService().selectOne(manageCode);
		
		ArrayList<String> al = new ArrayList<String>();
		
		System.out.println("detail servlet managerId : " + managerId);
		System.out.println("detail servlet manageCode : " + manageCode);
		
		al.add(managerId);
		al.add(manageCode);
		
		System.out.println("detail arraylist : " + al);
		System.out.println("detail q : " + q);
		
		
		
		
		String page = "";
		if(q != null) {
			page = "views/manager/manageAll/manageQnAAnswer.jsp";
			request.setAttribute("al", al);
			request.setAttribute("q", q);
			request.getRequestDispatcher(page).forward(request, response);
		} else {
			page = "views/common/errorPage.jsp";
			request.setAttribute("msg", "문의 내용보기 실패");
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
