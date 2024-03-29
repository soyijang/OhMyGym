package com.omg.jsp.matching.controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.omg.jsp.matching.model.service.MatchingService;

/**
 * Servlet implementation class InsertMatchRequestServlet
 */
@WebServlet("/insertMatchRequest.mc")
public class InsertMatchRequestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertMatchRequestServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String matchingChatContent = request.getParameter("matchingChatContent");
		String followerId = request.getParameter("followerId");
		String trainerId = request.getParameter("trainerId");
		
		HashMap<String, String> matchingInfo = new HashMap<String, String>();
		
		matchingInfo.put("matchingChatContent", matchingChatContent);
		matchingInfo.put("followerId", followerId);
		matchingInfo.put("trainerId", trainerId);
		
		HashMap<String, Integer> checkInsert = new MatchingService().insertMatchRequest(matchingInfo);
		
		if(checkInsert.get("request") > 0 && checkInsert.get("matchChat") > 0) {
			response.setContentType("application/json");
			response.setCharacterEncoding("UTF-8");
			
			new Gson().toJson(checkInsert, response.getWriter());
		} else {
			String page = "views/common/errorPage.jsp";
			request.setAttribute("msg", "매칭신청 실패");
			request.getRequestDispatcher(page).forward(request, response);
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
