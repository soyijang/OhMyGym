package com.omg.jsp.manager.model.service;

import static com.omg.jsp.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.HashMap;

import com.omg.jsp.followerHealth.model.dao.HealthInfoDao;
import com.omg.jsp.followerHealth.model.vo.HealthInfo;
import com.omg.jsp.manager.model.dao.ManagerDao;
import com.omg.jsp.manager.model.vo.Manager;
import com.omg.jsp.matching.model.dao.MatchingDao;
import com.omg.jsp.member.model.dao.MemberDao;
import com.omg.jsp.member.model.vo.Member;
import com.omg.jsp.member.model.vo.TrainerInfo;
import com.omg.jsp.trainerCareer.model.vo.TrainerCareer;
import com.omg.jsp.trainerCeritificate.model.vo.TrainerCeritificate;
import com.omg.jsp.trainerEducation.model.vo.TrainerEducation;
import com.omg.jsp.trainerReview.model.vo.TrainerReview;

public class ManagerService {

	public Manager loginCheck(Manager loginManager) {
		
		Connection con = getConncection();
		Manager loginUser= new ManagerDao().loginCheck(con,loginManager);
		System.out.println("login service에서 받은 로그인정보: " + loginManager);
		
		close(con);
		return loginUser;
	}
	
	public HashMap<String, Object> selectFollowerMap(String memberId, Member loginUser) {
		Connection con = getConncection();
		
		HashMap<String, Object> hmap = new HashMap<String, Object>();
		
		ArrayList<Member> fList = new MemberDao().selectList(con);		
		ArrayList<HealthInfo> hInfo = new HealthInfoDao().selectHealthInfo(con, loginUser);
		

		//Matching 테이블에서 데이터를 반환하면 채팅으로, 안반환하면 디테일 페이지로 
		
		hmap.put("followerList", fList);
		hmap.put("HealthInfo", hInfo);
		
		
		close(con);
		
		return hmap;
	}
	
	

}
