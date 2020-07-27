package com.omg.jsp.groupCommu.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.omg.jsp.groupCommu.model.service.GroupCommuService;
import com.omg.jsp.groupCommu.model.vo.GroupComment;
import com.omg.jsp.groupCommu.model.vo.GroupCommuPost;

/**
 * Servlet implementation class SelectGroupCommunity
 */
@WebServlet("/selectGroupCommu.follower")
public class SelectGroupCommunityServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectGroupCommunityServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String roomId = request.getParameter("roomId");
		String type = request.getParameter("type");
		ArrayList<GroupCommuPost> postList = new GroupCommuService().selectPost(roomId);
		
		if(type == null) type = "최신";
		
		if(type.equals("인기")) {
			Collections.sort(postList, new Comparator<GroupCommuPost>() {
				@Override
				public int compare(GroupCommuPost o1, GroupCommuPost o2) {
					
					return o1.getGroupLikeCount() - o2.getGroupLikeCount();
				}
				
			});
		}
		else{
			Collections.sort(postList, new Comparator<GroupCommuPost>() {
				@Override
				public int compare(GroupCommuPost o1, GroupCommuPost o2) {
					
					return Integer.parseInt(o1.getGroupBoardNum()) - Integer.parseInt(o2.getGroupBoardNum());
				}
				
			});
		}
		
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");
		
		new Gson().toJson(postList, response.getWriter());
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
