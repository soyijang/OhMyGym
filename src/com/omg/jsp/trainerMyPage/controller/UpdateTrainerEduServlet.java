package com.omg.jsp.trainerMyPage.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.omg.jsp.member.model.vo.Member;
import com.omg.jsp.trainerEducation.model.vo.TrainerEducation;

/**
 * Servlet implementation class UpdateTrainerEduServlet
 */
@WebServlet("/update.edu.ti")
public class UpdateTrainerEduServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateTrainerEduServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		Member loginUser = (Member) session.getAttribute("loginUser");
		String userId = loginUser.getMemberId();
		
		TrainerEducation updateEdu = new TrainerEducation();
		updateEdu.setEduManageCode(request.getParameter("saveEduManageCode"));
		updateEdu.setEduType(request.getParameter("saveEduType"));
		updateEdu.setEduState(request.getParameter("saveEduState"));
		updateEdu.setEduName(request.getParameter("saveEduName"));
		updateEdu.setEduEnrollDate(request.getParameter("saveEduEnrollDate"));
		updateEdu.setGraduateDate(request.getParameter("saveEduGraduateDate"));
		updateEdu.setEduFileCode(request.getParameter("saveEduFileCode"));
		System.out.println("updateEdu : " + updateEdu);
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}





















