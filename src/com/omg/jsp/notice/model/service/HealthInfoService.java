package com.omg.jsp.notice.model.service;

import java.sql.Connection; 
import java.util.ArrayList;

import com.omg.jsp.notice.model.dao.HealthInfoDao;
import com.omg.jsp.notice.model.dao.NoticeDao;
import com.omg.jsp.notice.model.vo.Attachment;
import com.omg.jsp.notice.model.vo.HealthInfo;
import com.omg.jsp.notice.model.vo.Notice;

import static com.omg.jsp.common.JDBCTemplate.*;

public class HealthInfoService {
	
	//공지사항 목록 조회용 메소드 [관리자]
	public ArrayList<HealthInfo> selectList(){
		
		Connection con = getConncection();
		
		ArrayList<HealthInfo> list = new HealthInfoDao().selectList(con);
		close(con);
		
		return list;
	}

	public int insertHealthInfo(HealthInfo newHealthInfo) {
		
		Connection con = getConncection();
		
		int result = new HealthInfoDao().insertHealthInfo(con, newHealthInfo);
		
		
		if(result > 0) {
			commit(con);
		} else {
			rollback(con);
		}
		close(con);
		
		return result;
	}

	public HealthInfo selectOne(int nno) {
		
		Connection con = getConncection();
		
		int result = 0;
		
		HealthInfo HealthInfo = new HealthInfoDao().selectOne(con, nno);
		
		if(HealthInfo != null) {
			result = new HealthInfoDao().viewCount(con,nno);
			
			if(result > 0) {
				commit(con);
			} else {
				rollback(con);
			}
		}
		close(con);
		
		return HealthInfo;
	}

	public int updateHealthInfo(HealthInfo healthInfo1) {
	
		Connection con=getConncection();
		
		int result=new HealthInfoDao().updateHealthInfo(con, healthInfo1);

			if(result > 0) {
				commit(con);
			} else {
				rollback(con);
			}

		close(con);
		
		return result;
	}

	public HealthInfo deleteHealthInfo(int nno) {
		
		Connection con = getConncection();
		
		int result = 0;
		
		HealthInfo healthInfo = new HealthInfoDao().deleteHealthInfo(con, nno);
		
		if(healthInfo != null) {
			
			if(result > 0) {
				rollback(con);
			} else {
				commit(con);
			}
		}
		close(con);
		
		System.out.println("HealthInfo Service  : "+healthInfo);
		return healthInfo;
	}

	public HealthInfo FollowHealthInfoSelectOne(int nno) {

		Connection con = getConncection();
		
		HealthInfo healthInfo = null;
		int result = 0;
		
		healthInfo = new HealthInfoDao().FollowHealthInfoSelectOne(con, nno);
		result = new HealthInfoDao().viewCount(con, nno);
		
		if(healthInfo != null && result > 0) {
				commit(con);
			} else {
				rollback(con);
			}
		
		close(con);
		
		return healthInfo;
	}
	
	
}
