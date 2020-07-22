package com.omg.jsp.matching.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.omg.jsp.groupCommu.model.vo.GroupComment;
import com.omg.jsp.matching.model.service.MatchingService;
import com.omg.jsp.matching.model.vo.MatchingChat;
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
		String followerId = request.getParameter("followerId");
		String tarinerId = request.getParameter("trainerId");
		String roomNum = request.getParameter("matchingRoom");
		
		System.out.println(roomNum);
		ArrayList<MatchingChat> chatList = new MatchingService().matchChatList(roomNum);
		
		Collections.sort(chatList, new Comparator<MatchingChat>() {

			@Override
			public int compare(MatchingChat o1, MatchingChat o2) {
				return Integer.parseInt(o1.getChatNum()) - Integer.parseInt(o2.getChatNum());
			}
			
		});

		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");
		
		new Gson().toJson(chatList, response.getWriter());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
