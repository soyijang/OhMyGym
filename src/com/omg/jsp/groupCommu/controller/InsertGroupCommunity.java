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
public class InsertGroupCommunity extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public InsertGroupCommunity() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String writerId = request.getParameter("writerId");
		String writer = request.getParameter("writer");
		String content = request.getParameter("content");
		
		GroupCommuPost requestPost = new GroupCommuPost();
		
		requestPost.setGroupUserId(writerId);
		requestPost.setGroupContent(content);
		
		int result = new GroupCommuService().insertPost(requestPost);
		
		new Gson().toJson(requestPost, response.getWriter());
		
		response.sendRedirect("index.jsp");
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
