package com.omg.jsp.ohmoney.model.dao;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;
import static com.omg.jsp.common.JDBCTemplate.*;
import com.omg.jsp.member.model.dao.MemberDao;
import com.omg.jsp.ohmoney.model.vo.OhMoney;

public class OhMoneyDao {
	private Properties prop = new Properties();
	public OhMoneyDao() {
		String fileName = MemberDao.class.getResource("/sql/ohmoney/ohmoney-query.properties").getPath();
		
		try {
			prop.load(new FileReader(fileName));
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public OhMoney checkMoney(Connection con, String userId) {
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		OhMoney resultMoney = new OhMoney();
		
		String query = prop.getProperty("checkMoney");
		
		try {
			pstmt = con.prepareStatement(query);
			
			pstmt.setString(1, userId);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				resultMoney.setUserId(rset.getString("MEMBER_ID"));
				resultMoney.setOhmoneyType(rset.getString("OMONEY_TYPE"));
				resultMoney.setOhmoneyTime(rset.getString("OMONEY_TIME"));
				resultMoney.setOhmoneyDate(rset.getString("OMONEY_DATE"));
				resultMoney.setOhmoneyMean(rset.getString("OMONEY_MEANS"));
				resultMoney.setOhmoneyAmount(rset.getString("OMONEY_AMOUNT"));
				resultMoney.setManagerId(rset.getString("MANAGER_ID"));
				resultMoney.setIsRefund(rset.getString("REFUND_YN"));
				resultMoney.setContent(rset.getString("OMONEY_CONTENT"));
				resultMoney.setBalance(rset.getInt("BALANCE"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		
		return resultMoney;
	}

}
