package com.omg.jsp.followerDiet.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.omg.jsp.followerDiet.model.service.FoodComponentService;
import com.omg.jsp.followerDiet.model.vo.FoodComponent;

/**
 * Servlet implementation class SelectFoodComponentListServlet
 */
@WebServlet("/SelectFoodComponent.no")
public class SelectFoodComponentListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectFoodComponentListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setCharacterEncoding("UTF-8");
		
		ArrayList<FoodComponent> list = new FoodComponentService().selectList();
		
		System.out.println("FoodComponent list : "+list);
		
		String page="";
		
		if(list != null) {
			page="views/follower/followerDiet/followerTodayMealSearch.jsp";
			request.setAttribute("list", list);
			
		} else {
			page="views/common/errorPage.jsp";
			request.setAttribute("msg", "공지사항 조회 실패");
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
