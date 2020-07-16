package com.omg.jsp.groupCommu.model.service;

import static com.omg.jsp.common.JDBCTemplate.close;
import static com.omg.jsp.common.JDBCTemplate.commit;
import static com.omg.jsp.common.JDBCTemplate.getConncection;
import static com.omg.jsp.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import com.omg.jsp.groupCommu.model.dao.GroupCommuDao;
import com.omg.jsp.groupCommu.model.vo.GroupComment;
import com.omg.jsp.groupCommu.model.vo.GroupCommuPost;

public class GroupCommuService {

	public int insertPost(GroupCommuPost requestPost) {

		Connection con = getConncection();
		
		int result = new GroupCommuDao().insertPost(con, requestPost);
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
	
	public ArrayList<GroupCommuPost> selectPost() {
		Connection con = getConncection();
		
		ArrayList<GroupCommuPost> postList = new GroupCommuDao().selectPost(con);
		
		close(con);
		
		return postList;
	}
	
	public int insertComment(GroupComment comment) {
		
		Connection con = getConncection();
		
		int result = new GroupCommuDao().insertComment(con, comment);
		
		if(result > 0) {
			commit(con);
		} else {
			rollback(con);
		}
		
		close(con);
		
		return result;
	}

	public ArrayList<GroupComment> selectComment() {
		Connection con = getConncection();
		
		ArrayList<GroupComment> commentList = new GroupCommuDao().selectComment(con);
		
		close(con);
		
		return commentList;
	}

}
