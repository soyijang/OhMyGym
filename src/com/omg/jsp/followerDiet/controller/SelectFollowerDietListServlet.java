package com.omg.jsp.followerDiet.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.omg.jsp.followerDiet.model.service.FollowerDietService;
import com.omg.jsp.followerDiet.model.service.FoodComponentService;
import com.omg.jsp.followerDiet.model.vo.FollowerDiet;
import com.omg.jsp.followerDiet.model.vo.FoodComponent;
import com.omg.jsp.followerHealth.model.service.HealthInfoService;
import com.omg.jsp.followerHealth.model.vo.HealthInfo;
import com.omg.jsp.member.model.vo.Member;

/**
 * Servlet implementation class SelectFollowDietListServlet
 */
@WebServlet("/selectList.diet")
public class SelectFollowerDietListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectFollowerDietListServlet() {
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
		String memberId = loginUser.getMemberId();
		
		ArrayList<HealthInfo> healthInfoList = new HealthInfoService().selectHealthInfo(loginUser);
		ArrayList<FollowerDiet> list = new FollowerDietService().selectList(memberId);
		ArrayList<FoodComponent> foodlistall = new FoodComponentService().selectListall();
		
		System.out.println("Servlet FollowDiet List :"+list);
		
		String page="";
		if(list!=null) {
			page = "views/follower/followerDiet/followerTodayMealList1.jsp";
			request.setAttribute("list", list);
			request.setAttribute("healthInfoList", healthInfoList);
			request.setAttribute("foodlistall", foodlistall);
			
		} else {
			page = "views/common/errorPage.jsp";
			request.setAttribute("msg", "error");
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
