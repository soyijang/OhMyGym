package com.omg.jsp.groupCommu.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.omg.jsp.matching.model.service.MatchingService;
import com.omg.jsp.matching.model.vo.MatchingRequest;


@WebServlet("/groupCommu.manager")
public class ManageGroupCommuServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ManageGroupCommuServlet() {
        super();

    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String trainerId = request.getParameter("trainerId");
		
		MatchingRequest groupResult = new MatchingService().manageGroup(trainerId);
		
		String page = "";
		if(groupResult != null) {
    		page = "views/manager/manageAll/manageGroupDetail.jsp";
    		request.setAttribute("groupResult", groupResult);
    		request.getRequestDispatcher(page).forward(request, response);
			
		} else {
			System.out.println("조회실패");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
