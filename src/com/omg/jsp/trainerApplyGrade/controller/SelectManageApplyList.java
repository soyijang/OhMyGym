package com.omg.jsp.trainerApplyGrade.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.omg.jsp.manager.model.vo.Manager;
import com.omg.jsp.member.model.vo.Member;
import com.omg.jsp.trainerApplyGrade.model.service.ApplyService;
import com.omg.jsp.trainerApplyGrade.model.vo.Apply;

/**
 * Servlet implementation class SelectManageApplyList
 */
@WebServlet("/select.manager.apply.gd")
public class SelectManageApplyList extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectManageApplyList() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		Manager loginUser = (Manager) session.getAttribute("loginManager");
		String userId = loginUser.getManagerId();
		
		System.out.println("userId : " + userId);
		
		ArrayList<Apply> list = new ApplyService().selectListAll();
		System.out.println("list : " + list );
		
		String page= "";
		if(list != null) {
			page = "views/manager/manageTrainer/manageTrainerGradelist.jsp";
			request.setAttribute("applylist", list);
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
