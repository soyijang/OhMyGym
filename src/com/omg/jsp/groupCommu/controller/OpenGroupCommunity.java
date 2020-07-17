package com.omg.jsp.groupCommu.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.omg.jsp.matching.model.service.MatchingService;
import com.omg.jsp.matching.model.vo.MatchingRequest;
import com.omg.jsp.member.model.vo.Member;

/**
 * Servlet implementation class OpenGroupCommunity
 */
@WebServlet("/groupCommu.follower")
public class OpenGroupCommunity extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OpenGroupCommunity() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		Member member = (Member) session.getAttribute("loginUser");
		
		System.out.println(member.getMemberId());

		MatchingRequest matchResult = new MatchingService().checkMatch(member.getMemberId());
		
		String page = "";
		if(matchResult != null) {
    		page = "views/follower/followerCommunity/followerGroupCommunity.jsp";
    		request.setAttribute("matchResult", matchResult);
    		request.getRequestDispatcher(page).forward(request, response);
			
		} else {
			System.out.println("조회실패");
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
