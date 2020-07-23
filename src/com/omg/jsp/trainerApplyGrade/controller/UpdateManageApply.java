package com.omg.jsp.trainerApplyGrade.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.omg.jsp.manager.model.vo.Manager;
import com.omg.jsp.trainerApplyGrade.model.service.ApplyService;
import com.omg.jsp.trainerApplyGrade.model.vo.Apply;

/**
 * Servlet implementation class UpdateManageApply
 */
@WebServlet("/update.manager.apply.gd")
public class UpdateManageApply extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateManageApply() {
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

		Apply apply = new Apply();
		apply.setApplyManageCode(request.getParameter("applyManageCode"));
		apply.setTrainerId(request.getParameter("applyTrainerId"));
		apply.setApplyDate(request.getParameter("applyApplyDate"));
		apply.setReplyDate(request.getParameter("applyReplyDate"));
		apply.setApplyStatus(request.getParameter("applyStatus"));
		apply.setRejectReason(request.getParameter("rejectReason"));
		
		String page = "";
		
		//승인인지 거절인지 확인
		String rejectYN = request.getParameter("rejectYN");
		System.out.println("rejectYN : " + rejectYN);
		int result = 0;
		if(rejectYN.equals("agree")) {
			System.out.println("서블릿에서 승인처리함 ");
			result = new ApplyService().updateApply(apply);
		}else if(rejectYN.equals("reject")) {
			System.out.println("서블릿에서 거절처리함 ");
			result = new ApplyService().rejectApply(apply);
		}
		
		if(result > 0) {
			System.out.println("승인요청 처리완료!");
			page = "/select.manager.apply.gd";
		}else {
			 page = "views/common/errorPage.jsp";
	         request.setAttribute("msg", "승인요청처리에 실패했습니다!");
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
