package com.omg.jsp.matching.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.omg.jsp.matching.model.service.MatchingService;
import com.omg.jsp.matching.model.vo.MatchingRequest;
import com.omg.jsp.member.model.vo.Member;


@WebServlet("/matchingChat.trainer")
public class SelectTrainerChatServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public SelectTrainerChatServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Member loginUser = (Member) request.getSession().getAttribute("loginUser");
		String trainerId = loginUser.getMemberId();
		
		String userId = request.getParameter("userId");
		System.out.println("유저아이디" + userId);
		MatchingRequest result = new MatchingService().selectChat(trainerId, userId);
		

		
		String page = "";
		if(result != null) {
			page = "views/trainer/trainerOhMyPt/trainerMatchChat.jsp";
			request.setAttribute("result", result);
		} else {
			page = "views/common/errorPage.jsp";
			request.setAttribute("msg", "대화창 조회실패");
		}
		
		request.getRequestDispatcher(page).forward(request, response);
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
