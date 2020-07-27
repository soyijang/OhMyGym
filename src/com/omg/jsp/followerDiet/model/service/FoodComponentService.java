package com.omg.jsp.followerDiet.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.omg.jsp.followerDiet.model.dao.FoodComponentDao;
import com.omg.jsp.followerDiet.model.vo.FoodComponent;
import static com.omg.jsp.common.JDBCTemplate.*;

public class FoodComponentService {

	//음식이름 포함된 리스트
	public ArrayList<FoodComponent> selectList(String inputname){
		Connection con=getConncection();
		
		ArrayList<FoodComponent> list = new FoodComponentDao().selectList(con, inputname);
		close(con);
		
		return list;
	}
	
	//음식이름 전체리스트 리스트
	public ArrayList<FoodComponent> selectListall(){
		Connection con=getConncection();
		
		ArrayList<FoodComponent> list = new FoodComponentDao().selectListAll(con);
		close(con);
		
		return list;
	}
	
}
