package com.omg.jsp.notice.controller;

import java.io.IOException;
import java.util.GregorianCalendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.omg.jsp.notice.model.service.NoticeService;
import com.omg.jsp.notice.model.vo.Notice;

/**
 * Servlet implementation class InsertNoticeServlet
 */
@WebServlet("/insertNotice.no")
public class InsertNoticeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertNoticeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String category=request.getParameter("category");
		String writedate=request.getParameter("writedate");
		String status=request.getParameter("status");
		String title=request.getParameter("title");
		String content=request.getParameter("content");
		
		System.out.println("category : "+category);
		System.out.println("writedate : "+writedate);
		System.out.println("status : "+status);
		System.out.println("title : "+title);
		System.out.println("content : "+content);
		
		java.sql.Date day = null;
		
		if(writedate != "") {
			java.sql.Date.valueOf(writedate);
		} else {
			day = new java.sql.Date(new GregorianCalendar().getTimeInMillis());
		}
		
		Notice newNotice = new Notice();
		
		newNotice.setBoardCategory(category);
		newNotice.setWritedate(writedate);
		newNotice.setStatus(status);
		newNotice.setBoardTitle(title);
		newNotice.setBoardContent(content);
		
		System.out.println("newNotice : "+newNotice);
		
		int result = new NoticeService().insertNotice(newNotice);
		
		if(result > 0) {
			response.sendRedirect("/omg/jsp/selectList.no");
		} else {
			request.setAttribute("msg", "공지사항 등록 실패!");
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
