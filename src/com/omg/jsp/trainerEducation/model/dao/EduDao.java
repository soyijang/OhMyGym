package com.omg.jsp.trainerEducation.model.dao;

import static com.omg.jsp.common.JDBCTemplate.close;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Properties;

import com.omg.jsp.member.model.dao.MemberDao;
import com.omg.jsp.member.model.vo.Member;
import com.omg.jsp.trainerEducation.model.vo.TrainerEducation;

public class EduDao {

private Properties prop = new Properties();
	
	public EduDao() {
		String fileName = MemberDao.class.getResource("/sql/trainerInfo/trainerInfo-query.properties").getPath();
				
		try {
			prop.load(new FileReader(fileName));
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	//학력정보 업데이트용
	public int updateEdu(Connection con, TrainerEducation edu) {
		
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("updateTrainerEdu");
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, edu.getEduType());
			pstmt.setString(2, edu.getEduName());
			pstmt.setString(3, edu.getEduEnrollDate());
			pstmt.setString(4, edu.getGraduateDate());
			pstmt.setString(5, edu.getEduState());
			pstmt.setString(6, edu.getEduManageCode());
			
			System.out.println("edu : " + edu);
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			
		}
		
		System.out.println("result : " + result);
		return result;
	}

	//학력정보 추가용
	public int insertEdu(Connection con, TrainerEducation edu, String userId) {
		
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("insertTrainerEdu");
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, edu.getEduType());
			pstmt.setString(2, edu.getEduName());
			pstmt.setString(3, edu.getEduEnrollDate());
			pstmt.setString(4, edu.getGraduateDate());
			pstmt.setString(5, edu.getEduState());
			pstmt.setString(6, userId);
			
			System.out.println("edu : " + edu);
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}

}
