package com.omg.jsp.trainerSalary.model.dao;

import static com.omg.jsp.common.JDBCTemplate.close;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.omg.jsp.trainerSalary.model.vo.Salary;

public class SalaryDao {
	
	private Properties prop = new Properties();
	public SalaryDao() {
		String fileName = SalaryDao.class.getResource("/sql/trainersalary/salary-query.properties").getPath();
		try {
			prop.load(new FileReader(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	//모든결과조회
	public ArrayList<Salary> selectListAll(Connection con) {
		

		ArrayList<Salary> list = null;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String query = prop.getProperty("selectListAll");
		
		try {
			pstmt = con.prepareStatement(query);
			list = new ArrayList<Salary>();
			rset = pstmt.executeQuery();
			
			
			while(rset.next()) {
				
				Salary salary = new Salary();
				
				salary.setSalaryManageCode(rset.getString("SAL_MANAGECODE"));
				salary.setSalaryMonth(rset.getString("SAL_MONTH"));
				salary.setTrainingTimes(rset.getInt("TRAINING_TIMES"));
				salary.setPayYN(rset.getString("PAY_YN"));
				salary.setTrainerId(rset.getString("MEMBER_ID"));
				salary.setLevelCode(rset.getString("LEVEL_CODE"));
				salary.setManagerId(rset.getString("MANAGER_ID"));
				salary.setLevelName(rset.getString("LEVEL_NAME"));
				salary.setLevelFee(rset.getInt("LEVEL_FEE"));
				
				list.add(salary);
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		
		return list;
	}

	//정산완료처리용 메소드
	public int updateOne(Connection con, String managecode) {
		
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("updateSalary");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, managecode);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	//조회된 정산처리내용
	public ArrayList<Salary> selectListOne(Connection con, String userId) {
		
		ArrayList<Salary> list = null;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String query = prop.getProperty("selectList");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, userId);
			list = new ArrayList<Salary>();
			rset = pstmt.executeQuery();
			
			
			while(rset.next()) {
				
				Salary salary = new Salary();
				
				salary.setSalaryManageCode(rset.getString("SAL_MANAGECODE"));
				salary.setSalaryMonth(rset.getString("SAL_MONTH"));
				salary.setTrainingTimes(rset.getInt("TRAINING_TIMES"));
				salary.setPayYN(rset.getString("PAY_YN"));
				salary.setTrainerId(rset.getString("MEMBER_ID"));
				salary.setLevelCode(rset.getString("LEVEL_CODE"));
				salary.setManagerId(rset.getString("MANAGER_ID"));
				salary.setLevelName(rset.getString("LEVEL_NAME"));
				salary.setLevelFee(rset.getInt("LEVEL_FEE"));
				
				list.add(salary);
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		
		return list;
		
	}

}
