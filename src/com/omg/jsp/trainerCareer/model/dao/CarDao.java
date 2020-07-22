package com.omg.jsp.trainerCareer.model.dao;

import static com.omg.jsp.common.JDBCTemplate.close;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Properties;

import com.omg.jsp.member.model.dao.MemberDao;
import com.omg.jsp.trainerCareer.model.vo.TrainerCareer;

public class CarDao {
	
private Properties prop = new Properties();
	
	public CarDao() {
		String fileName = MemberDao.class.getResource("/sql/trainerInfo/trainerInfo-query.properties").getPath();
				
		try {
			prop.load(new FileReader(fileName));
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	//경력정보 업데이트용
	public int updateCar(Connection con, TrainerCareer car) {
		
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("updateTrainerCar");
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, car.getCompName());	
			pstmt.setString(2, car.getEnterDate());
			pstmt.setString(3, car.getResignDate());
			pstmt.setString(4, car.getCareerProof());
			pstmt.setString(5, car.getProofYn());
			pstmt.setString(6, car.getMemberId());
			pstmt.setString(7, car.getCareerType());
			pstmt.setString(8, car.getCareerField());
			pstmt.setString(9, car.getCareerId());
			
			System.out.println("car : " + car);
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		System.out.println("result : " + result);
		return result;
	}
	
	//경력정보 추가용
	public int insertCar(Connection con, TrainerCareer car) {
		
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("insertTrainerCar");
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, car.getCompName());	
			pstmt.setString(2, car.getEnterDate());
			pstmt.setString(3, car.getResignDate());
			pstmt.setString(4, car.getCareerProof());
			pstmt.setString(5, car.getProofYn());
			pstmt.setString(6, car.getMemberId());
			pstmt.setString(7, car.getCareerType());
			pstmt.setString(8, car.getCareerField());
			
			System.out.println("car : " + car);
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}

}














