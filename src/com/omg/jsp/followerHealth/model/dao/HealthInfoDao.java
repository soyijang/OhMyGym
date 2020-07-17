package com.omg.jsp.followerHealth.model.dao;

import static com.omg.jsp.common.JDBCTemplate.close;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Comparator;
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
		ArrayList<HealthInfo> list = null;
		
		String query = prop.getProperty("selectHealthInfo");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, loginUser.getMemberId());
			
			rset = pstmt.executeQuery();
			
			list = new ArrayList<>();
			
			while(rset.next()) {
				HealthInfo hi = new HealthInfo();
				
				hi.setHealthData(rset.getString("HEALTH_DATA"));
				hi.setHealthInfoCode(rset.getString("HEALTH_INFO_CODE"));
				hi.setMemberId(rset.getString("MEMBER_ID"));
				hi.setHealthInfoNowManagecode(rset.getInt("HEALTH_INFO_NOW_MANAGECODE"));
					
				list.add(hi);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}

		return list;
	}

	public int insertHealthHistory(Connection con, ArrayList<HealthInfo> list) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("insertHealthHistory");
		
		try {
			pstmt = con.prepareStatement(query);
			
			for(int i = 0; i < list.size(); i++) {
				pstmt.setString(1, list.get(i).getHealthData());
				pstmt.setString(2, list.get(i).getHealthInfoCode());
				pstmt.setString(3, list.get(i).getMemberId());
				
				result += pstmt.executeUpdate();
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}

	public int updateHealthInfoNow(Connection con, ArrayList<HealthInfo> list) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("updateHealthInfoNow");
		
		try {
			pstmt = con.prepareStatement(query);
			
			for(int i = 0; i < list.size(); i++) {
				pstmt.setString(1, list.get(i).getHealthData());
				pstmt.setString(2, list.get(i).getMemberId());
				pstmt.setString(3, list.get(i).getHealthInfoCode());
				
				result += pstmt.executeUpdate();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}
}

