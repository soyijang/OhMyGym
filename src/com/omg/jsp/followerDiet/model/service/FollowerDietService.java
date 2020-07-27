package com.omg.jsp.followerDiet.model.service;

import static com.omg.jsp.common.JDBCTemplate.*;

import com.omg.jsp.followerBookMark.model.dao.BookMarkDao;
import com.omg.jsp.followerDiet.model.dao.FollowerDietDao;
import com.omg.jsp.followerDiet.model.vo.FollowerDiet;
import com.omg.jsp.trainerEducation.model.dao.EduDao;

import java.sql.Connection;
import java.util.ArrayList;

public class FollowerDietService {
	
	public ArrayList<FollowerDiet> selectList(String memberId){
		
		Connection con = getConncection();
		
		ArrayList<FollowerDiet> list = new FollowerDietDao().selectList(con, memberId);
		
		close(con);
		
		return list;
		
	}
	
	//식단추가
	public int insertdiet(FollowerDiet insertdiet) {
		
		Connection con = getConncection();
		  int result = new FollowerDietDao().insertdiet(con, insertdiet);
		   
		  if(result > 0) {
			 commit(con);
		  } else {
			  rollback(con);
		  }
		  
		  close(con);
		  return result;
	}

	//식단삭제
	public int deleteDiet(String savedietCode) {
		
		Connection con = getConncection();
		
		int result = new FollowerDietDao().deleteDiet(con, savedietCode);
		
		if(result>0) {
			commit(con);
		} else {
			rollback(con);
		}
		
		close(con);
		
		return result;
	}

}
