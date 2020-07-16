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
		
		String id = request.getParameter("loginId");
		String pwd = request.getParameter("loginPw");
		String type = request.getParameter("loginType");
		
//		System.out.println("loginid : " + id);
//		System.out.println("loginpwd : " + pwd);
//		System.out.println("loginType : " + type);
		
		Member loginMember = new Member();
		
		loginMember.setMemberId(id);
		loginMember.setMemberPwd(pwd);
		
		Member loginUser = new MemberService().loginCheck(loginMember);
		
		if(loginUser!= null) {
			
			request.getSession().setAttribute("loginUser", loginUser);
			String loginDivision = loginUser.getMemberDivision();
//			System.out.println("로그인 시도 계정 구분: " + loginDivision);
			
			switch(type) {
			
			case "follower" : 
				if(loginDivision.equals("trainer")) {
//					System.out.println("트레이너가 팔로워계정으로 로그인 시도");
					request.setAttribute("msg","트레이너님! 트레이너 계정으로 로그인해주세요!");
					request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response); 
				} else {
					response.sendRedirect("views/follower/followerMain.jsp"); 
				}
				break;
				
			case "trainer" :
				if(loginDivision.equals("follower")) {
//					System.out.println("팔로워가 트레이너계정으로 로그인 시도");
					request.setAttribute("msg","팔로워님! 팔로워 계정으로 로그인해주세요!");
					request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response); 
				} else {
				response.sendRedirect("views/trainer/trainerMain.jsp"); 
				}
				break;
				
			}
			
		} else {
			request.setAttribute("msg","회원로그인실패!");
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
