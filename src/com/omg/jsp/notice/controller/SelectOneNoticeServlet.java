package com.omg.jsp.notice.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.omg.jsp.notice.model.service.NoticeService;
import com.omg.jsp.notice.model.vo.Notice;

/**
 * Servlet implementation class SelectOneNoticeServlet
 */
@WebServlet("/selectOne.no")
public class SelectOneNoticeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectOneNoticeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String num=request.getParameter("num");
		
		
		int nno = 0;
		
		if(num !=""&&num!=null) {
			nno=Integer.parseInt(num);
		}
		
		Notice notice = new NoticeService().selectOne(nno);
		
		String page = "";
		
		if(notice != null) {
			page="views/manager/manageAll/manageNoticeDetail.jsp";
			request.setAttribute("notice", notice);
		} else {
			page="views/common/errorPage.jsp";
			request.setAttribute("msg", "게시물 상세보기 실패!");
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
