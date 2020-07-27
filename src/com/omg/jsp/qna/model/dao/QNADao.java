package com.omg.jsp.qna.model.dao;

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

import com.omg.jsp.qna.model.vo.QNA;

public class QNADao {
	
	Properties prop = new Properties();
	
	public QNADao() {
		String fileName = QNADao.class.getResource("/sql/QNA/QNA_query.properties").getPath();

		try {
			prop.load(new FileReader(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}


	public int insertQNA(Connection con, QNA q) {
		
		
			PreparedStatement pstmt = null;
			int result = 0;

			String query = prop.getProperty("insertQNA");

			try {
				pstmt = con.prepareStatement(query);
				
				pstmt.setString(1, q.getQuestionTitle());
				pstmt.setString(2, q.getQuestionContent());
				pstmt.setString(3, q.getFileCode());
				pstmt.setString(4, q.getCategory());
				pstmt.setString(5, q.getMemberId());
				

				result = pstmt.executeUpdate();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} finally {
				close(pstmt);
			}

			return result;
		}


	public ArrayList<QNA> selectList(Connection con) {
	
	Statement stmt = null;
	ResultSet rset = null;
	ArrayList<QNA> list = null;
	
	String query = prop.getProperty("selectList");
	
	try {
		stmt = con.createStatement();
		rset = stmt.executeQuery(query);
		
		list = new ArrayList<QNA>();
		
		while(rset.next()) {
            QNA q = new QNA();
            q.setManageCode(rset.getString("QNA_MANAGECODE"));
            q.setCategory(rset.getString("QNA_CATEGORY"));
            q.setQuestionTitle(rset.getString("QNA_QUESTION_TITLE"));
            q.setMemberId(rset.getString("MEMBER_ID"));
            q.setDate(rset.getString("QNA_DATE"));
            q.setQnaYn(rset.getString("QNA_YN"));
            
            list.add(q);
            System.out.println(list);
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} finally {
		close(stmt);
		close(rset);
	}
	
	return list;
	
	
}


	public ArrayList<QNA> selectDetailList(Connection con) {
		Statement stmt = null;
		ResultSet rset = null;
		ArrayList<QNA> list = null;
		
		String query = prop.getProperty("selectList");
		
		try {
			stmt = con.createStatement();
			rset = stmt.executeQuery(query);
			
			list = new ArrayList<QNA>();
			
			while(rset.next()) {
	            QNA q = new QNA();
	            q.setCategory(rset.getString("QNA_CATEGORY"));
	            q.setQuestionTitle(rset.getString("QNA_QUESTION_TITLE"));
	            q.setMemberId(rset.getString("MEMBER_ID"));
	            q.setDate(rset.getString("QNA_DATE"));
	            q.setQnaYn(rset.getString("QNA_YN"));
	            
	            list.add(q);
	            System.out.println(list);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(stmt);
			close(rset);
		}
		
		return list;
	}


	public QNA selectOne(Connection con, String manageCode) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		QNA q = null;
		
		String query = prop.getProperty("selectOne");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, manageCode);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				q = new QNA();
				
				q.setManageCode(rset.getString("QNA_MANAGECODE"));
				q.setCategory(rset.getString("QNA_CATEGORY"));
				q.setQuestionTitle(rset.getString("QNA_QUESTION_TITLE"));
				q.setQuestionContent(rset.getString("QNA_QUESTION_CONTENT"));
				q.setDate(rset.getString("QNA_DATE"));
				q.setMemberId(rset.getString("MEMBER_ID"));
				
				
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			
			close(pstmt);
			close(rset);
		}
		
		
		
		return q;
	}


}
