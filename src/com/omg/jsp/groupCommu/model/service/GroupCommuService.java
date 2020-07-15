package com.omg.jsp.groupCommu.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.omg.jsp.groupCommu.model.dao.GroupCommuDao;
import com.omg.jsp.groupCommu.model.vo.GroupCommuPost;

import static com.omg.jsp.common.JDBCTemplate.*;

public class GroupCommuService {

	public int insertPost(GroupCommuPost requestPost) {

		Connection con = getConncection();
		
		int result = new GroupCommuDao().insertReply(con, requestPost);
		//ArrayList<GroupCommuPost> replyList = new GroupCommuDao().selectPostList(con);
		
		if(result>0) {
			System.out.println("커어밋");
			commit(con);
		} else {
			rollback(con);
		}
		
		close(con);
		return result;
	}
	
	public ArrayList<GroupCommuPost> selectOneReply() {
		Connection con = getConncection();
		
		ArrayList<GroupCommuPost> replyList = new GroupCommuDao().selectPostList(con);
		
		close(con);
		
		return replyList;
	}

}
