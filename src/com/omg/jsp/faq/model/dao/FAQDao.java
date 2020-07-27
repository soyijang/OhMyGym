package com.omg.jsp.faq.model.dao;

import static com.omg.jsp.common.JDBCTemplate.*;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;

import com.omg.jsp.faq.model.vo.FAQ;

public class FAQDao {
	
	Properties prop = new Properties();
	
	public FAQDao() {
		String fileName = FAQDao.class.getResource("/sql/FAQ/FAQ-query.properties").getPath();

		try {
			prop.load(new FileReader(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public ArrayList<FAQ> selectList(Connection con) {
		Statement stmt =null;
		ArrayList<FAQ> list = null;
		ResultSet rset = null;

		String query = prop.getProperty("selectList");

		try {
			stmt = con.createStatement();
			rset = stmt.executeQuery(query);

			list = new ArrayList<FAQ>();

			while(rset.next()) {
				FAQ f = new FAQ();
				f.setManagerCode(rset.getString("FAQ_MANAGECODE"));
				f.setCategory(rset.getString("FAQ_CATEGORY"));
				f.setAnswer(rset.getString("FAQ_ANSWER"));
				f.setQuestion(rset.getString("FAQ_QUESTION"));
				f.setManagerId(rset.getString("MANAGER_ID"));
				

				list.add(f);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(stmt);
			close(rset);
		}



		return list;
	}
	
	public int insertFAQ(Connection con, FAQ faq) {
		PreparedStatement pstmt = null;
		int result = 0;

		String query = prop.getProperty("insertFAQ");

		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, faq.getCategory());
			pstmt.setString(2, faq.getAnswer());
			pstmt.setString(3, faq.getQuestion());
			pstmt.setString(4, faq.getManagerId());

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
