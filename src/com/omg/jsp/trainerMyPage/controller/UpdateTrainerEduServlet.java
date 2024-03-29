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
		
		TrainerEducation updateEdu = new TrainerEducation();
		updateEdu.setEduManageCode(request.getParameter("saveEduManageCode"));
		updateEdu.setEduType(request.getParameter("eduType"));
		updateEdu.setEduState(request.getParameter("eduState"));
		updateEdu.setEduName(request.getParameter("eduName"));
		updateEdu.setEduEnrollDate(request.getParameter("startDt"));
		updateEdu.setGraduateDate(request.getParameter("endDt"));
		System.out.println("updateEdu : " + updateEdu);
		
		String page = "";
		int result = new UpdateEduService().updateEdu(updateEdu);
		if(result > 0) {
			System.out.println("학력정보 업데이트완료!");
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





















