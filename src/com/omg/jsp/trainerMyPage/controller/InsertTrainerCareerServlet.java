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
 * Servlet implementation class InsertTrainerCareerServlet
 */
@WebServlet("/insert.car.ti")
public class InsertTrainerCareerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertTrainerCareerServlet() {
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
		
		TrainerCareer insertCar = new TrainerCareer();
		insertCar.setMemberId(userId);
		insertCar.setCareerId(request.getParameter("saveCarManageCode"));
		insertCar.setCompName(request.getParameter("carName"));
		insertCar.setEnterDate(request.getParameter("startDt"));
		insertCar.setResignDate(request.getParameter("endDt"));
		insertCar.setCareerType(request.getParameter("carType"));
		insertCar.setCareerField(request.getParameter("carField"));
		insertCar.setMemberId(userId);
		insertCar.setCareerProof("EMPTY");
		insertCar.setProofYn("N");

		System.out.println("insertCar : " + insertCar);
		
		String page = "";
		int result = new UpdateCarService().insertCar(insertCar);
		if(result > 0) {
			System.out.println("경력정보 입력완료!");
			page = "/select.career.ti";
		}else {
			 page = "views/common/errorPage.jsp";
	         request.setAttribute("msg", "경력정보 저장에 실패했습니다!");
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
