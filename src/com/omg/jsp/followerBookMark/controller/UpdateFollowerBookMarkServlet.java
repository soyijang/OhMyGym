package com.omg.jsp.followerBookMark.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.omg.jsp.followerBookMark.model.service.BookMarkService;

/**
 * Servlet implementation class UpdateFollowerBookMarkServlet
 */
@WebServlet("/update.bm")
public class UpdateFollowerBookMarkServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateFollowerBookMarkServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String userId = request.getParameter("saveUserId");
		String boardNum = request.getParameter("saveBoardNum");
		
		int result = new BookMarkService().deleteBookMark(userId, boardNum);
		
		String page = "";
		if(result > 0) {
			System.out.println("삭제완료");
			page= "select.bm";
			request.setAttribute("userId", userId);
		} else {
			page="views/common/errorPage.jsp";
			request.setAttribute("msg", "북마크 삭제,조회실패!");
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
