package com.omg.jsp.trainerCurriculum.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.omg.jsp.member.model.vo.Member;
import com.omg.jsp.trainerCurriculum.model.service.TrainerCurriculumService;
import com.omg.jsp.trainerCurriculum.model.vo.TrainerCurriculum;

/**
 * Servlet implementation class InsertCurriculumServlet
 */
@WebServlet({ "/InsertCurriculumServlet", "/insert.cu" })
public class InsertCurriculumServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertCurriculumServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		Member loginUser = (Member) request.getSession().getAttribute("loginUser");
		String memberId = loginUser.getMemberId();
		String newCurriTitle = request.getParameter("newCurriculumTitle");
		
		int result = new TrainerCurriculumService().insertCurriculum(newCurriTitle, memberId);
		
		String page = "";
		if(result > 0) {
			page = "";
			
		} else {
			page = "views/common/errorPage.jsp";
			request.setAttribute("msg", "커리큘럼 추가 실패");
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