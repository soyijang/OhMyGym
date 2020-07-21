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
 * Servlet implementation class MemberUpdateServlet
 */
@WebServlet("/update.pf")
public class MemberUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberUpdateServlet() {
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
		String userType = loginUser.getMemberDivision();
		
		String page = "";
		String password = "";
		String password1 = request.getParameter("password");
		String password2 = request.getParameter("repassword");
		if(password1.equals(password2)) {
		
			password = password1;
			
			String address = request.getParameter("address");
			String email = request.getParameter("sendEmail1") + "@" + request.getParameter("sendEmail2");
			String birth = request.getParameter("birth_year") + "-" + request.getParameter("birth_month") + "-" + request.getParameter("birth_day");
			String gender = request.getParameter("gender");
			String phone = (request.getParameter("phone1") + "-" + request.getParameter("phone2") + "-"+ request.getParameter("phone3"));
			
			Member requestMember = new Member();
			requestMember.setMemberId(userId);
			requestMember.setMemberPwd(password);
			requestMember.setAddress(address);
			requestMember.setPhone(phone);
			requestMember.setEmail(email);
			requestMember.setMemberAge(birth);
			requestMember.setGender(gender);
			System.out.println("userId : "+ userId);
			System.out.println("email : "+ email);
			System.out.println("phone : "+ phone);
			
			System.out.println("requestMember : " + requestMember);
			
			int result = new MemberService().updateMember(requestMember);
			
		     if(result > 0) {
		    	switch (userType) {
				case "trainer":
					page = "views/trainer/trainerMypage/trainerMyInfo.jsp";
					break;
				case "follower":
					page = "views/follower/followerMypage/followerMyInfo.jsp";
					break;
				}
				request.setAttribute("successMessage", "updateMember");
				request.getRequestDispatcher(page).forward(request, response);
		      } else {
		         page = "views/common/errorPage.jsp";
		         request.setAttribute("msg", "정보 수정 실패");
		         request.getRequestDispatcher(page).forward(request, response);
		      }
		     
		}else {
			 page = "views/common/errorPage.jsp";
	         request.setAttribute("msg", "비밀번호가 일치하지 않습니다!");
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
