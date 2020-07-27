package com.omg.jsp.trainerList.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.omg.jsp.member.model.vo.Member;
import com.omg.jsp.trainerList.model.service.listService;
import com.omg.jsp.trainerList.model.vo.followerList;

/**
 * Servlet implementation class ListsFollowerServlet
 */
@WebServlet("/listFollower.trainer")
public class ListsFollowerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListsFollowerServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		Member member = (Member) session.getAttribute("loginUser");
		ArrayList<followerList> lists = new listService().checkList(member);
		
		String page = "";
		 if(lists != null) {
	    		page = "views/trainer/trainerOhMyPt/trainerCheckFollowerList.jsp";
	    		request.setAttribute("lists", lists);
	    		request.getRequestDispatcher(page).forward(request, response);
			} else {
				request.setAttribute("msg","매칭된 팔로워가 없습니다!");
				request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
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
