package com.omg.jsp.report.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.omg.jsp.member.model.vo.Member;
import com.omg.jsp.report.model.service.ReportService;
import com.omg.jsp.report.model.vo.Report;

/**
 * Servlet implementation class InsertReportServlet
 */
@WebServlet("/insert.rp")
public class InsertReportServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertReportServlet() {
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
		
		Report report = new Report();
		report.setMemberId(userId);
		report.setReportCategory(request.getParameter("category"));
		report.setReportContent(request.getParameter("etcReason"));
		report.setReportedMemberId(request.getParameter("reportedId"));
		report.setReportUrl(request.getParameter("urlAddr"));
		
		String page = "";
		int result = new ReportService().insertReport(report);
		if(result > 0) {
			System.out.println("신고완료!");
			page = "views/follower/followerMypage/followerReport.jsp";
		}else {
			 page = "views/common/errorPage.jsp";
	         request.setAttribute("msg", "신고접수에 실패했습니다!");
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
