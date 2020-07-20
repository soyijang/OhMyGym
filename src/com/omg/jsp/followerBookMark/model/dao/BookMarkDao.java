package com.omg.jsp.followerBookMark.model.dao;

import java.io.FileReader; 
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;

import com.omg.jsp.followerBookMark.model.vo.BookMark;
import static com.omg.jsp.common.JDBCTemplate.*;


public class BookMarkDao {
	
	private Properties prop = new Properties();
	public BookMarkDao() {
		String fileName = BookMarkDao.class.getResource("/sql/bookmark/bookmark-query.properties").getPath();
		try {
			prop.load(new FileReader(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	// 북마크 목록 조회용 메소드
	public ArrayList<BookMark> selectList(Connection con, String userId) {
		
		ArrayList<BookMark> list = null;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String query = prop.getProperty("selectList");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, userId);
			list = new ArrayList<BookMark>();
			rset = pstmt.executeQuery();
			
			System.out.println("조회할 userId (dao) : " + userId);
			
			while(rset.next()) {
				BookMark bookmark = new BookMark();
				bookmark.setMemberId(rset.getString("MEMBER_ID"));
				bookmark.setBoardNum(rset.getString("BOARD_NUM"));
				bookmark.setBookmarkDate(rset.getString("BOOKMARK_DATE"));
				bookmark.setBookmarkTime(rset.getString("BOOKMARE_TIME"));
				bookmark.setBoardCode(rset.getString("BOARD_CODE"));
				bookmark.setWriteDate(rset.getString("WRITE_DATE"));
				bookmark.setBoardContent(rset.getString("BOARD_CONTENT"));
				bookmark.setBoardTitle(rset.getString("BOARD_TITLE"));
				bookmark.setBoardFileCode(rset.getString("BOARD_FILECODE"));
				
				list.add(bookmark);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		
		return list;
	}

	
	public int deleteBookMark(Connection con, String userId, String boardNum) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		
		String query = prop.getProperty("deleteBookMark");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, boardNum);
			pstmt.setString(2, userId);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

}
