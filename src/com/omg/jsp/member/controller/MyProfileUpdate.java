package com.omg.jsp.member.controller;

import java.io.File; 
import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.omg.jsp.common.MyFileRenamePolicy;
import com.omg.jsp.member.model.service.MemberService;
import com.omg.jsp.member.model.vo.Attachment;
import com.omg.jsp.member.model.vo.Member;
import com.oreilly.servlet.MultipartRequest;

/**
 * Servlet implementation class InsertThumbnailServlet
 */
@WebServlet("/changeProfile.follower")
public class MyProfileUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;


	public MyProfileUpdate() {
		 super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String fileCode = request.getParameter("imgCode");
		String userId = request.getParameter("userId");
		

		int result = new MemberService().updateProfile(fileCode, userId);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
