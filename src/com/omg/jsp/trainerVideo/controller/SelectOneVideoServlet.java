package com.omg.jsp.trainerVideo.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.omg.jsp.trainerVideo.model.service.TrainerVideoService;
import com.omg.jsp.trainerVideo.model.vo.TrainerVideo;

/**
 * Servlet implementation class SelectOneVideoServlet
 */
@WebServlet("/selectOne.vi")
public class SelectOneVideoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectOneVideoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String videoCode = (String) request.getParameter("num");
		
		TrainerVideo video = new TrainerVideoService().selectOneVideo(videoCode);
		
		String page = "";
		if(video != null) {
			page = "views/trainer/trainerOhMyPt/trainerVideoDetail.jsp";
			request.setAttribute("video", video);
		} else {
			page = "views/common/errorPage.jsp";
			request.setAttribute("msg", "커리큘럼 관리페이지 로드 실패");
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
