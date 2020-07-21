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
 * Servlet implementation class SelectRequestFollowerInfoServlet
 */
@WebServlet("/requestInfo.mc")
public class SelectRequestFollowerInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectRequestFollowerInfoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String followerId = request.getParameter("followerId");
		
		HashMap<String, Object> requestInfo = new MatchingService().selectFollowerInfo(followerId);
		
		System.out.println("controller requestInfo :" + requestInfo);
		
		String page = "";
		if(!requestInfo.isEmpty()) {
			page = "views/trainer/trainerOhMyPt/trainerApplyList.jsp";
			request.setAttribute("requestInfo", requestInfo);
		} else {
			page = "views/common/errorPage.jsp";
			request.setAttribute("msg", "매칭신청 상세정보 불러오기 실패");
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
