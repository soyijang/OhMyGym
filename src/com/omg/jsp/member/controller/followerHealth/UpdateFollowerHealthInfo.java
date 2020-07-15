package com.omg.jsp.member.controller.followerHealth;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UpdateFollowerHealthInfo
 */
@WebServlet("/Update.hi")
public class UpdateFollowerHealthInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateFollowerHealthInfo() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String userId = request.getParameter("userId");
		String height = request.getParameter("height");
		String weight = request.getParameter("weight");
		String exerciseH = request.getParameter("exerciseH");
		String exerciseM = request.getParameter("exerciseM");
		String exerciseTime = exerciseH + "시간 " + exerciseM + "분";
		String sleepH = request.getParameter("sleepH");
		String sleepM = request.getParameter("sleepM");
		String sleepTime = sleepH + "시간 " + sleepM + "분";
		String focus = request.getParameter("focus");
		String active = request.getParameter("active");
		String motive = request.getParameter("motive");
		String bodyUneasy = request.getParameter("bodyUneasy");
		String goal = request.getParameter("goal");
		
//		System.out.println("id : " + userId);
//		System.out.println("키 : " + height);
//		System.out.println("몸무게 : " + weight);
//		System.out.println("운동시간 : " + exerciseTime);
//		System.out.println("수면시간 : " + sleepTime);
//		System.out.println("집중부위 : " + focus);
//		System.out.println("활동량 : " + active);
//		System.out.println("동기부여 : " + motive);
//		System.out.println("몸불편한곳 : " + bodyUneasy);
//		System.out.println("목표 : " + goal);
		
		
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
