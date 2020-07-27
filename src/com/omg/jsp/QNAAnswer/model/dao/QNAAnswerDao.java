package com.omg.jsp.QNAAnswer.model.dao;

import static com.omg.jsp.common.JDBCTemplate.close;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Properties;

import com.omg.jsp.QNAAnswer.model.vo.QNAAnswer;
import com.omg.jsp.qna.model.vo.QNA;


public class QNAAnswerDao {
	
Properties prop = new Properties();
	
	public QNAAnswerDao() {
		String fileName = QNAAnswerDao.class.getResource("/sql/QNAAnswer/QNAAnswer-query.properties").getPath();

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


	public int insertAnswer(Connection con, QNAAnswer qa) {

		
		PreparedStatement pstmt = null;
		int result = 0;

		String query = prop.getProperty("insertAnswer");

		try {
			pstmt = con.prepareStatement(query);
			
			
			pstmt.setString(1, qa.getManagerId());
			pstmt.setString(2, qa.getAnswerTitle());
			pstmt.setString(3, qa.getAnswerContent());
			pstmt.setString(4, qa.getManageCode());
			pstmt.setString(5, qa.getFileCode());
			

			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(pstmt);
		}

		return result;
	}
	
	
	

}
