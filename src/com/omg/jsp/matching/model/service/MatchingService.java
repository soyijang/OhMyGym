package com.omg.jsp.matching.model.service;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.HashMap;

import com.omg.jsp.matching.model.dao.MatchingDao;
import com.omg.jsp.matching.model.vo.MatchingRequest;

import static com.omg.jsp.common.JDBCTemplate.*;

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
		
		close(con);
		
		return list;
	}

	public HashMap<String, Object> selectTrainerMap(String memberId) {
		Connection con = getConncection();
		
		HashMap<String, Object> hmap = null;
		
		hmap = new MatchingDao().selectTrainerMap(con, memberId);
		
		if(hmap != null) {
			commit(con);
		} else {
			rollback(con);
			hmap = null;
		}
		
		return hmap;
	}


}
