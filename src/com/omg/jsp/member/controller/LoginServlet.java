package com.omg.jsp.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.omg.jsp.member.model.service.MemberService;
import com.omg.jsp.member.model.vo.Member;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login.me")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("_loginId");
		String pwd = request.getParameter("_loginPw");
		String type = request.getParameter("loginType");
		
		System.out.println(type);
		System.out.println(id);
		System.out.println(pwd);
		
		Member loginMember = new Member();
		
		loginMember.setMemberId(id);
		loginMember.setMemberPwd(pwd);
		
		Member loginUser = new MemberService().loginCheck(loginMember);
		String page = "";
		
		if(loginUser!= null) {
			
			request.getSession().setAttribute("loginUser", loginMember);
			
			switch(type) {
			
			case "follower" : 
				response.sendRedirect("views/follower/followerMain.jsp");
				break;
			case "trainer" :
				response.sendRedirect("views/trainer/trainerMain.jsp");
				break;
			}
			
		} else {
			request.setAttribute("msg","로그인실패!");
			request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
		}

	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
