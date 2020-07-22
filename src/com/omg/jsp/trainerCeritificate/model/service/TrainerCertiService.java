package com.omg.jsp.trainerCeritificate.model.service;

import static com.omg.jsp.common.JDBCTemplate.*;

import java.sql.Connection;

import com.omg.jsp.trainerCareer.model.dao.CarDao;
import com.omg.jsp.trainerCeritificate.model.dao.CertiDao;
import com.omg.jsp.trainerCeritificate.model.vo.TrainerCeritificate;

public class TrainerCertiService {

	//자격정보 수정용
	public int updateCerti(TrainerCeritificate updateCerti) {
		
		  Connection con = getConncection();
		  int result = new CertiDao().updateCerti(con, updateCerti);
		   
		  if(result > 0) {
			 commit(con);
		  } else {
			  rollback(con);
		  }
		  
		  close(con);
		  return result;
	}
	
	//자격정보 추가용
	public int insertCerti(TrainerCeritificate insertCerti) {
		
		Connection con = getConncection();
		  int result = new CertiDao().insertCerti(con, insertCerti);
		   
		  if(result > 0) {
			 commit(con);
		  } else {
			  rollback(con);
		  }
		  
		  close(con);
		  return result;
	}

}
