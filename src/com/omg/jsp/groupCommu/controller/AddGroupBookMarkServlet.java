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
@WebServlet("/addBookMark.follower")
public class AddGroupBookMarkServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddGroupBookMarkServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String markedId = request.getParameter("markedId");
		String postId = request.getParameter("postId");
		String massage = request.getParameter("msg");
		
		boolean result = new GroupCommuService().checkBookMark(markedId, postId);
		
		int checkNum = 0;
	
		if(massage.equals("add")) {
			if(result) {
				//북마크 추가
				checkNum = new GroupCommuService().addBookMark(markedId, postId);
				
			} else {
				//북마크 삭제
				checkNum = new GroupCommuService().removeBookMark(markedId, postId);
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
