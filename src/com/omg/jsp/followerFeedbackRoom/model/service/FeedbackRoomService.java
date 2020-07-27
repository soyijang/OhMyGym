package com.omg.jsp.followerFeedbackRoom.model.service;

import static com.omg.jsp.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.HashMap;

import com.omg.jsp.file.model.service.FileService;
import com.omg.jsp.file.model.vo.Files;
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

	public int insertFeedback(String feedbackTitle, String feedbackContent, String filecode, String requestManageCode) {
		Connection con = getConncection();		
		
		int result = new FeedbackRoomDao().insertFeedback(con, feedbackTitle, feedbackContent, filecode, requestManageCode);
		
		if(result > 0) {
			commit(con);
		} else {
			rollback(con);
		}
		
		return result;
	}

	public HashMap<String, Object> selectOneFeedback(String followerVideoCode) {
		Connection con = getConncection();
		
		HashMap<String, Object> feedbackInfo = new HashMap<String, Object>();
		
		FeedbackRoom feedback = new FeedbackRoomDao().selectOneFeedback(con, followerVideoCode);
		
		String filecode = feedback.getFeedbackFileCode();
		Files video = new FileService().selectFeedbackVideo(filecode);
		
		System.out.println("service : " + feedback);
		System.out.println("service : " + video);
		
		feedbackInfo.put("feedback", feedback);
		feedbackInfo.put("video", video);
		
		close(con);
		
		return feedbackInfo;
	}

}
