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



}
