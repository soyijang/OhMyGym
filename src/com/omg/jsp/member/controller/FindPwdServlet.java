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
 * Servlet implementation class FindIdServlet
 */
@WebServlet("/findPass.me")
public class FindPwdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FindPwdServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF8");
		String name = request.getParameter("findPwd_Name");
		String phone = request.getParameter("findPwd_Phone");
		String phone2 = phone.substring(0, 3) + "-" + phone.substring(3, 7) + "-" + phone.substring(7, 11);
		String userId = request.getParameter("findPwd_Id");
		
		
		System.out.println("서블릿 findPwd_name: " + name);
		System.out.println("서블릿 findPwd_phone: " + phone2);
		System.out.println("서블릿 findPwd_Id: " + userId);
		
		Member findPwdUser = new Member();
		findPwdUser.setName(name);
		findPwdUser.setPhone(phone2);
		findPwdUser.setMemberId(userId);
		
		//일치하는 회원이 있으면 담아서 가져옴
		Member findUser = new MemberService().findPwd(findPwdUser);
		
		if(findUser != null) {
			request.getSession().setAttribute("findUser", findUser);
			
			//비밀번호 재설정 페이지로 이동
			response.sendRedirect("views/visitor/findPwd.jsp");
		}else {
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
