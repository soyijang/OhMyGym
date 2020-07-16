package com.omg.jsp.challenge.model.service;

import static com.omg.jsp.common.JDBCTemplate.*;

import java.sql.Connection;

import com.omg.jsp.challenge.model.dao.ChallengeDao;
import com.omg.jsp.challenge.model.vo.Challenge;

public class ChallengeService {

	public int insertChallenge(Challenge challenge) {
		
		Connection con = getConncection();
		
		int result = new ChallengeDao().insertChallenge(con, challenge);
		
		if(result > 0) {
			commit(con);
		} else {
			rollback(con);
		}
		
		close(con);
		
		System.out.println("result : " + result);
		
		return result;
		
	}
	
}
