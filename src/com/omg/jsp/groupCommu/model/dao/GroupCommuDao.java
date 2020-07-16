package com.omg.jsp.groupCommu.model.dao;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;

import com.omg.jsp.groupCommu.model.vo.GroupComment;
import com.omg.jsp.groupCommu.model.vo.GroupCommuPost;
import com.omg.jsp.member.model.dao.MemberDao;
import static com.omg.jsp.common.JDBCTemplate.*;


public class GroupCommuDao {

	private Properties prop = new Properties();
	public GroupCommuDao() {
		String fileName = MemberDao.class.getResource("/sql/groupcommunity/groupCommu-query.properties").getPath();
		
		try {
			prop.load(new FileReader(fileName));
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public int insertPost(Connection con, GroupCommuPost requestPost) {
		
		PreparedStatement pstmt = null;
		
		int result = 0;
		
		String query =prop.getProperty("insertpost");
		
		try {
			pstmt = con.prepareStatement(query);
				
			pstmt.setString(1, "운동");
			pstmt.setString(2, requestPost.getGroupContent());
			pstmt.setString(3, requestPost.getGroupUserId());
			pstmt.setString(4, "follower");
			pstmt.setInt(5, 135);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}
	
	public String selectCurrval(Connection con) {
		
		Statement stmt = null;
		ResultSet rset = null;
		String bid = "";
		
		String query = prop.getProperty("selectCurrval");
		
		try {
			stmt = con.createStatement();
			rset = stmt.executeQuery(query);
			
			
			if(rset.next()) {
				bid =  Integer.toString(rset.getInt("currval"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			
			close(stmt);
			close(rset);
		}
		
		return bid;
	}
	

	public ArrayList<GroupCommuPost> selectPost(Connection con) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		ArrayList<GroupCommuPost> list = null;
		
		String query = prop.getProperty("selectPostList");
		
		try {
			pstmt = con.prepareStatement(query);
			
			pstmt.setInt(1, 135);
			
			rset = pstmt.executeQuery();
			
			list = new ArrayList<GroupCommuPost>();
			
			while(rset.next()) {
				GroupCommuPost post = new GroupCommuPost();
				post.setGroupUserId(rset.getString("MEMBER_ID"));
				post.setGroupContent(rset.getString("GROUP_CONTENT"));
				post.setGroupDate(rset.getString("GROUP_DATE"));
				post.setGroupFileCode(rset.getString("GROUP_FILECODE"));
				post.setGroupType(rset.getString("GROUP_TYPE"));
				post.setGroupDateTime(rset.getString("GROUP_TIME"));
				post.setGroupBoardNum(rset.getString("GROUP_BOARDNUM"));
				list.add(post);
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		
		return list;
	}

	public int insertComment(Connection con, GroupComment comment) {
		PreparedStatement pstmt = null;
		
		int result = 0;
		
		String query =prop.getProperty("insertComment");
		
		try {
			pstmt = con.prepareStatement(query);
				
			pstmt.setString(1,comment.getCommentContent());
			pstmt.setString(2, comment.getGroupBoardNum());
			pstmt.setString(3, comment.getCommentUserId());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public ArrayList<GroupComment> selectComment(Connection con) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		ArrayList<GroupComment> list = null;
		
		String query = prop.getProperty("selectCommentList");
		
		try {
			pstmt = con.prepareStatement(query);
	
			rset = pstmt.executeQuery();
			
			list = new ArrayList<GroupComment>();
			
			while(rset.next()) {
				GroupComment comment = new GroupComment();
				
				comment.setCommentContent(rset.getString("GROUP_COMMENT_CONTENT"));
				comment.setCommentDate(rset.getString("GROUP_COMMNET_DATE"));
				comment.setCommentNum(rset.getString("GROUP_COMMNET_MANAGECODE"));
				comment.setCommentTime(rset.getString("GROUP_COMMENT_TIME"));
				comment.setCommentUserId(rset.getString("MEMBER_ID"));
				comment.setGroupBoardNum(rset.getString("GROUP_BOARDNUM"));
				list.add(comment);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		
		return list;
	}

	public boolean checkLike(Connection con, String likedId, String postId) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		boolean result = true;
		
		String query = prop.getProperty("checkLike");
		
		try {
			pstmt = con.prepareStatement(query);
			
			pstmt.setString(1, postId);
			pstmt.setString(2, likedId);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				result = false;//좋아요가 불가
			} else {
				result = true; //좋아요가 가능
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		
		return result;
	}

	public int addLike(Connection con, String likedId, String postId) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("addLike");
		
		try {
			pstmt = con.prepareStatement(query);
			
			pstmt.setString(1, postId);
			pstmt.setString(2, likedId);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
	}

	public int removeLike(Connection con, String likedId) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("removeLike");
		
		try {
			pstmt = con.prepareStatement(query);
			
			pstmt.setString(1, likedId);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
	}

	public int selectLike(Connection con, String postId) {
		
		PreparedStatement pstmt = null;
		
		ResultSet rset = null;
		
		int resultNum = 0;
		
		String query = prop.getProperty("selectLike");
		
		try {
			pstmt = con.prepareStatement(query);
			
			pstmt.setString(1, postId);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				resultNum += 1;
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		
		return resultNum;
	}

}
