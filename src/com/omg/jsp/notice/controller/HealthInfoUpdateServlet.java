package com.omg.jsp.notice.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.omg.jsp.notice.model.service.HealthInfoService;
import com.omg.jsp.notice.model.service.NoticeService;
import com.omg.jsp.notice.model.vo.HealthInfo;
import com.omg.jsp.notice.model.vo.Notice;

/**
 * Servlet implementation class HealthInfoUpdateServlet
 */
@WebServlet("/healthInfoUpdate.no")
public class HealthInfoUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HealthInfoUpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String num=request.getParameter("num");
		
		int nno = 0;
		
		if(num != ""&& num != null) {
			nno=Integer.parseInt(num);
		}
		
		HealthInfo healthInfo = new HealthInfoService().selectOne(nno);
		String page = "";
		
		if(healthInfo != null) {
			page="views/manager/manageAll/HealthInfoUpdate.jsp";
			request.setAttribute("healthInfo", healthInfo);
		} else {
			page="views/common/errorPage.jsp";
			request.setAttribute("msg", "게시글 수정 실패!");
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
