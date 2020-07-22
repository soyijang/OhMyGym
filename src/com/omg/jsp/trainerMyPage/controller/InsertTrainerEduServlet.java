package com.omg.jsp.trainerMyPage.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.omg.jsp.member.model.vo.Member;
import com.omg.jsp.trainerEducation.model.service.UpdateEduService;
import com.omg.jsp.trainerEducation.model.vo.TrainerEducation;

/**
 * Servlet implementation class InsertTrainerEduServlet
 */
@WebServlet("/insert.edu.ti")
public class InsertTrainerEduServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertTrainerEduServlet() {
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
		System.out.println("num : " +  request.getParameter("num"));
		System.out.println("eduStatenum : " + request.getParameter("eduState"));
		System.out.println("eduNamenum : " + request.getParameter("eduName"));
		
		TrainerEducation insertEdu = new TrainerEducation();
		insertEdu.setEduManageCode(request.getParameter("saveEduManageCode"));
		insertEdu.setEduType(request.getParameter("eduType"));
		insertEdu.setEduState(request.getParameter("eduState"));
		insertEdu.setEduName(request.getParameter("eduName"));
		insertEdu.setEduEnrollDate(request.getParameter("startDt"));
		insertEdu.setGraduateDate(request.getParameter("endDt"));
		System.out.println("insertEdu : " + insertEdu);
		
		String page = "";
		int result = new UpdateEduService().insertEdu(insertEdu, userId);
		if(result > 0) {
			System.out.println("학력정보 추가완료!");
			page = "select.ti";
		}else {
			 page = "views/common/errorPage.jsp";
	         request.setAttribute("msg", "학력정보 수정에 실패했습니다!");
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










