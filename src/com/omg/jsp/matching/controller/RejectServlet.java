package com.omg.jsp.matching.controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.omg.jsp.matching.model.service.MatchingService;
import com.omg.jsp.member.model.vo.Member;

/**
 * Servlet implementation class RejectServlet
 */
@WebServlet({ "/RejectServlet", "/reject.mc" })
public class RejectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RejectServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

		Member trainer = (Member) request.getSession().getAttribute("loginUser");
		String trainerId = trainer.getMemberId();
		String followerId = (String) request.getParameter("followerId");
		String rejectReason = (String) request.getParameter("rejectReason");
		
		System.out.println(trainerId + " " + followerId + " " + rejectReason);
		
		HashMap<String, String> rejectInfo = new HashMap<String, String>();
		
		rejectInfo.put("trainerId", trainerId);
		rejectInfo.put("followerId", followerId);
		rejectInfo.put("rejectReason", rejectReason);
		
		int result = new MatchingService().requestReject(rejectInfo);
		
		/*String page = "";
		if(result> 0) {
			page = "/selectApplyList.pt";
		} else {
			page = "views/common/errorPage.jsp";
			request.setAttribute("msg", "매칭 거절 실패");
		}
		
		request.getRequestDispatcher(page).forward(request, response);*/
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
