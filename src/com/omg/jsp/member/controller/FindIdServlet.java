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
@WebServlet("/findId.me")
public class FindIdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FindIdServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF8");
		String name = request.getParameter("findId_Name");
		String phone = request.getParameter("findId_Phone");
		
		System.out.println("findid_name: " + name);
		System.out.println("findid_phone: " + phone);
		
		Member findIdUser = new Member();
		findIdUser.setName(name);
		findIdUser.setPhone(phone);
		
		Member findUser = new MemberService().findId(findIdUser);
		
		if(findUser != null) {
			request.getSession().setAttribute("findUser", findUser);
			
			//1. 트레이너인지 팔로워인지 구분하여 화면에 안내.
			//2. 페이지에서는 구분과 아이디 보여줌
			response.sendRedirect("views/visitor/findId.jsp");
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
