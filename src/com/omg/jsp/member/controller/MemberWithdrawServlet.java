package com.omg.jsp.member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.omg.jsp.member.model.service.MemberService;
import com.omg.jsp.member.model.vo.Member;

/**
 * Servlet implementation class MemberWithdrawServlet
 */
@WebServlet("/update.wd")
public class MemberWithdrawServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberWithdrawServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		Member loginUser = (Member) session.getAttribute("loginUser");
		String userId = loginUser.getMemberId();
		System.out.println(userId);
		int result = new MemberService().withdrawMember(userId);
		String page = "";
		if(result>0) {
			System.out.println("삭제성공");
			page = "index.jsp";
		}else {
			 page = "views/common/errorPage.jsp";
	         request.setAttribute("msg", "회원탈퇴를 실패했습니다!");
		}
		 request.getRequestDispatcher(page).forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
