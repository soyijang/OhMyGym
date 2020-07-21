package com.omg.jsp.trainerMyPage.controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.omg.jsp.matching.model.service.MatchingService;
import com.omg.jsp.member.model.vo.Member;

/**
 * Servlet implementation class SelectTrainerCareerServlet
 */
@WebServlet("/select.career.ti")
public class SelectTrainerCareerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectTrainerCareerServlet() {
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
		String memberId = loginUser.getMemberId();
		
		HashMap<String, Object> hmap = new MatchingService().selectTrainerMap(memberId);
		String page = "";
		if(!hmap.isEmpty()) {
			page = "views/trainer/trainerMypage/trainerInsertMyCareer.jsp";
			request.setAttribute("information", hmap);
			request.getRequestDispatcher(page).forward(request, response);
		} else {
			page = "views/common/errorPage.jsp";
			request.setAttribute("msg", "트레이너 정보 상세보기 실패");
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
