package com.omg.jsp.manager.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.omg.jsp.member.model.service.MemberService;
import com.omg.jsp.member.model.vo.Member;
import com.omg.jsp.qna.model.service.QNAService;
import com.omg.jsp.qna.model.vo.QNA;

/**
 * Servlet implementation class SelectQNAListmgServlet
 */
@WebServlet("/QNAList.mg")
public class SelectQNAListmgServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectQNAListmgServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		ArrayList<QNA> list = new QNAService().selectList();
		
		System.out.println("select board list controller : " + list);
		
		String page = "";
		if(list != null) {
			page = "views/manager/manageAll/manageQnAList.jsp";
			request.setAttribute("list", list);
			request.getRequestDispatcher(page).forward(request, response);
				
		} else {
			page = "views/common/errorPage.jsp";
			request.setAttribute("msg", "게시판 조회 실패!");
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
