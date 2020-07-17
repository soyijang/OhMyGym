package com.omg.jsp.matching.model.service;

import java.sql.Connection;

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


}
