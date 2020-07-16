package com.omg.jsp.challenge.controller;

import java.io.IOException;
import java.util.GregorianCalendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.omg.jsp.challenge.model.service.ChallengeService;
import com.omg.jsp.challenge.model.vo.Challenge;

/**
 * Servlet implementation class ManageInsertChallengeServlet
 */
@WebServlet("/insert.mch")
public class ManageInsertChallengeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ManageInsertChallengeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset-UTF-8");
		
		String title = request.getParameter("title");
		String mcd = request.getParameter("ManegeCode");
		String startDate = request.getParameter("startDate");
		String endDate = request.getParameter("endDate");
		String postDate = request.getParameter("postDate");
//		int join = Integer.parseInt(request.getParameter("join"));
		String mid = request.getParameter("managerId");
		String ingSdate = request.getParameter("ingStartDate");
		String ingEdate = request.getParameter("ingEndDate");
		int limit = Integer.parseInt(request.getParameter("limit"));
		String content = request.getParameter("content");
		int pay = Integer.parseInt(request.getParameter("payLimit"));
		
		
		System.out.println("title : " + title);
		System.out.println("ManegeCode : " + mcd);
//		System.out.println("join : " + join);
		System.out.println("startDate : " + startDate);
		System.out.println("endDate : " + endDate);
		System.out.println("ingStartDate : " + ingSdate);
		System.out.println("ingEndDate : " + ingEdate);
		System.out.println("limit : " + limit);
		System.out.println("content : " + content);
		System.out.println("paylimit : " + pay);
		

		
		Challenge newChallenge = new Challenge();
		newChallenge.setTitle(title);
		newChallenge.setManageCode(mcd);
		newChallenge.setStartDate(startDate);
		newChallenge.setEndDate(endDate);
		newChallenge.setPostDate(postDate);
//		newChallenge.setJoin(0);
		newChallenge.setManagerID("admin01");
		newChallenge.setIngStartDate(ingSdate);
		newChallenge.setIngEndDate(ingEdate);
		newChallenge.setLimit(limit);
		newChallenge.setContent(content);
		newChallenge.setPayLimit(pay);
		
		
		System.out.println("newChallenge : " + newChallenge);
		
		int result = new ChallengeService().insertChallenge(newChallenge);
		
		if(result > 0) {
			response.sendRedirect("/jsp/selectList.mch");
		} else {
			request.setAttribute("msg", "공지사항 등록 실패!");
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
