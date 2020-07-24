package com.omg.jsp.member.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.omg.jsp.member.model.dao.MemberDao;

/**
 * Servlet implementation class IdCheckFInal
 */


@WebServlet("/idcheck.do")
public class IdCheckFInal extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public IdCheckFInal() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		try{
			String uid=request.getParameter("uid").trim();
			String message=""; //응답메세지 
			
			//System.out.println(uid); → uid를 넘겨받지 못해서 에러가 발생할 수 있기 때문에 이를 점검하기 위해서 적음
			if(uid.length()<5 || uid.length()>=11){
				message="<span style='color: red; font-weight: bold'>아이디는 5~10글자 이내로 입력 해주세요.</span>"; 
				}else{
					MemberDao dao=new MemberDao();
					int cnt = dao.duplecateID(uid); //아이디 중복확인
					if(cnt==0){
						message="<span style='color: blue; font-weight: bold'>사용 가능한 아이디 입니다.</span>";
						}else{
							//cnt==1 이면 입력된 아이디와 일치하는 아이디가 존재한다는 의미이기 때문에 중복된 아이디로 인식해야 함 
							message="<span style='color: green; font-weight: bold'>중복된 아이디 입니다.</span>"; 
							}//if end
					}//if end 
			response.setContentType("text/plain; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println(message);
			out.flush();
			out.close();
			}catch(Exception e){ 
				System.out.println("응답 실패 : " + e); 
				}//try end
					}
	
	
	
	
	
	
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
