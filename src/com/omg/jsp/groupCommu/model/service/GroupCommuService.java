package com.omg.jsp.groupCommu.model.service;

import static com.omg.jsp.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.HashMap;

import com.omg.jsp.groupCommu.model.dao.GroupCommuDao;
import com.omg.jsp.groupCommu.model.vo.GroupComment;
import com.omg.jsp.groupCommu.model.vo.GroupCommuPost;

public class GroupCommuService {

	public int insertPost(GroupCommuPost requestPost, String roomId) {

		Connection con = getConncection();
		
		int result = new GroupCommuDao().insertPost(con, requestPost, roomId);
		if(result>0) {
			commit(con);
			String insertPostNum = new GroupCommuDao().selectCurrval(con);
			requestPost.setGroupBoardNum(insertPostNum);
		} else {
			rollback(con);
		}
		
		close(con);
		return result;
	}
	
	public ArrayList<GroupCommuPost> selectPost(String roomId) {
		Connection con = getConncection();
		
		ArrayList<GroupCommuPost> postList = new GroupCommuDao().selectPost(con, roomId);
		
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

	public boolean checkLike(String likedId, String postId) {
		Connection con = getConncection();
		
		boolean result = new GroupCommuDao().checkLike(con, likedId, postId);
		
		close(con);
		
		return result;
	}

	public int addLike(String likedId, String postId) {
		Connection con = getConncection();
		
		int result = new GroupCommuDao().addLike(con, likedId, postId);
		

		
		if(result > 0) {
			commit(con);
			int result2 = new GroupCommuDao().countUpLike(con, postId);
				if(result2 > 0) {
					commit(con);
				} else {
					rollback(con);
				}
		} else {
			rollback(con);
		}
		
		close(con);
		
		return result;
	}

	public int removeLike(String likedId, String postId) {
		Connection con = getConncection();
		
		int result = new GroupCommuDao().removeLike(con, likedId, postId);
		
		if(result > 0) {
			commit(con);
			int result2 = new GroupCommuDao().countDownLike(con, postId);
				if(result2 > 0) {
					commit(con);
				} else {
					rollback(con);
				}
		} else {
			rollback(con);
		}
		
		close(con);
		
		return result;
	}

	public int selectLike(String postId) {
		Connection con = getConncection();
		
		int resultNumber = new GroupCommuDao().selectLike(con, postId);
		
		close(con);
		
		return resultNumber;
	}

	public ArrayList<HashMap<String, Object>> selectGroupList() {
		Connection con = getConncection();
		
		ArrayList<HashMap<String, Object>> list = new GroupCommuDao().selectGroupList(con);
		
		close(con);
		
		return list;
	}

	public int deletePost(String postId) {
		Connection con = getConncection();
		
		int result = new GroupCommuDao().deletePost(con, postId);
	
		if(result > 0) {
			commit(con);
		} else {
			rollback(con);
		} 
		close(con);
		return result;
	}

}
