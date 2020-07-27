package com.omg.jsp.trainerList.model.service;

import static com.omg.jsp.common.JDBCTemplate.close;
import static com.omg.jsp.common.JDBCTemplate.getConncection;

import java.sql.Connection;
import java.util.ArrayList;

import com.omg.jsp.groupCommu.model.dao.GroupCommuDao;
import com.omg.jsp.groupCommu.model.vo.GroupCommuPost;
import com.omg.jsp.member.model.vo.Member;
import com.omg.jsp.trainerList.model.dao.listDao;
import com.omg.jsp.trainerList.model.vo.followerHealth;
import com.omg.jsp.trainerList.model.vo.followerList;

public class listService {

	public ArrayList<followerList> checkList(Member member) {
		Connection con = getConncection();
		
		ArrayList<followerList> list = new listDao().checkList(con, member);
		
		close(con);
		
		return list;
	}

	public followerHealth checkHealth(String userId) {
		Connection con = getConncection();
		
		followerHealth list = new listDao().checkHealth(con, userId);
		
		close(con);
		
		return list;
	}

}
