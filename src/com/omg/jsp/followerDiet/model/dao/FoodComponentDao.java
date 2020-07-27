package com.omg.jsp.followerDiet.model.dao;

import static com.omg.jsp.common.JDBCTemplate.close;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;

import com.omg.jsp.followerDiet.model.vo.FoodComponent;

public class FoodComponentDao {
	
	private Properties prop=new Properties();
	
	public FoodComponentDao() {

		String fileName = FoodComponentDao.class.getResource("/sql/followerDiet/FoodComponent-query.properties").getPath();
		
		try {
			prop.load(new FileReader(fileName));
			
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	//이름포한된거 조회
	public ArrayList<FoodComponent> selectList(Connection con, String inputname) {
		
		ArrayList<FoodComponent> list = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		System.out.println("dao에 들어온 검색내용: " + inputname);
		String query = prop.getProperty("selectList");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, "%"+inputname+"%");
			list = new ArrayList<FoodComponent>();
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
				FoodComponent f = new FoodComponent();
				
				f.setFoodName(rset.getString("FOOD_NAME"));
				f.setFoodCalorie(rset.getInt("FOOD_CALORIE"));
				f.setFoodCode(rset.getString("FOOD_CODE"));
				f.setFoodCarbohydrate(rset.getInt("FOOD_CARBOHYDRATE"));
				f.setFoodProtein(rset.getInt("FOOD_PROTEIN"));
				f.setFoodFat(rset.getInt("FOOD_FAT"));
				f.setFoodWater(rset.getInt("FOOD_WATER"));
				
				list.add(f);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		System.out.println("FoodComponentDao list : "+list);
		return list;
	}

	//전체조회
	public ArrayList<FoodComponent> selectListAll(Connection con) {
		ArrayList<FoodComponent> list = null;
		Statement stmt = null;
		ResultSet rset = null;
		String query = prop.getProperty("selectListAll");
		
		try {
			stmt=con.createStatement();
			rset=stmt.executeQuery(query);
			
			list = new ArrayList<FoodComponent>();
			
			while(rset.next()) {
				
				FoodComponent f = new FoodComponent();
				
				f.setFoodName(rset.getString("FOOD_NAME"));
				f.setFoodCalorie(rset.getInt("FOOD_CALORIE"));
				f.setFoodCode(rset.getString("FOOD_CODE"));
				f.setFoodCarbohydrate(rset.getInt("FOOD_CARBOHYDRATE"));
				f.setFoodProtein(rset.getInt("FOOD_PROTEIN"));
				f.setFoodFat(rset.getInt("FOOD_FAT"));
				f.setFoodWater(rset.getInt("FOOD_WATER"));
				
				list.add(f);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(stmt);
		}
		System.out.println("FoodComponentDao list : "+list);
		return list;
	}

}
