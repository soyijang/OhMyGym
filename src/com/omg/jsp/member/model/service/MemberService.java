package com.omg.jsp.member.model.service;

import static com.omg.jsp.common.JDBCTemplate.*; 

import java.sql.Connection;
import java.util.ArrayList;

import com.omg.jsp.member.model.dao.MemberDao;
import com.omg.jsp.member.model.vo.Attachment;
import com.omg.jsp.member.model.vo.Member;
import com.omg.jsp.member.model.vo.PageInfo;
import com.omg.jsp.member.model.vo.TrainerInfo;

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




public int insertTrainerInfo(TrainerInfo requestTrainer, String memberId) {

	Connection con = getConncection();
	
	int result = new MemberDao().insertTrainerInfo(con, requestTrainer, memberId);
	
	if(result > 0) {
		commit(con);
	}
	close(con);
	
	return result;
}


//	public int getListCount() {
//	
//
//		Connection con = getConncection();
//		int listCount = new MemberDao().getListCount(con);
//	
//		close(con);
//	
//		return listCount;
//	}


//	public ArrayList<Member> selectList(PageInfo pi) {
//		
//		
//
//		Connection con = getConncection();
//		
//		ArrayList<Member> list = new MemberDao().selectList(con, pi);
//		
//		close(con);
//		
//		return list;
//		
//		
//	}


	//페이징처리 전 게시물 목록 조회용 메소드
	public ArrayList<Member> selectList() {

		Connection con = getConncection();
		
		ArrayList<Member> list = new MemberDao().selectList(con);
		
		close(con);
		
		return list;
	}

	//회원정보 수정용
	public int updateMember(Member requestMember) {
	   
	   Connection con = getConncection();
	   int result = new MemberDao().updateMember(con, requestMember);
	   
	   if(result > 0) {
	      commit(con);
	   }else {
	      rollback(con);
	   }
	   
	   close(con);
	   return result;
	}
	
	public Member findId(Member findIdUser) {
		   
		   Connection con = getConncection();
		   
		   Member member = new MemberDao().findId(con, findIdUser);
		   if(member != null) {
		      commit(con);
		   }else {
		      close(con);
		   }
		   
		   return member;
		}


	public int updateProfile(String fileCode, String userId) {
		Connection con = getConncection();
		
		int result = new MemberDao().updateProfile(con, fileCode, userId);
		
		
		if(result> 0) {
			commit(con);
		} else {
			rollback(con);
		} close(con);
		
		return result;
	}
}



