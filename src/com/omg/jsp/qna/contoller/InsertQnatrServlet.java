package com.omg.jsp.qna.contoller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.omg.jsp.faq.model.service.FAQService;
import com.omg.jsp.faq.model.vo.FAQ;
import com.omg.jsp.qna.model.service.QNAService;
import com.omg.jsp.qna.model.vo.QNA;

/**
 * Servlet implementation class InsertQnatrServlet
 */
@WebServlet("/InsertQna.tr")
public class InsertQnatrServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertQnatrServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		
		String category = request.getParameter("category");
	      String title = request.getParameter("title");
	      String content = request.getParameter("content");
	      String memberId = request.getParameter("memberId");   
	      String fileCode = request.getParameter("fileCode");
	      
	      
	      
	            
	      QNA q = new QNA();
	      q.setCategory(category);
	      q.setFileCode(fileCode);
	      q.setMemberId(memberId);
	      q.setQuestionContent(content);
	      q.setQuestionTitle(title);
	      
	      
	      System.out.println("qna : " + q);
	      
	      int result = new QNAService().insertQNA(q);
	      
	      String page = "";
	      if(result > 0) {
//	         response.sendRedirect("/jsp/selectList.no");
	         page = "views/trainer/trainerFAQ/trainerFAQMain.jsp";
	         request.setAttribute("successCode", "insertQNA");
	         request.getRequestDispatcher(page).forward(request, response);
	      } else {
	         page = "views/common/errorPage.jsp";
	         request.setAttribute("msg", "자주묻는질문 등록 실패");
	         request.getRequestDispatcher(page).forward(request, response);
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
