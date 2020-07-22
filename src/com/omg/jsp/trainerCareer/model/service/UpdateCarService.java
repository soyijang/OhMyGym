package com.omg.jsp.trainerCareer.model.service;

import static com.omg.jsp.common.JDBCTemplate.*;

import java.sql.Connection;

import com.omg.jsp.trainerCareer.model.dao.CarDao;
import com.omg.jsp.trainerCareer.model.vo.TrainerCareer;

public class UpdateCarService {
	
	//경력정보 수정용
	public int updateCar(TrainerCareer updateCar) {
		
		  Connection con = getConncection();
		  int result = new CarDao().updateCar(con, updateCar);
		   
		  if(result > 0) {
			 commit(con);
		  } else {
			  rollback(con);
		  }
		  
		  close(con);
		  return result;
	}
	
	//경력정보 추가용
	public int insertCar(TrainerCareer insertCar) {
		
		Connection con = getConncection();
		  int result = new CarDao().insertCar(con, insertCar);
		   
		  if(result > 0) {
			 commit(con);
		  } else {
			  rollback(con);
		  }
		  
		  close(con);
		  return result;
	}

}
