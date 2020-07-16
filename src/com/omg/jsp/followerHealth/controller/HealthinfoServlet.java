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
 * Servlet implementation class HealthinfoServlet
 */
@WebServlet("/healthInfo.hi")
public class HealthinfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HealthinfoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		Member loginUser = (Member) request.getSession().getAttribute("loginUser");
		
		ArrayList<HealthInfo> list = new HealthInfoService().selectHealthInfo(loginUser);
		
		System.out.println("servlet : " + list);

		String page = "";
		if(list != null) {
			page = "views/follower/followerHealth/followerInsertHealthInfo.jsp";
			request.setAttribute("list", list);
		} else {
			page = "views/common/errorPage.jsp";
			request.setAttribute("msg", "HealthInfo 조회 실패");
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
