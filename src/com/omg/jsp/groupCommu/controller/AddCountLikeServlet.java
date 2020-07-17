package com.omg.jsp.groupCommu.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.omg.jsp.groupCommu.model.service.GroupCommuService;

/**
 * Servlet implementation class AddCountLike
 */
@WebServlet("/addCountLike.follower")
public class AddCountLikeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddCountLikeServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String likedId = request.getParameter("likeId");
		String postId = request.getParameter("postId");
		String massage = request.getParameter("msg");
		
		boolean result = new GroupCommuService().checkLike(likedId, postId);
		
		int checkNum = 0;
	
		if(massage.equals("add")) {
			if(result) {
				//좋아요 추가
				checkNum = new GroupCommuService().addLike(likedId, postId);
				
			} else {
				//좋아요 삭제
				checkNum = new GroupCommuService().removeLike(likedId);
			}
		}
		
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");
		
		new Gson().toJson(result, response.getWriter());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
