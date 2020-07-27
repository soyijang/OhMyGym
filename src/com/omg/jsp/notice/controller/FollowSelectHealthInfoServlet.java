package com.omg.jsp.notice.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.omg.jsp.notice.model.service.HealthInfoService;
import com.omg.jsp.notice.model.vo.HealthInfo;

/**
 * Servlet implementation class FollowSelectHealthInfoServlet
 */
@WebServlet("/followHealthInfo.no")
public class FollowSelectHealthInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FollowSelectHealthInfoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.setCharacterEncoding("UTF-8");
		
		ArrayList<HealthInfo> list = new HealthInfoService().selectList();
		
		String page = "";
		
		if(list != null) {
			page="views/follower/followerNotice/followerHealthInfoList.jsp";
			request.setAttribute("list", list);
			
		} else {
			page="views/common/errorPage.jsp";
			request.setAttribute("msg", "건강정보 게시판 조회 실패");
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
