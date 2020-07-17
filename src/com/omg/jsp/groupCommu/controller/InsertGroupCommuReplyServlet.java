package com.omg.jsp.groupCommu.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.omg.jsp.groupCommu.model.service.GroupCommuService;
import com.omg.jsp.groupCommu.model.vo.GroupComment;

/**
 * Servlet implementation class InsertGroupCommuReply
 */
@WebServlet("/insertGroupReply.follower")
public class InsertGroupCommuReplyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertGroupCommuReplyServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String postId = request.getParameter("postId");
		String userId = request.getParameter("writerId");
		String content = request.getParameter("content");
		
		GroupComment comment = new GroupComment();
		
		comment.setCommentUserId(userId);
		comment.setCommentContent(content);
		comment.setGroupBoardNum(postId);
		
		int result = new GroupCommuService().insertComment(comment);
		
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");
		new Gson().toJson(comment, response.getWriter());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
