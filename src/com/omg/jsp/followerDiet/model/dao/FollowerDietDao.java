package com.omg.jsp.followerDiet.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
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
	
	public ArrayList<FollowerDiet> selectList(Connection con) {
		
		Statement stmt = null;
		ResultSet rset = null;
		ArrayList<FollowerDiet> list = null;
		
		String query = prop.getProperty("selectList");
		
		try {
			stmt=con.createStatement();
			rset=stmt.executeQuery(query);
			
			list=new ArrayList<FollowerDiet>();
			
			while(rset.next()) {
				
				FollowerDiet fd = new FollowerDiet();
				
				fd.setIntakeVolume(rset.getInt("INTAKE_VOLUME"));
				fd.setIntakeDate(rset.getString("INTAKE_DATE"));
				fd.setIntekeTime(rset.getString("INTAKE_TIME"));
				fd.setDietManageCode(rset.getString("DIET_MANAGECODE"));
				fd.setMemberId(rset.getString("MEMBER_ID"));
				fd.setFoodCode(rset.getString("FOOD_CODE"));
				
				list.add(fd);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(stmt);
			close(rset);
		}
		
		
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
	
	
	
	
	
	
	
}
