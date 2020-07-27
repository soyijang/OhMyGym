package com.omg.jsp.trainerVideo.controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.omg.jsp.member.model.vo.Member;
import com.omg.jsp.trainerCurriculum.model.service.TrainerCurriculumService;

/**
 * Servlet implementation class InsertVideoServlet
 */
@WebServlet({ "/InsertVideoServlet", "/insertVideoPage.vo" })
public class SelectVideoPageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectVideoPageServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		Member loginUser = (Member) request.getSession().getAttribute("loginUser");
		
		HashMap<String, Object> curriculum = new TrainerCurriculumService().selectCurriculumList(loginUser);
		
		String page = "";
		if(!curriculum.isEmpty()) {
			page = "views/trainer/trainerOhMyPt/trainerInsertMedia.jsp";
			request.setAttribute("curriculum", curriculum);
		} else {
			page = "views/common/errorPage.jsp";
			request.setAttribute("msg", "동영상 등록페이지 출력 실패");
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