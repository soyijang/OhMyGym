package com.omg.jsp.followerDiet.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.omg.jsp.followerDiet.model.service.FollowerDietService;
import com.omg.jsp.followerDiet.model.vo.FollowerDiet;
import com.omg.jsp.member.model.vo.Member;

/**
 * Servlet implementation class InsertFoodDietServlet
 */
@WebServlet("/insert.diet")
public class InsertFoodDietServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertFoodDietServlet() {
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
		
		FollowerDiet insertdiet = new FollowerDiet();
		insertdiet.setMemberId(userId);
		int eatamount = Integer.parseInt(request.getParameter("eatAmount"));
		insertdiet.setIntakeVolume(eatamount);
		insertdiet.setIntekeTime(request.getParameter("eattime"));
		insertdiet.setFoodName(request.getParameter("eatsearch"));
		insertdiet.setIntakeDate(request.getParameter("eatdate"));
		

		System.out.println("insertdiet : " + insertdiet);
		
		String page = "";
		int result = new FollowerDietService().insertdiet(insertdiet);
		if(result > 0) {
			System.out.println("식단정보 입력완료!");
			page = "/selectList.diet";
		}else {
			 page = "views/common/errorPage.jsp";
	         request.setAttribute("msg", "식단정보 저장에 실패했습니다!");
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
