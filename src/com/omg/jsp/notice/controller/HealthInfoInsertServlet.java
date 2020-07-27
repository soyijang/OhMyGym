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
 * Servlet implementation class HealthInfoInsertServlet
 */
@WebServlet("/healthInfoInsert.no")
public class HealthInfoInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HealthInfoInsertServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("UTF-8");
		
		String managerId=request.getParameter("managerId");
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

		HealthInfo newHealthInfo = new HealthInfo();
		
		newHealthInfo.setManagerId(managerId);
		newHealthInfo.setBoardCategory(category);
		newHealthInfo.setWritedate(writedate);
		newHealthInfo.setStatus(status);
		newHealthInfo.setBoardTitle(title);
		newHealthInfo.setBoardContent(content);
		
		System.out.println("newHealthInfo : "+newHealthInfo);
		
		int result = new HealthInfoService().insertHealthInfo(newHealthInfo);
		
		if(result > 0) {
			response.sendRedirect("healthInfoList.no");
		} else {
			request.setAttribute("msg", "건강정보 등록 실패!");
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
