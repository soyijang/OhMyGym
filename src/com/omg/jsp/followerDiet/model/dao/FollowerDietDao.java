package com.omg.jsp.followerDiet.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.omg.jsp.followerDiet.model.vo.FollowerDiet;
import static com.omg.jsp.common.JDBCTemplate.*;

public class FollowerDietDao {
	
	private Properties prop = new Properties();
	
	public FollowerDietDao() {
		String fileName = FollowerDietDao.class.getResource("/sql/followerDiet/followerDiet-query.properties").getPath();
		
		try {
			prop.load(new FileReader(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	
	}
	
	public ArrayList<FollowerDiet> selectList(Connection con, String memberId) {
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<FollowerDiet> list =  null;
		
		String query = prop.getProperty("selectList");
		
		try {
			
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, memberId);
			rset = pstmt.executeQuery();
			list = new ArrayList<FollowerDiet>();
			
			while(rset.next()) {
				
				FollowerDiet fd = new FollowerDiet();
				
				fd.setIntakeVolume(rset.getInt("INTAKE_VOLUME"));
				fd.setIntakeDate(rset.getString("INTAKE_DATE"));
				fd.setIntekeTime(rset.getString("INTAKE_TIME"));
				fd.setDietManageCode(rset.getString("DIET_MANAGECODE"));
				fd.setMemberId(rset.getString("MEMBER_ID"));
				fd.setFoodCode(rset.getString("FOOD_CODE"));
				fd.setFoodName(rset.getString("FOOD_NAME"));
				fd.setFoodCalorie(rset.getString("FOOD_CALORIE"));
				fd.setFoodCarbohydrate(rset.getString("FOOD_CARBOHYDRATE"));
				fd.setFoodProtein(rset.getString("FOOD_PROTEIN"));
				fd.setFoodFat(rset.getString("FOOD_FAT"));
				fd.setFoodWater(rset.getString("FOOD_WATER"));
				
				list.add(fd);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		
		System.out.println("dao 식단 리스트 : " + list);
		
		return list;
	}

	
	
	public int insertFollowerDiet(Connection con, FollowerDiet fd) {
		
		PreparedStatement pstmt = null;
		
		int result=0;
		
		String query = prop.getProperty("insertFollowerDiet");
		
		try {
			pstmt=con.prepareStatement(query);
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
		
	}
	
	
	//추가용
	public int insertdiet(Connection con, FollowerDiet insertdiet) {
		
		PreparedStatement pstmt = null;
		int result = 0;
		System.out.println("insertdiet.getIntakeDate():" + insertdiet.getIntakeDate());
		String query = prop.getProperty("insertDiet");
		try {
			pstmt = con.prepareStatement(query);
			
			
			pstmt.setInt(1, insertdiet.getIntakeVolume());
			pstmt.setString(2, insertdiet.getIntakeDate());
			pstmt.setString(3, insertdiet.getIntekeTime());
			pstmt.setString(4, insertdiet.getMemberId());
			pstmt.setString(5, insertdiet.getFoodName());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
		
	}
	
	//식단 삭제용
	public int deleteDiet(Connection con, String savedietCode) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		
		String query = prop.getProperty("deleteDiet");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, savedietCode);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}
	
	
	
	
}
