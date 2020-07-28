package com.omg.jsp.matching.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.omg.jsp.matching.model.service.MatchingService;
import com.omg.jsp.matching.model.vo.MatchingRequest;

@WebServlet("/endMatching.follower")
public class EndMatchingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public EndMatchingServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String trainerId = request.getParameter("trainerId");
		String followerId = request.getParameter("followerId");
		String checkEnd = "수락";
		
		int result = new MatchingService().endMatch(trainerId, followerId);
		
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");
		new Gson().toJson(result, response.getWriter());
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}