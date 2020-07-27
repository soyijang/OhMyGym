package com.omg.jsp.followerDiet.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.omg.jsp.followerDiet.model.service.FollowerDietService;

/**
 * Servlet implementation class DeleteFollowerDietServlet
 */
@WebServlet("/deleteOne.dt")
public class DeleteFollowerDietServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteFollowerDietServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String savedietCode = request.getParameter("savedietCode");
		
		int result = new FollowerDietService().deleteDiet(savedietCode);
		
		String page = "";
		if(result > 0 ) {
			page="/selectList.diet";
		}else {
			page="views/common/errorPage.jsp";
			request.setAttribute("msg", "식단삭제,조회실패!");
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
