package com.omg.jsp.matching.controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.omg.jsp.matching.model.service.MatchingService;

/**
 * Servlet implementation class selectOneTrainerServlet
 */
@WebServlet("/selectOne.mc")
public class selectOneTrainerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public selectOneTrainerServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String memberId = request.getParameter("num");
		
		HashMap<String, Object> hmap = new MatchingService().selectTrainerMap(memberId);
		
		String page = "";
		if(!hmap.isEmpty()) {
			page = "views/follower/followerMatching/followerMatchListDetail.jsp";
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
