package com.omg.jsp.manager.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.omg.jsp.manager.model.service.ManagerService;
import com.omg.jsp.manager.model.vo.Manager;

/**
 * Servlet implementation class ManagerLoginServlet
 */
@WebServlet("/login.mg")
public class ManagerLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ManagerLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("loginId");
		String pwd = request.getParameter("loginPw");		
		
		Manager loginManager = new Manager();
		loginManager.setManagerId(id);
		loginManager.setManagerPwd(pwd);
		
		Manager loginUserManager = new ManagerService().loginCheck(loginManager);
		String page="";
		
		if(loginUserManager!=null) {
			request.getSession().setAttribute("loginManager", loginUserManager);
			response.sendRedirect("views/manager/manageAll/manageReport.jsp");
		}else {
			request.setAttribute("msg", "관리자로그인실패!");
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
