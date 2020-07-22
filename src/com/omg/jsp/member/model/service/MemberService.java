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

	//프로필사진 등록용
	public int insertProfile(ArrayList<Attachment> fileList) {
	   
	   Connection con = getConncection();
	   int result = 0;
	   
	   //데이터베이스에 가서 하나씩 담아올애들
	   int result1 = 0;
	   int result2 = 0;
	   
//	      int fid = new MemberDao().selectCurrval(con);
	      int fid = 0;
	      
	      for(int i = 0; i < fileList.size(); i++) {
	         fileList.get(i).setFid(fid);
	         result2 += new MemberDao().insertAttachment(con, fileList.get(i));
	      }
	      
	      //리턴받은 result2의 개수와 파일사이즈가 같으면 다 가져온거임. 커밋.
	      if(result2 == fileList.size()) {
	         commit(con);
	         result = 1;
	      }else {
	         rollback(con);
	   }
	   close(con);
	   System.out.println("result1 : " + result1);
	   System.out.println("result2 : " + result2);
	   return result;
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


	public ArrayList<Member> selectTrainer() {

		Connection con = getConncection();
		
		ArrayList<Member> list = new MemberDao().selectTrainer(con);
		
		close(con);
		
		return list;
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



