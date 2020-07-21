package com.omg.jsp.groupCommu.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.omg.jsp.groupCommu.model.service.GroupCommuService;
import com.omg.jsp.groupCommu.model.vo.GroupComment;

@WebServlet("/groupList.manager")
public class ManageGroupListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ManageGroupListServlet() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<HashMap<String, Object>> list = new GroupCommuService().selectGroupList();
		
		Collections.sort(list, new Comparator<HashMap<String, Object>>() {

			@Override
			public int compare(HashMap<String, Object> o1, HashMap<String, Object> o2) {
				
				return Integer.parseInt((String) o1.get("groupNum")) - Integer.parseInt((String) o2.get("groupNum"));
			}
		});

		String page = "";
		
		if(list != null) {
			page = "views/manager/manageAll/manageGroupCommunity.jsp";
			request.setAttribute("list", list);
		} else {
			page = "views/common/errorPage.jsp";
			request.setAttribute("msg", "그룹소통방 목록 조회 실패");
		}
		
		request.getRequestDispatcher(page).forward(request, response);
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
