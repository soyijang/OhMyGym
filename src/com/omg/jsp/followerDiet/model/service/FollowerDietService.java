package com.omg.jsp.followerDiet.model.service;

import static com.omg.jsp.common.JDBCTemplate.*;
import com.omg.jsp.followerDiet.model.dao.FollowerDietDao;
import com.omg.jsp.followerDiet.model.vo.FollowerDiet;

import java.sql.Connection;
import java.util.ArrayList;

public class FollowerDietService {
	
	public ArrayList<FollowerDiet> selectList(){
		
		Connection con = getConncection();
		
		ArrayList<FollowerDiet> list = new FollowerDietDao().selectList(con);
		
		close(con);
		
		return list;
		
	}

}
