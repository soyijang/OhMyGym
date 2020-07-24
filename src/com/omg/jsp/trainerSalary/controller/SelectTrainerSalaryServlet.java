package com.omg.jsp.trainerSalary.controller;

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
import com.omg.jsp.trainerSalary.model.service.SalaryService;
import com.omg.jsp.trainerSalary.model.vo.Salary;

/**
 * Servlet implementation class SelectTrainerSalaryServlet
 */
@WebServlet("/select.salary.tn")
public class SelectTrainerSalaryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectTrainerSalaryServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		Member loginUser = (Member) session.getAttribute("loginUser");
		String userId = loginUser.getMemberId();
		
		System.out.println("userId : " + userId);
		
		ArrayList<Salary> list = new SalaryService().selectListOne(userId);
		System.out.println("list : " + list );
		
		String page= "";
		if(list != null) {
			page = "views/trainer/trainerMypage/trainerMyMoney.jsp";
			request.setAttribute("salarylist", list);
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
