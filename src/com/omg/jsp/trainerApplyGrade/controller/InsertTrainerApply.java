package com.omg.jsp.trainerApplyGrade.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.omg.jsp.member.model.vo.Member;
import com.omg.jsp.trainerApplyGrade.model.service.ApplyService;
import com.omg.jsp.trainerApplyGrade.model.vo.Apply;

/**
 * Servlet implementation class InsertTrainerApply
 */
@WebServlet("/insert.apply.gd")
public class InsertTrainerApply extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertTrainerApply() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");

		HttpSession session = request.getSession();
		Member loginUser = (Member) session.getAttribute("loginUser");
		String userId = loginUser.getMemberId();
		
		int result = new ApplyService().insertApply(userId);
		
		String page= "";
		if(result>0) {
			page = "/select.apply.gd";
		}else {
			page="views/common/errorPage.jsp";
			request.setAttribute("msg", "승인요청 결과조회 실패!");
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
