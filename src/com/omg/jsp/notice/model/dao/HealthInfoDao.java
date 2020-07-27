package com.omg.jsp.notice.model.dao;

import static com.omg.jsp.common.JDBCTemplate.close;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;

import com.omg.jsp.notice.model.vo.HealthInfo;
import com.omg.jsp.notice.model.vo.Notice;


public class HealthInfoDao {

	private Properties prop = new Properties();

	public HealthInfoDao() {

		String fileName = HealthInfoDao.class.getResource("/sql/notice/HealthInfo-query.properties").getPath();

		try {
			prop.load(new FileReader(fileName));

		} catch (IOException e) {
			e.printStackTrace();
		}

	}
	
	public ArrayList<HealthInfo> selectList(Connection con) {
		

		ArrayList<HealthInfo> list = null;
		Statement stmt = null;
		ResultSet rset = null;
		String query = prop.getProperty("selectList");

		try {
			stmt = con.createStatement();
			rset = stmt.executeQuery(query);

			list = new ArrayList<HealthInfo>();

			while (rset.next()) {
				HealthInfo n = new HealthInfo();

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
		} finally {
			close(rset);
			close(stmt);

		}

		return list;
	}

	public int insertHealthInfo(Connection con, HealthInfo newHealthInfo) {
		
		PreparedStatement pstmt = null;

		int result = 0;

		String query = prop.getProperty("insertNotice");

		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, newHealthInfo.getWritedate());
			pstmt.setString(2, newHealthInfo.getBoardContent());
			pstmt.setString(3, newHealthInfo.getBoardCategory());
			pstmt.setString(4, newHealthInfo.getManagerId());
			pstmt.setString(5, newHealthInfo.getBoardTitle());
			pstmt.setString(6, newHealthInfo.getStatus());

			result = pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}

		return result;
	}

	public HealthInfo selectOne(Connection con, int nno) {
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;

		HealthInfo HealthInfo = null;

		String query = prop.getProperty("selectOne");

		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, nno);
			rset = pstmt.executeQuery();

			if (rset.next()) {
				HealthInfo = new HealthInfo();

				HealthInfo.setBoardNum(rset.getString("BOARD_NUM"));
				HealthInfo.setBoardCategory(rset.getString("BOARD_CATEGORY"));
				HealthInfo.setWritedate(rset.getString("WRITE_DATE"));
				HealthInfo.setStatus(rset.getString("BOARD_STATUS"));
				HealthInfo.setBoardTitle(rset.getString("BOARD_TITLE"));
				HealthInfo.setBoardContent(rset.getString("BOARD_CONTENT"));

			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		System.out.println("HealthInfoDao : " + HealthInfo);

		return HealthInfo;
	}

	public int viewCount(Connection con, int nno) {
		
		PreparedStatement pstmt = null;
		int result = 0;

		String query = prop.getProperty("viewCount");

		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, Integer.toString(nno));
			result = pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}

		return result;
	}

	public int updateHealthInfo(Connection con, HealthInfo healthInfo1) {
		
		PreparedStatement pstmt = null;
		int result = 0;

		String query = prop.getProperty("updateNotice");

		System.out.println("query : " + query);
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, healthInfo1.getBoardCategory());
			pstmt.setString(2, healthInfo1.getWritedate());
			pstmt.setString(3, healthInfo1.getStatus());
			pstmt.setString(4, healthInfo1.getBoardTitle());
			pstmt.setString(5, healthInfo1.getBoardContent());
			pstmt.setString(6, healthInfo1.getBoardNum());
			System.out.println("notice2" + healthInfo1.getBoardNum());
			result = pstmt.executeUpdate();

			System.out.println("result : " + result);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}

		return result;

	}

	public HealthInfo deleteHealthInfo(Connection con, int nno) {
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;

		HealthInfo healthInfo = null;

		String query = prop.getProperty("deleteNotice");

		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, nno);
			rset = pstmt.executeQuery();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		System.out.println("delete HealthInfoDao : " + healthInfo);

		return healthInfo;
	}

	public HealthInfo FollowHealthInfoSelectOne(Connection con, int nno) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;

		HealthInfo healthInfo = null;

		String query = prop.getProperty("FollowSelectOne");

		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, nno);
			rset = pstmt.executeQuery();

			if (rset.next()) {

				healthInfo = new HealthInfo();

				healthInfo.setBoardTitle(rset.getString("BOARD_TITLE"));
				healthInfo.setBoardCategory(rset.getString("BOARD_CATEGORY"));
				healthInfo.setWritedate(rset.getString("WRITE_DATE"));
				healthInfo.setWriteTime(rset.getString("WRITE_TIME"));
				healthInfo.setViewCount(rset.getString("VIEW_COUNT"));
				healthInfo.setBoardContent(rset.getString("BOARD_CONTENT"));
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		System.out.println("healthInfoDao selectOne notice : " + healthInfo);
		return healthInfo;
	}

}
