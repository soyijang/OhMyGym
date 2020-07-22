package com.omg.jsp.trainerEducation.model.service;

import static com.omg.jsp.common.JDBCTemplate.*;

import java.sql.Connection;

import com.omg.jsp.member.model.vo.Member;
import com.omg.jsp.trainerEducation.model.dao.EduDao;
import com.omg.jsp.trainerEducation.model.vo.TrainerEducation;

public class UpdateEduService {
	
	//학력정보 수정용
	public int updateEdu(TrainerEducation updateEdu) {
		
	  Connection con = getConncection();
	  int result = new EduDao().updateEdu(con, updateEdu);
	   
	  if(result > 0) {
		 commit(con);
	  } else {
		  rollback(con);
	  }
	  
	  close(con);
	  return result;
		
	}
	
	//학력정보 추가용
	public int insertEdu(TrainerEducation insertEdu, String userId) {
		 
		Connection con = getConncection();
		  int result = new EduDao().insertEdu(con, insertEdu, userId);
		   
		  if(result > 0) {
			 commit(con);
		  } else {
			  rollback(con);
		  }
		  
		  close(con);
		  return result;
	}

}
