package com.omg.jsp.followerHealth.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Properties;

import com.omg.jsp.followerHealth.model.vo.HealthInfo;
import com.omg.jsp.member.model.vo.Member;

public class HealthInfoDao {
	
	private Properties prop = new Properties();
	
	public HealthInfoDao() {
		String fileName = HealthInfoDao.class.getResource("/sql/healthInfo/healthInfo-query.properties").getPath();
		
		try {
			prop.load(new FileReader(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public ArrayList<HealthInfo> selectHealthInfo(Connection con, Member loginUser) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		HealthInfo hi = null;
		ArrayList<HealthInfo> list = null;
		
		String query = prop.getProperty("selectHealthInfo");
		
		
		
		
		return list;
	}

	

}
