package com.omg.jsp.trainerMyPage.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.omg.jsp.member.model.vo.Member;
import com.omg.jsp.trainerCareer.model.service.UpdateCarService;
import com.omg.jsp.trainerCareer.model.vo.TrainerCareer;

/**
 * Servlet implementation class UpdateTrainerCareerServlet
 */
@WebServlet("/update.car.ti")
public class UpdateTrainerCareerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateTrainerCareerServlet() {
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
		
		TrainerCareer updateCar = new TrainerCareer();
		updateCar.setMemberId(userId);
		updateCar.setCareerId(request.getParameter("saveCarManageCode"));
		updateCar.setCompName(request.getParameter("carName"));
		updateCar.setEnterDate(request.getParameter("startDt"));
		updateCar.setResignDate(request.getParameter("endDt"));
		updateCar.setCareerType(request.getParameter("carType"));
		updateCar.setCareerField(request.getParameter("carField"));
		updateCar.setCareerProof("EMPTY");
		updateCar.setProofYn("N");
		
		System.out.println("updateCar : " + updateCar);
		
		String page = "";
		int result = new UpdateCarService().updateCar(updateCar);
		if(result > 0) {
			System.out.println("경력정보 업데이트완료!");
			page = "/select.career.ti";
		}else {
			 page = "views/common/errorPage.jsp";
	         request.setAttribute("msg", "경력정보 수정에 실패했습니다!");
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
