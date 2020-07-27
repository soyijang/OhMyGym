package com.omg.jsp.groupCommu.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.omg.jsp.groupCommu.model.service.GroupCommuService;
import com.omg.jsp.groupCommu.model.vo.GroupCommuPost;

@WebServlet("/insertGroupCommu.follower")
public class InsertGroupCommunityServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public InsertGroupCommunityServlet() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String roomId = request.getParameter("roomId");
		String writerId = request.getParameter("writerId");
		String writer = request.getParameter("writer");
		String content = request.getParameter("content");
		String type = request.getParameter("postType");
		String fileCode = request.getParameter("fileCode");
		
		GroupCommuPost requestPost = new GroupCommuPost();
		
		if(fileCode.equals("")) fileCode = "EMPTY";
		
		requestPost.setGroupUserId(writerId);
		requestPost.setGroupContent(content);
		requestPost.setGroupType(type);
		requestPost.setGroupFileCode(fileCode);
		
		int result = new GroupCommuService().insertPost(requestPost, roomId);
		
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");
		new Gson().toJson(requestPost, response.getWriter());
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
