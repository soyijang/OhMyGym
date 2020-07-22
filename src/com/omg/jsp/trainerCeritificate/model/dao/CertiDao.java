package com.omg.jsp.trainerCeritificate.model.dao;

import static com.omg.jsp.common.JDBCTemplate.close;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Properties;

import com.omg.jsp.member.model.dao.MemberDao;
import com.omg.jsp.trainerCeritificate.model.vo.TrainerCeritificate;

public class CertiDao {
	
private Properties prop = new Properties();
	
	public CertiDao() {
		String fileName = MemberDao.class.getResource("/sql/trainerInfo/trainerInfo-query.properties").getPath();
				
		try {
			prop.load(new FileReader(fileName));
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	//자격정보 업데이트용
	public int updateCerti(Connection con, TrainerCeritificate certi) {
		
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("updateTrainerCerti");
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, certi.getCertiDate());	
			pstmt.setString(2, certi.getCertiFileCode());
			pstmt.setString(3, certi.getCertiNum());
			pstmt.setString(4, certi.getMemberId());
			pstmt.setString(5, certi.getCertiCode());
			pstmt.setString(6, certi.getCertiInstitution());
			pstmt.setString(7, certi.getCertiManageCode());
			
			System.out.println("certi : " + certi);
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		System.out.println("result : " + result);
		return result;
	}
	
	//자격정보 추가용
	public int insertCerti(Connection con, TrainerCeritificate certi) {
		
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("insertTrainerCerti");
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, certi.getCertiDate());	
			pstmt.setString(2, certi.getCertiFileCode());
			pstmt.setString(3, certi.getCertiNum());
			pstmt.setString(4, certi.getMemberId());
			pstmt.setString(5, certi.getCertiCode());
			pstmt.setString(6, certi.getCertiInstitution());
			
			System.out.println("certi : " + certi);
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		System.out.println("result : " + result);
		return result;
	}

}






















