package com.omg.jsp.followerDiet.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.omg.jsp.followerDiet.model.dao.FoodComponentDao;
import com.omg.jsp.followerDiet.model.vo.FoodComponent;
import static com.omg.jsp.common.JDBCTemplate.*;

public class FoodComponentService {

	public ArrayList<FoodComponent> selectList(){
		Connection con=getConncection();
		
		ArrayList<FoodComponent> list = new FoodComponentDao().selectList(con);
		close(con);
		
		return list;
	}
}
