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
 * Servlet implementation class UpdateNoticeCompleteServlet
 */
@WebServlet("/healthInfoUpdateComplete.no")
public class HealthInfoUpdateCompleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HealthInfoUpdateCompleteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		String num=request.getParameter("boardNum");
		String category=request.getParameter("category");
		String writedate=request.getParameter("writedate");
		String status=request.getParameter("status");
		String title=request.getParameter("title");
		String content=request.getParameter("content");
		
		System.out.println("category : "+category);
		System.out.println("boardNum : "+num);
		System.out.println("status : "+status);
		System.out.println("title : "+title);
		System.out.println("content : "+content);
		
		int nno = 0;
		
		HealthInfo healthInfo1 = new HealthInfo();
		
		healthInfo1.setBoardNum(num);
		healthInfo1.setBoardCategory(category);
		healthInfo1.setWritedate(writedate);
		healthInfo1.setStatus(status);
		healthInfo1.setBoardTitle(title);
		healthInfo1.setBoardContent(content);
		
	   if(num != ""&& num != null) {
			nno=Integer.parseInt(num);
		}
		
		int result = new HealthInfoService().updateHealthInfo(healthInfo1);
		System.out.println("updatehealthInfo Complete servlet : "+healthInfo1);
		
		ArrayList<HealthInfo> list = new HealthInfoService().selectList();
		
		
		if(list != null) {
			response.sendRedirect("healthInfoList.no");
		} else {
			request.setAttribute("msg", "게시판 수정 실패!");
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
