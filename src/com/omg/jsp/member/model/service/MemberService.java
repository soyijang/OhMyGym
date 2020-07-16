package com.omg.jsp.member.model.service;

import static com.omg.jsp.common.JDBCTemplate.*; 

import java.sql.Connection;

import com.omg.jsp.member.model.dao.MemberDao;
import com.omg.jsp.member.model.vo.Member;

public class MemberService {
	
public int insertMember(Member requestMember) {
		
		Connection con = getConncection();
		
		int result = new MemberDao().joinUser(con, requestMember);
		
		if(result > 0) {
			commit(con);
		}
		close(con);
		
		return result;
	}

public Member loginCheck(Member loginMember) {
	
		Connection con = getConncection();
		Member loginUser= new MemberDao().loginCheck(con, loginMember);
		System.out.println("login service : " + loginUser);
		
		close(con);
		return loginUser;
	}
}



