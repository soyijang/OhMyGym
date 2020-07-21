package com.omg.jsp.notice.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;

import com.omg.jsp.notice.model.vo.Notice;
import static com.omg.jsp.common.JDBCTemplate.*;

public class NoticeDao {
	
	private Properties prop=new Properties();
	
	public NoticeDao() {
		
		String fileName = NoticeDao.class.getResource("/sql/notice/notice-query.properties").getPath();
		
		try {
			prop.load(new FileReader(fileName));
			
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}

	//공지사항 목록 조회용 메소드
	public ArrayList<Notice> selectList(Connection con) {
		
		ArrayList<Notice> list = null;
		Statement stmt = null;
		ResultSet rset = null;
		String query = prop.getProperty("selectList");
		
		try {
			stmt=con.createStatement();
			rset=stmt.executeQuery(query);
			
			
			list = new ArrayList<Notice>();
			
			while(rset.next()) {
				Notice n = new Notice();
				
				n.setBoardCode(rset.getString("BOARD_CODE"));
				n.setBoardNum(rset.getString("BOARD_NUM"));
				n.setWritedate(rset.getString("WRITE_DATE"));
				n.setBoardContent(rset.getString("BOARD_CONTENT"));
				n.setBoardCategory(rset.getString("BOARD_CATEGORY"));
				n.setViewCount(rset.getString("VIEW_COUNT"));
				n.setLikeCount(rset.getString("LIKE_COUNT"));
				n.setBookmarkCount(rset.getString("BOOKMARK_COUNT"));
				n.setBoardFileCode(rset.getString("BOARD_FILECODE"));
				n.setWriteTime(rset.getString("WRITE_TIME"));
				n.setManagerId(rset.getString("MANAGER_ID"));
				n.setBoardTitle(rset.getString("BOARD_TITLE"));
				n.setStatus(rset.getString("BOARD_STATUS"));
				
				
				list.add(n);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(stmt);
			
		}
		
		return list;
	}

	public int insertNotice(Connection con, Notice newNotice) {
		
		PreparedStatement pstmt = null;
		
		int result = 0;
		
		String query = prop.getProperty("insertNorice");
		
		try {
			pstmt=con.prepareStatement(query);
			pstmt.setString(1, newNotice.getBoardCategory());
			pstmt.setString(2, newNotice.getWritedate());
			pstmt.setString(3, newNotice.getStatus());
			pstmt.setString(4, newNotice.getBoardTitle());
			pstmt.setString(5, newNotice.getBoardContent());
			
			result=pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public Notice selectOne(Connection con, int nno) {

		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		Notice notice = null;
		
		String query = prop.getProperty("selectOne");
		
		try {
			pstmt=con.prepareStatement(query);
			pstmt.setInt(1, nno);
			rset=pstmt.executeQuery();
			
			if(rset.next()) {
				notice=new Notice();
				
				notice.setBoardCategory(rset.getString("BOARD_CATEGORY"));
				notice.setWritedate(rset.getString("WRITE_TIME"));
				notice.setStatus(rset.getString("BOARD_STATUS"));
				notice.setBoardTitle(rset.getString("BOARD_TITLE"));
				notice.setBoardContent(rset.getString("BOARD_CONTENT"));
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		System.out.println("NoticeDao : "+notice);
		
		return notice;
	}

	public Notice FollowSelectOne(Connection con, int nno) {

		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		Notice notice = null;
		
		String query = prop.getProperty("FollowSelectOne");
		
		try {
			pstmt=con.prepareStatement(query);
			pstmt.setInt(1, nno);
			rset=pstmt.executeQuery();
			
			if(rset.next()) {
				
				notice = new Notice();
				
				notice.setBoardTitle(rset.getString("BOARD_TITLE"));
				notice.setBoardCategory(rset.getString("BOARD_CATEGORY"));
				notice.setWritedate(rset.getString("WRITE_DATE"));
				notice.setViewCount(rset.getString("VIEW_COUNT"));
				notice.setBoardContent(rset.getString("BOARD_CONTENT"));
			}
			
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		System.out.println("noticeDao selectOne notice : "+notice);
		return notice;
	}

	/*public int viewCount(Connection con, int nno) {
		
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("viewCount");
		
		try {
			pstmt=con.prepareStatement(query);
			pstmt.setInt(1, nno);
			pstmt.setInt(2, nno);
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public int getViewCount(Connection con) {
		
		Statement stmt = null;
		int viewCount = 0;
		ResultSet rset = null;
		
		String query = prop.getProperty("viewCount");
		
		try {
			stmt = con.createStatement();
			rset = stmt.executeQuery(query);

			if (rset.next()) {
				viewCount = rset.getInt(1);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(stmt);
			close(rset);
		}

		return viewCount;
	}
*/

}
