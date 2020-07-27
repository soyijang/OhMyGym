package com.omg.jsp.followerHealth.model.service;

import static com.omg.jsp.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.HashMap;

import com.omg.jsp.followerHealth.model.dao.HealthInfoDao;
import com.omg.jsp.followerHealth.model.vo.HealthInfo;
import com.omg.jsp.member.model.dao.MemberDao;
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
		
		int updateHealthInfoNowResult = 0;
		
		int healthInfoNow = new HealthInfoDao().selectHealthInfoNow(con, list);
		
		System.out.println("healthInfoNow result : " + healthInfoNow);
		
		if(healthInfoNow == 9) {
			int insertHealthInfoResult = new HealthInfoDao().insertHealthHistory(con, list);
			updateHealthInfoNowResult = new HealthInfoDao().updateHealthInfoNow(con, list);
			
			if(insertHealthInfoResult > 0 && updateHealthInfoNowResult > 0) {
				commit(con);
			} else {
				rollback(con);
			}
			
			close(con);
			
			return updateHealthInfoNowResult;
		} else {
			int insertHealthInfoResult = new HealthInfoDao().insertHealthHistory(con, list);
			int insertHealthInfoNow = new HealthInfoDao().insertHealthInfoNow(con, list);
			
			if(insertHealthInfoNow > 0) {
				commit(con);
			} else {
				rollback(con);
			}
			
			close(con);
			
			return insertHealthInfoNow;
		}
		
		
	}
	
	public int insertHealthInfoNow(ArrayList<HealthInfo> list) {
		
		Connection con = getConncection();
		
		int result = new HealthInfoDao().insertHealthInfoNow(con, list);
		
		if(result > 0) {
			commit(con);
		}
		close(con);
		
		return result;
		
		
	}



}
