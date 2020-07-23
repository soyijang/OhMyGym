package com.omg.jsp.matching.model.service;

import static com.omg.jsp.common.JDBCTemplate.close;
import static com.omg.jsp.common.JDBCTemplate.commit;
import static com.omg.jsp.common.JDBCTemplate.getConncection;
import static com.omg.jsp.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.HashMap;

import com.omg.jsp.matching.model.dao.MatchingDao;
import com.omg.jsp.matching.model.vo.MatchingChat;
import com.omg.jsp.matching.model.vo.MatchingRequest;
import com.omg.jsp.matching.model.vo.RequestInformation;
import com.omg.jsp.member.model.vo.TrainerInfo;
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
		ArrayList<TrainerInfo> tiList = new MatchingDao().selectInfo(con, memberId);

		//Matching 테이블에서 데이터를 반환하면 채팅으로, 안반환하면 디테일 페이지로 
		
		hmap.put("info", tiList);
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

	public MatchingRequest isMatched(String trainerId, String followerId) {
		
		Connection con = getConncection();
		
		MatchingRequest matchingCheck = new MatchingDao().isMatched(con, trainerId, followerId);
		
		close(con);
		
		return matchingCheck;
	}

	public ArrayList<MatchingChat> matchChatList(String roomNum) {
		
		Connection con = getConncection();
		
		ArrayList<MatchingChat> result = new MatchingDao().matchChatList(con, roomNum);
		
		close(con);
		
		return result;
	}

	public int insertChat(MatchingChat chat) {
		
		Connection con = getConncection();
		
		int result = new MatchingDao().insertChat(con, chat);
		
		if(result > 0) {
			commit(con);
		} else {
			rollback(con);
		} close(con);
		
		return result;
	}
	
	
	public RequestInformation selectFollowerInfo(String followerId) {
		 Connection con = getConncection();
		      
		 RequestInformation requestInfo = new MatchingDao().selectFollowerInfo(con, followerId);
		 ArrayList<String> healthInfo = new MatchingDao().selectFollowerHealthInfo(con, followerId);

		 requestInfo.setHeight(healthInfo.get(0));
		 requestInfo.setWeight(healthInfo.get(1));
		 requestInfo.setWishPart(healthInfo.get(2));
		      
		 System.out.println(requestInfo);
		      
		 close(con);
		     
		 return requestInfo;
	}

	public MatchingRequest selectChat(String trainerId, String userId) {
		
		Connection con = getConncection();
		
		MatchingRequest result = new MatchingDao().selectChat(con, trainerId, userId);
		
		close(con);
		
		return result;
	}

	public MatchingRequest manageGroup(String trainerId) {
		
		Connection con = getConncection();
		
		MatchingRequest result = new MatchingDao().manageGroup(con, trainerId);
		
		close(con);
		
		return result;
	}

	public int endMatch(String trainerId, String followerId) {
		Connection con = getConncection();
		
		int result = new MatchingDao().endMatch(con, trainerId, followerId);
		
		if(result > 0) {
			commit(con);
		} else {
			rollback(con);
		}
		close(con);
		
		return result;
	}

}
