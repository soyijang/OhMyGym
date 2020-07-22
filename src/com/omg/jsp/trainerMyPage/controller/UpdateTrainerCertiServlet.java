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
 * Servlet implementation class UpdateTrainerCertiServlet
 */
@WebServlet("/update.certi.ti")
public class UpdateTrainerCertiServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateTrainerCertiServlet() {
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
		
		TrainerCeritificate updateCerti = new TrainerCeritificate();
		updateCerti.setCertiDate(request.getParameter("certiDate"));
		updateCerti.setCertiFileCode(request.getParameter("certiFile"));
		updateCerti.setCertiNum(request.getParameter("certiNum"));
		updateCerti.setMemberId(userId);
		updateCerti.setCertiCode(request.getParameter("certiCode"));
		updateCerti.setCertiConfirm("N");
		updateCerti.setCertiInstitution(request.getParameter("certiInstitution"));
		updateCerti.setCertiManageCode(request.getParameter("saveCertiManageCode"));
		
		System.out.println("updateCerti : " + updateCerti);
		
		String page = "";
		int result = new TrainerCertiService().updateCerti(updateCerti);
		if(result > 0) {
			System.out.println("자격정보 업데이트완료!");
			page = "/select.prize.ti";
		}else {
			 page = "views/common/errorPage.jsp";
	         request.setAttribute("msg", "자격정보 수정에 실패했습니다!");
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
