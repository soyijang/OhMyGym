package com.omg.jsp.trainerCurriculum.controller;

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
 * Servlet implementation class SelectCurriculumServlet
 */
@WebServlet("/selectCurriculumList.cu")
public class SelectCurriculumListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectCurriculumListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		Member loginUser = (Member) request.getSession().getAttribute("loginUser");
		System.out.println("curriculum loginUser : " + loginUser);
		
		HashMap<String, Object> curriInfo = new TrainerCurriculumService().selectCurriculumList(loginUser);
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
