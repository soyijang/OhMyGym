package com.omg.jsp.followerBookMark.controller;

import java.io.IOException; 
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.omg.jsp.followerBookMark.model.service.BookMarkService;
import com.omg.jsp.followerBookMark.model.vo.BookMark;
import com.omg.jsp.followerBookMark.model.vo.GroupBookMark;
import com.omg.jsp.member.model.vo.Member;

/**
 * Servlet implementation class SelectFollowerBookMarkServlet
 */
@WebServlet("/select.bm")
public class SelectFollowerBookMarkServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectFollowerBookMarkServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		Member loginUser = (Member) session.getAttribute("loginUser");
		String userId = loginUser.getMemberId();
		
		System.out.println("userId : " + userId);
		
		ArrayList<BookMark> list = new BookMarkService().selectList(userId);
		System.out.println("list : " + list);
		
		//그룹소통 북마크 불러오기 부분
		ArrayList<GroupBookMark> groupList = new BookMarkService().selectGroupList(userId);
		
		String page = "";
		if(list != null) {
			page="views/follower/followerMypage/followerBookMark.jsp";
			request.setAttribute("bookmarklist", list);
			request.setAttribute("groupbookmarklist", groupList);
			
		}else {
			page="views/common/errorPage.jsp";
			request.setAttribute("msg", "북마크조회실패!");
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
