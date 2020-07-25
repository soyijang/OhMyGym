package com.omg.jsp.ohmoney.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.omg.jsp.common.PageInfo;
import com.omg.jsp.ohmoney.model.service.OhMoneyService;
import com.omg.jsp.ohmoney.model.vo.OhMoney;


@WebServlet("/listOhMoney.manager")
public class ManageListOhMoneyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ManageListOhMoneyServlet() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int currentPage;	//현재 페이지를 표시할 변수
		int limit;			//한 페이지에 게시글이 몇 개 보여질 것인지 표시
		int maxPage;		//전체 페이지에서 가장 마지막 페이지
		int startPage;		//한 번에 표시될 페이지가 시작할 페이지
		int endPage;		//한 번에 표시될 페이지가 끝나는 페이지
		
		currentPage = 1;
		
		//전달받은 request가 있다면 전달받은 값으로 덮어 씀
		if(request.getParameter("currentPage") != null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		
		//한 페이지에 보여질 목록 갯수
		limit = 20;
		
		//전체 목록 갯수를 조회
		int listCount = new OhMoneyService().getListCount();
		//총 페이지 수 계산
		//예를 들면 목록 갯수가 123개 이면 
		//총 필요한 페이지 수는 13개 임
		System.out.println(listCount);
		maxPage = (int) ((double) listCount / limit + 0.9); 
		//현재 페이지에 보여줄 시작 페이지 수 (10개씩 보여지게 할 경우)
		//아래 쪽 페이지 수가 10개씩 보여진다면
		//1, 11, 21, 31, ....
		startPage = (((int) ((double) currentPage / 10 + 0.9)) - 1) * 10 + 1;
		//목록 아래쪽에 보여질 마지막 페이지 수(10, 20, 30, ...)
		endPage = startPage + 10 - 1;
		
		if(maxPage < endPage) {
			endPage = maxPage;
		}
		
		PageInfo pi = new PageInfo(currentPage,listCount,limit,maxPage,startPage,endPage);
		
		
		
		ArrayList<OhMoney> ohMoneyList = new OhMoneyService().manageListOhMoney(pi);
			
//			Collections.sort(ohMoneyList, new Comparator<OhMoney>() {
//	
//				@Override
//				public int compare(OhMoney o1, OhMoney o2) {
//					
//					return Integer.parseInt(o2.getManageCode()) - Integer.parseInt(o1.getManageCode());
//				}
//				
//			});
			String page = "";
			if(ohMoneyList != null) {
				page = "views/manager/manageFollower/manageOhMoneyHistory.jsp";
				request.setAttribute("ohMoneyList", ohMoneyList);
				request.setAttribute("pi", pi);
			} else {
				page = "views/common/errorPage.jsp";
				request.setAttribute("msg", "오머니 결제 기록 조회 실패");
			}
			
			request.getRequestDispatcher(page).forward(request, response);
			
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
