package com.omg.jsp.followerHealth.model.service;

import static com.omg.jsp.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.HashMap;

import com.omg.jsp.followerHealth.model.dao.HealthInfoDao;
import com.omg.jsp.followerHealth.model.vo.HealthInfo;
import com.omg.jsp.member.model.vo.Member;

public class HealthInfoService {

	public ArrayList<HealthInfo> selectHealthInfo(Member loginUser) {
		Connection con = getConncection();

		ArrayList<HealthInfo> list = new HealthInfoDao().selectHealthInfo(con, loginUser);
		
		close(con);
		
		return list;
	}

	public int insertHealthHistory(ArrayList<HealthInfo> list) {
		Connection con = getConncection();
		
		int insertResult = new HealthInfoDao().insertHealthHistory(con, list);
		
		int updateResult = new HealthInfoDao().updateHealthInfoNow(con, list);
		
		if(insertResult > 0 && updateResult > 0) {
			commit(con);
		} else {
			rollback(con);
		}
		
		close(con);
		
		return insertResult;
	}



}
