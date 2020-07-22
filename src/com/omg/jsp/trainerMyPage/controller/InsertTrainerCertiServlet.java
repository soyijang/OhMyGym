package com.omg.jsp.trainerMyPage.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.omg.jsp.member.model.vo.Member;
import com.omg.jsp.trainerCeritificate.model.service.TrainerCertiService;
import com.omg.jsp.trainerCeritificate.model.vo.TrainerCeritificate;

/**
 * Servlet implementation class InsertTrainerCertiServlet
 */
@WebServlet("/insert.certi.ti")
public class InsertTrainerCertiServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertTrainerCertiServlet() {
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
		
		TrainerCeritificate insertCerti = new TrainerCeritificate();
		insertCerti.setCertiDate(request.getParameter("certiDate"));
		insertCerti.setCertiFileCode("EMPTY");
		insertCerti.setCertiNum(request.getParameter("certiNum"));
		insertCerti.setMemberId(userId);
		insertCerti.setCertiCode(request.getParameter("certiCode"));
		insertCerti.setCertiConfirm("N");
		insertCerti.setCertiInstitution(request.getParameter("certiInstitution"));
		
		System.out.println("insertCerti : " + insertCerti);
		
		String page = "";
		int result = new TrainerCertiService().insertCerti(insertCerti);
		if(result > 0) {
			System.out.println("자격정보 저장완료!");
			page = "/select.prize.ti";
		}else {
			 page = "views/common/errorPage.jsp";
	         request.setAttribute("msg", "자격정보 저장에 실패했습니다!");
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
