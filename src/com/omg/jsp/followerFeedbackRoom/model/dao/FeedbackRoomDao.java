package com.omg.jsp.followerFeedbackRoom.model.dao;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.omg.jsp.followerFeedbackRoom.model.vo.FeedbackRoom;
import com.omg.jsp.member.model.dao.MemberDao;
import static com.omg.jsp.common.JDBCTemplate.*;

public class FeedbackRoomDao {
	
	private Properties prop = new Properties();
	
	public FeedbackRoomDao() {
		
		String fileName = MemberDao.class.getResource("/sql/feedbackRoom/feedbackRoom-query.properties").getPath();
		
		try {
			prop.load(new FileReader(fileName));
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public String selectRequestManageCode(Connection con, String memberId) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String requestManageCode = "";
		
		String query = prop.getProperty("selectRequestManageCode");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, memberId);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				requestManageCode = rset.getString("REQUEST_MANAGECODE");
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		
		return requestManageCode;
	}

	public ArrayList<FeedbackRoom> selectFeedbackList(Connection con, String requestManageCode) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		FeedbackRoom feedbackroom = null;
		ArrayList<FeedbackRoom> feedbackList = new ArrayList<FeedbackRoom>();
		
		String query = prop.getProperty("selecrFeedbackList");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, requestManageCode);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				feedbackroom = new FeedbackRoom();
				
				feedbackroom.setFeedbackContent(rset.getString("FEEDBACK_CONTENT"));
				feedbackroom.setFeedbackFileCode(rset.getString("FEEDBACK_FILECODE"));
				feedbackroom.setFeedbackTitle(rset.getString("FEEDBACK_TITLE"));
				feedbackroom.setFeedbackUploadDate(rset.getString("FEEDBACK_UPLOADDATE"));
				feedbackroom.setFeedbackUploadTime(rset.getString("FEEDBACK_UPLOADTIME"));
				feedbackroom.setFollowerVideoCode(rset.getString("FOLLOWER_VIDEO_CODE"));
				feedbackroom.setRequestManageCode(rset.getString("REQUEST_MANAGECODE"));
				
				feedbackList.add(feedbackroom);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		
		return feedbackList;
	}

	public int insertFeedback(Connection con, String feedbackTitle, String feedbackContent, String filecode, String requestManageCode) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("insertFeedback");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, filecode);
			pstmt.setString(2, requestManageCode);
			pstmt.setString(3, feedbackTitle);
			pstmt.setString(4, feedbackContent);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public FeedbackRoom selectOneFeedback(Connection con, String followerVideoCode) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		FeedbackRoom feedback = new FeedbackRoom();
		
		String query = prop.getProperty("selectOneFeedback");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, followerVideoCode);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				feedback.setFeedbackContent(rset.getString("FEEDBACK_CONTENT"));
				feedback.setFeedbackFileCode(rset.getString("FEEDBACK_FILECODE"));
				feedback.setFeedbackTitle(rset.getString("FEEDBACK_TITLE"));
				feedback.setFeedbackUploadDate(rset.getString("FEEDBACK_UPLOADDATE"));
				feedback.setFeedbackUploadTime(rset.getString("FEEDBACK_UPLOADTIME"));
				feedback.setFollowerVideoCode(rset.getString("FOLLOWER_VIDEO_CODE"));
				feedback.setRequestManageCode(rset.getString("REQUEST_MANAGECODE"));
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		
		return feedback;
	}

}
