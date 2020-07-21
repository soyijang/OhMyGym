package com.omg.jsp.matching.model.service;

import static com.omg.jsp.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.HashMap;

import com.omg.jsp.matching.model.dao.MatchingDao;
import com.omg.jsp.matching.model.vo.MatchingRequest;
import com.omg.jsp.member.model.vo.Member;
import com.omg.jsp.trainerCareer.model.vo.TrainerCareer;
import com.omg.jsp.trainerCeritificate.model.vo.TrainerCeritificate;
import com.omg.jsp.trainerEducation.model.vo.TrainerEducation;
import com.omg.jsp.trainerReview.model.vo.TrainerReview;

public class MatchingService {

	public MatchingRequest checkMatch(String memberId) {
		
		Connection con = getConncection();
		
		MatchingRequest matchResult = new MatchingDao().checkMatch(con, memberId);
		
		close(con);
		
		return matchResult;
	}

	public ArrayList<HashMap<String, Object>> selectTrainerList() {
		Connection con = getConncection();
		
		ArrayList<HashMap<String, Object>> list = new MatchingDao().selectTrainerList(con);
		HashMap<String, Object> gradeAvg = new MatchingDao().selectGradeAvg(con);
		list.add(gradeAvg);
		
		System.out.println(list);
		
		close(con);
		
		return list;
	}

	public HashMap<String, Object> selectTrainerMap(String memberId) {
		Connection con = getConncection();
		
		HashMap<String, Object> hmap = new HashMap<String, Object>();
		
		ArrayList<String> trainerInfo = new MatchingDao().selectTrainerInfo(con, memberId);		
		ArrayList<TrainerCeritificate> tcList = new MatchingDao().selectTrainerCeritificate(con, memberId);
		ArrayList<TrainerEducation> teList = new MatchingDao().selectTrainerEducation(con,memberId);
		ArrayList<TrainerCareer> tcrList = new MatchingDao().selectTrainerCareer(con, memberId);
		ArrayList<TrainerReview> trList = new MatchingDao().selectTrainerReview(con, memberId);
		
		hmap.put("trainerInfo", trainerInfo);
		hmap.put("ceritificate", tcList);
		hmap.put("education", teList);
		hmap.put("career", tcrList);
		hmap.put("review", trList);
		
		close(con);
		
		return hmap;
	}

	public int insertMatchRequest(HashMap<String, String> matchingInfo) {
		Connection con = getConncection();
		
		int insertRequestResult = new MatchingDao().insertMatchRequest(con, matchingInfo);
		int insertMatchChatResult = new MatchingDao().insertMatchChat(con, matchingInfo);
		
		int totalResult = insertRequestResult + insertMatchChatResult;
		
		if(totalResult > 1) {
			commit(con);
		} else {
			rollback(con);
		}
				
		return totalResult;
	}


}
