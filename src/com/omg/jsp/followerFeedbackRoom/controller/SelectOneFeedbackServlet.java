package com.omg.jsp.followerFeedbackRoom.controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.omg.jsp.followerFeedbackRoom.model.service.FeedbackRoomService;
import com.omg.jsp.followerFeedbackRoom.model.vo.FeedbackRoom;

/**
 * Servlet implementation class SelectOneFeedbackServlet
 */
@WebServlet({ "/SelectOneFeedbackServlet", "/selectOne.fb" })
public class SelectOneFeedbackServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectOneFeedbackServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String followerVideoCode = request.getParameter("num");
		
		HashMap<String, Object> feedbackInfo = new FeedbackRoomService().selectOneFeedback(followerVideoCode);
		
		String page = "";
		if(!feedbackInfo.isEmpty()) {
			page = "views/follower/followerOhMyGym/followerFeedbackDetail.jsp";
			request.setAttribute("feedbackInfo", feedbackInfo);
		} else {
			page = "views/common/errorPage.jsp";
			request.setAttribute("msg", "피드백 상세 조회 실패");
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
