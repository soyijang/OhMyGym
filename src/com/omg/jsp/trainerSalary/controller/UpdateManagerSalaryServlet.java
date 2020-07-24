package com.omg.jsp.trainerSalary.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.omg.jsp.manager.model.vo.Manager;
import com.omg.jsp.trainerSalary.model.service.SalaryService;

/**
 * Servlet implementation class UpdateManagerSalaryServlet
 */
@WebServlet("/update.manager.salary.gd")
public class UpdateManagerSalaryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateManagerSalaryServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		Manager manager = (Manager) session.getAttribute("loginManager");
		String managerId = manager.getManagerId();

		String managecode = request.getParameter("salaryManageCode");
		
		String page = "";
		
		//승인인지 거절인지 확인
		int result = 0;
			result = new SalaryService().updateSalary(managecode);
		
		if(result > 0) {
			System.out.println("정산처리완료!");
			page = "/select.salary.all";
		}else {
			 page = "views/common/errorPage.jsp";
	         request.setAttribute("msg", "정산처리에 실패했습니다!");
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
