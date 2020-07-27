package com.omg.jsp.followerFeedbackRoom.model.service;

import static com.omg.jsp.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.omg.jsp.followerFeedbackRoom.model.dao.FeedbackRoomDao;
import com.omg.jsp.followerFeedbackRoom.model.vo.FeedbackRoom;

public class FeedbackRoomService {

	public String selectRequestManageCode(String memberId) {
		Connection con = getConncection();
		
		String requestManageCode = new FeedbackRoomDao().selectRequestManageCode(con, memberId);
		
		close(con);
		
		return requestManageCode;
	}

	public ArrayList<FeedbackRoom> selectFeedbackList(String requestManageCode) {
		Connection con = getConncection();

		ArrayList<FeedbackRoom> feedbackList = new FeedbackRoomDao().selectFeedbackList(con, requestManageCode);
		
		close(con);
		
		return feedbackList;
	}

}
