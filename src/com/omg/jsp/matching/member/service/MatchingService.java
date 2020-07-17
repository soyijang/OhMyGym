package com.omg.jsp.matching.member.service;

import java.sql.Connection;

import com.omg.jsp.matching.member.dao.MatchingDao;
import com.omg.jsp.matching.member.vo.MatchingRequest;

import static com.omg.jsp.common.JDBCTemplate.*;

public class MatchingService {

	public MatchingRequest checkMatch(String memberId) {
		
		Connection con = getConncection();
		
		MatchingRequest matchResult = new MatchingDao().checkMatch(con, memberId);
		
		close(con);
		
		return matchResult;
	}


}
