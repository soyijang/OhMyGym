package com.omg.jsp.trainerCurriculum.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.omg.jsp.trainerVideo.model.service.TrainerVideoService;
import com.omg.jsp.trainerVideo.model.vo.TrainerVideo;

/**
 * Servlet implementation class SelectCurriculumDetailServlet
 */
@WebServlet("/selectCurriculumDetail.cu")
public class SelectCurriculumDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectCurriculumDetailServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String curriculumCode = (String) request.getParameter("curriCode");
		System.out.println("도착 : " + curriculumCode);
		
		HashMap<String, Object> videoListnCurriTitle = new TrainerVideoService().selectVideoInCurriculum(curriculumCode);
		
		String page = "";
		if(!videoListnCurriTitle.isEmpty()) {
			page = "views/trainer/trainerOhMyPt/trainerCurriculumDetail.jsp";
			request.setAttribute("videoListnCurriTitle", videoListnCurriTitle);
			request.getRequestDispatcher(page).forward(request, response);
		} else {
			page = "views/common/errorPage.jsp";
			request.setAttribute("msg", "커리큘럼 관리페이지 로드 실패");
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
