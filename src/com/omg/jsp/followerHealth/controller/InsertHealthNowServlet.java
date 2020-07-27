package com.omg.jsp.followerHealth.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.omg.jsp.followerHealth.model.service.HealthInfoService;
import com.omg.jsp.followerHealth.model.vo.HealthInfo;
import com.omg.jsp.member.model.vo.Member;

/**
 * Servlet implementation class InsertHealthNowServlet
 */
@WebServlet("/InsertHealthNow")
public class InsertHealthNowServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertHealthNowServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		
		
		//Member loginUser = (Member) request.getSession().getAttribute("loginUser");
		
		String[] sarr = new String[10];
		
//		sarr[0] = loginUser.getMemberId();
		sarr[0] = request.getParameter("memberId");
		sarr[1] = request.getParameter("height");
		sarr[2] = request.getParameter("weight");
		sarr[3] = request.getParameter("sleep");
		sarr[4] = request.getParameter("exercise");
		sarr[5] = request.getParameter("focus");
		sarr[6] = request.getParameter("active");
		sarr[7] = request.getParameter("motive");
		sarr[8] = request.getParameter("bodyUneasy");
		sarr[9] = request.getParameter("goal");
		
		ArrayList<HealthInfo> list = new ArrayList<HealthInfo>();
		
		for(int i = 0; i < sarr.length - 1; i++) {
			HealthInfo hi = new HealthInfo(sarr[0], sarr[i + 1], i + 1 + "");	//id, healthdata, healthcode
			System.out.println("hi[" + i + "] : " + hi);
			list.add(hi);
		}
		
		System.out.println("insertHealthHistory servlet : " + list);
		
		int result = new HealthInfoService().insertHealthHistory(list);
		
		
		

			String page = "";
			if(result > 0) {
				page = "/omg/views/visitor/login.jsp";
				
				request.setAttribute("successCode", "insertMember");
				request.getRequestDispatcher(page).forward(request, response);
				//response.sendRedirect(request.getContextPath() + "/views/visitor/login.jsp");
			} else {
				page = "views/common/errorPage.jsp";
				request.setAttribute("msg", "회원가입 실패");
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
