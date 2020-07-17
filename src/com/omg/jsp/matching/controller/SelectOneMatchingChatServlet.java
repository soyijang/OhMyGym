package com.omg.jsp.matching.controller;

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
 * Servlet implementation class SelectOneMatchingChat
 */
@WebServlet("/matchingChat.follower")
public class SelectOneMatchingChatServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectOneMatchingChatServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//로그인한 유저의 id 와 클릭한 트레이너의 id를 가져와서 채팅방 선택
		HttpSession session = request.getSession();
		Member member = (Member) session.getAttribute("loginUser");
		
		MatchingRequest selectTrainer = new MatchingService().selectChatRoom(member.getMemberId());
		
		String page="";
		if(selectTrainer != null) {
    		page = "views/trainer/trainerOhMyPt/trainerMatchChat.jsp";
    		request.setAttribute("selectTrainer", selectTrainer);
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
