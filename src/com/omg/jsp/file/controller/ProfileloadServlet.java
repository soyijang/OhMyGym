package com.omg.jsp.file.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.omg.jsp.file.model.service.FileService;
import com.omg.jsp.file.model.vo.Files;

/**
 * Servlet implementation class ProfileloadServlet
 */
@WebServlet("/loadProfile.all")
public class ProfileloadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ProfileloadServlet() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String userId = request.getParameter("userId");
		
		Files fileName = new FileService().checkUserProfile(userId);
		
		
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");
		new Gson().toJson(fileName, response.getWriter());
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
