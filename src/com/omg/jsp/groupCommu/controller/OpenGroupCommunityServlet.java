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
public class OpenGroupCommunityServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OpenGroupCommunityServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		Member member = (Member) session.getAttribute("loginUser");
		
		System.out.println(member.getMemberId());
		System.out.println(member.getMemberDivision());
		MatchingRequest matchResult = null;
		String page = "";
		//구분해서 그룹방 확인
		if(member.getMemberDivision().equals("follower")) {
			 matchResult = new MatchingService().checkMatch(member.getMemberId());
			 if(matchResult.getTrainerId() != null) {
		    		page = "views/follower/followerCommunity/followerGroupCommunity.jsp";
		    		request.setAttribute("matchResult", matchResult);
		    		request.getRequestDispatcher(page).forward(request, response);
				} else {
					request.setAttribute("msg","트레이너와 매칭된 유저만 입장 가능합니다.");
					request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
				}
		} else {
			 matchResult = new MatchingService().getMatch(member.getMemberId());
			 if(matchResult.getTrainerId() != null) {
		    		page = "views/trainer/trainerOhMyPt/trainerGroupCommunity.jsp";
		    		request.setAttribute("matchResult", matchResult);
		    		request.getRequestDispatcher(page).forward(request, response);
				} else {
					request.setAttribute("msg","페이지 로딩 오류!");
					request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
				}
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
