package com.omg.jsp.trainerApplyGrade.model.dao;

import static com.omg.jsp.common.JDBCTemplate.close;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.omg.jsp.trainerApplyGrade.model.vo.Apply;

public class ApplyDao {
	
	private Properties prop = new Properties();
	public ApplyDao() {
		String fileName = ApplyDao.class.getResource("/sql/trainerapply/apply-query.properties").getPath();
		try {
			prop.load(new FileReader(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	//승인요청 목록조회용 메소드
	public ArrayList<Apply> selectList(Connection con, String userId) {
		
		ArrayList<Apply> list = null;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String query = prop.getProperty("selectList");
		System.out.println("조회할 userId (dao) : " + userId);
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, userId);
			list = new ArrayList<Apply>();
			rset = pstmt.executeQuery();
			
			
			while(rset.next()) {
				
				Apply apply = new Apply();
				apply.setTrainerId(rset.getString("TRAINER_ID"));
				apply.setApplyManageCode(rset.getString("APPLY_MANAGECODE"));
				apply.setApplyStatus(rset.getString("APPLY_STATUS"));
				apply.setManagerId(rset.getString("MANAGER_ID"));
				apply.setReplyDate(rset.getString("REPLY_DATE"));
				apply.setRejectReason(rset.getString("REJECT_REASON"));
				apply.setApplyDate(rset.getString("APPLY_DATE"));
				list.add(apply);
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		
		return list;
	}

	//승인추가용 메소드
	public int insertApply(Connection con, String userId) {
		
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("insertApply");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, userId);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}
	
	
	//모든 결과 조회
	public ArrayList<Apply> selectListAll(Connection con) {

		ArrayList<Apply> list = null;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String query = prop.getProperty("selectListAll");
		
		try {
			pstmt = con.prepareStatement(query);
			list = new ArrayList<Apply>();
			rset = pstmt.executeQuery();
			
			
			while(rset.next()) {
				
				Apply apply = new Apply();
				apply.setTrainerId(rset.getString("TRAINER_ID"));
				apply.setApplyManageCode(rset.getString("APPLY_MANAGECODE"));
				apply.setApplyStatus(rset.getString("APPLY_STATUS"));
				apply.setManagerId(rset.getString("MANAGER_ID"));
				apply.setReplyDate(rset.getString("REPLY_DATE"));
				apply.setRejectReason(rset.getString("REJECT_REASON"));
				apply.setApplyDate(rset.getString("APPLY_DATE"));
				list.add(apply);
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		
		return list;
		
	}
	
	//관리자용 승인처리 메소드
	public int updateApply(Connection con, Apply apply) {
		
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("updateApply");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, "승인");
			pstmt.setString(2, apply.getRejectReason());
			pstmt.setString(3, apply.getApplyManageCode());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	//관리자용 거절처리 메소드
	public int rejectApply(Connection con, Apply apply) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("updateApply");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, "거절");
			pstmt.setString(2, apply.getRejectReason());
			pstmt.setString(3, apply.getApplyManageCode());
			
			result = pstmt.executeUpdate();
			System.out.println("거절처리 result : "  + result);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

}
