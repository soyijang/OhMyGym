package com.omg.jsp.followerDiet.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;

import com.omg.jsp.followerDiet.model.vo.FoodComponent;
import static com.omg.jsp.common.JDBCTemplate.*;

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
	

	public ArrayList<FoodComponent> selectList(Connection con) {
		
		ArrayList<FoodComponent> list = null;
		Statement stmt = null;
		ResultSet rset = null;
		String query = prop.getProperty("selectList");
		
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
