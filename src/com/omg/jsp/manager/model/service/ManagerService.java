package com.omg.jsp.manager.model.service;

import static com.omg.jsp.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.omg.jsp.manager.model.dao.ManagerDao;
import com.omg.jsp.manager.model.vo.Manager;
import com.omg.jsp.matching.model.dao.MatchingDao;
import com.omg.jsp.member.model.dao.MemberDao;
import com.omg.jsp.member.model.vo.Member;
import com.omg.jsp.member.model.vo.TrainerInfo;

public class ManagerService {

	public Manager loginCheck(Manager loginManager) {
		
		Connection con = getConncection();
		Manager loginUser= new ManagerDao().loginCheck(con,loginManager);
		System.out.println("login service에서 받은 로그인정보: " + loginManager);
		
		close(con);
		return loginUser;
	}
	
	public ArrayList<TrainerInfo> selectTrainerDetail(String memberId) {

		Connection con = getConncection();
		
		ArrayList<TrainerInfo> list = new MatchingDao().selectTrainerDetail(con, memberId);
		
		close(con);
		
		return list;
	}
	
	

}
