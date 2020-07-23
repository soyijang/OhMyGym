package com.omg.jsp.notice.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.omg.jsp.notice.model.service.NoticeService;
import com.omg.jsp.notice.model.vo.Notice;

/**
 * Servlet implementation class UpdateNoticeCompleteServlet
 */
@WebServlet("/updateNotice.no")
public class UpdateNoticeCompleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateNoticeCompleteServlet() {
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
		
		Notice notice1 = new Notice();
		
		notice1.setBoardNum(num);
		notice1.setBoardCategory(category);
		notice1.setWritedate(writedate);
		notice1.setStatus(status);
		notice1.setBoardTitle(title);
		notice1.setBoardContent(content);
		
	   if(num != ""&& num != null) {
			nno=Integer.parseInt(num);
		}
		
		int result = new NoticeService().updateNotice(notice1);
		System.out.println("updateNotice Complete servlet : "+notice1);
		
		ArrayList<Notice> list = new NoticeService().selectList();
		
		
		if(list != null) {
			response.sendRedirect("selectList.no");
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
