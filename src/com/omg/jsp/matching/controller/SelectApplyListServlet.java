package com.omg.jsp.matching.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.omg.jsp.matching.model.service.MatchingService;
import com.omg.jsp.matching.model.vo.MatchingRequest;
import com.omg.jsp.member.model.vo.Member;

/**
 * Servlet implementation class SelectMatchingApplyListServlet
 */
@WebServlet("/selectApplyList.pt")
public class SelectApplyListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectApplyListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		Member loginUser = (Member) request.getSession().getAttribute("loginUser");
		
		String memberId = loginUser.getMemberId();
		
		ArrayList<MatchingRequest> matchRequest = new MatchingService().selectApplyList(memberId);
		
		String page = "";
		if(!matchRequest.isEmpty()) {
			page = "views/trainer/trainerOhMyPt/trainerApplyList.jsp";
			request.setAttribute("matchRequest", matchRequest);
		} else {
			page = "views/common/errorPage.jsp";
			request.setAttribute("msg", "매칭리스트 조회 실패");
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
