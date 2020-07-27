package com.omg.jsp.notice.controller;

import java.io.IOException;
import java.util.ArrayList;

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
 * Servlet implementation class DeleteNoticeServlet
 */
@WebServlet("/deleteHealthInfo.no")
public class HealthInfoDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HealthInfoDeleteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		String num=request.getParameter("num");
		int nno = 0;
		
		if(num != ""&& num != null) {
			nno=Integer.parseInt(num);
		}
		
		HealthInfo healthInfo = new HealthInfoService().deleteHealthInfo(nno);
		
		System.out.println("delete servlet : "+healthInfo);
		
		ArrayList<HealthInfo> list = new HealthInfoService().selectList();
		
		
		if(list != null) {
			response.sendRedirect("healthInfoList.no");
		} else {
			request.setAttribute("msg", "게시판 삭제 실패!");
			request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
