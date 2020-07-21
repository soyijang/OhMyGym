package com.omg.jsp.matching.model.service;

import static com.omg.jsp.common.JDBCTemplate.close;
import static com.omg.jsp.common.JDBCTemplate.commit;
import static com.omg.jsp.common.JDBCTemplate.getConncection;
import static com.omg.jsp.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.HashMap;

import com.omg.jsp.matching.model.dao.MatchingDao;
import com.omg.jsp.matching.model.vo.MatchingRequest;
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

	public HashMap<String, Integer> insertMatchRequest(HashMap<String, String> matchingInfo) {
		Connection con = getConncection();
		
		int insertRequestResult = new MatchingDao().insertMatchRequest(con, matchingInfo);
		System.out.println("requestResult : " + insertRequestResult);
		
		int insertMatchChatResult = new MatchingDao().insertMatchChat(con, matchingInfo);
		System.out.println("MatchChatResult : " + insertMatchChatResult);
		
//		int totalResult = insertRequestResult + insertMatchChatResult;
		HashMap<String, Integer> checkInsert = new HashMap<String, Integer>();
		
		checkInsert.put("request", insertRequestResult);
		checkInsert.put("matchChat", insertMatchChatResult);
		
		if(insertRequestResult > 0 && insertMatchChatResult > 0) {
			commit(con);
		} else {
			rollback(con);
		}
				
		return checkInsert;
	}

	public ArrayList<MatchingRequest> selectApplyList(String memberId) {
		
		Connection con = getConncection();
		
		ArrayList<MatchingRequest> matchRequestList = new MatchingDao().selectApplyList(con, memberId);
		
		close(con);
		
		return matchRequestList;
	}
}
