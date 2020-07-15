package com.omg.jsp.member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.omg.jsp.member.model.service.MemberService;
import com.omg.jsp.member.model.vo.Member;

import oracle.net.aso.r;

/**
 * Servlet implementation class MemberInsertServlet
 */
@WebServlet("/insert.me")
public class MemberInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberInsertServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		
		String name = request.getParameter("memberName");
		String memberId = request.getParameter("memberId");
		String memberPwd = request.getParameter("memberPwd");
		String gender = request.getParameter("gender");
		String zip = request.getParameter("zipNo");
		String add1 = request.getParameter("haddress1");
		String add2 = request.getParameter("haddress2");
		String address = zip + "$" + add1 + "$" + add2;
		String email1 = request.getParameter("email1");
		String email2 = request.getParameter("email2");
		String email = email1 + "@" + email2;
		String tel1 = request.getParameter("tel1");
		String tel2 = request.getParameter("tel2");
		String tel3 = request.getParameter("tel3");
		String phone = tel1 + "-" + tel2 + "-" + tel3;
		String birth1 = request.getParameter("birthYear");
		String birth2 = request.getParameter("birthMonth");
		String birth3 = request.getParameter("birthDate");
		String memberAge = birth1 + "-" + birth2 + "-" + birth3;
		
	
		
		Member requestMember = new Member();
		requestMember.setMemberId(memberId);
		requestMember.setMemberPwd(memberPwd);
		requestMember.setName(name);
		requestMember.setGender(gender);
		requestMember.setPhone(phone);
		requestMember.setEmail(email);
		requestMember.setAddress(address);
		requestMember.setMemberAge(memberAge);
		
		//트레이너, 팔로워 구분
		String type = request.getParameter("joinType");
		switch(type) {
		case "follower" : requestMember.setMemberDivision("follower"); break;
		case "trainer" : requestMember.setMemberDivision("trainer"); break;
		
		}
		
		System.out.println("servlet member : " + requestMember);
		
		int result = new MemberService().insertMember(requestMember);
		
		String page = "";
		if(result > 0) {
	         //page = "index.jsp";
	         
	         page = "views/common/successPage.jsp";
	         
	         request.setAttribute("successCode", "insertMember");
	         request.getRequestDispatcher(page).forward(request, response);
	         //response.sendRedirect(page);
	    } else {
			page = "views/common/errorPage.jsp";
			request.setAttribute("msg", "회원가입실패!");
			request.getRequestDispatcher(page).forward(request, response);
			
			
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
