package com.omg.jsp.ohmoney.model.dao;

import static com.omg.jsp.common.JDBCTemplate.close;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

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
			pstmt.setString(2, userId);
			
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
				resultMoney.setNofundBal(rset.getInt("NOFUNDBAL"));
				resultMoney.setRefundBal(rset.getInt("REFUNDBAL"));
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

	public int updateMoney(Connection con, OhMoney userOhMoney) {
		
		PreparedStatement pstmt = null;
		
		int result = 0;
		
		String query = prop.getProperty("updateMoney");
		
		try {
			pstmt = con.prepareStatement(query);
			
			pstmt.setString(1, userOhMoney.getUserId());
			pstmt.setString(2, userOhMoney.getOhmoneyType());
			pstmt.setString(3, userOhMoney.getOhmoneyAmount());
			pstmt.setString(4, userOhMoney.getContent());
			pstmt.setString(5, userOhMoney.getOhmoneyMean());
			pstmt.setInt(6, userOhMoney.getNofundBal());
			pstmt.setInt(7, userOhMoney.getRefundBal());
			pstmt.setInt(8, userOhMoney.getBalance());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public ArrayList<OhMoney> listOhMoney(Connection con, String userId) {
	
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		ArrayList<OhMoney> list = new ArrayList<OhMoney>();
		
		String query = prop.getProperty("listOhMoney");
		
		try {
			pstmt = con.prepareStatement(query);
			
			pstmt.setString(1, userId);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				OhMoney moneyData = new OhMoney();
				
				moneyData.setManageCode(rset.getString("OMONEY_MANAGECODE"));
				moneyData.setOhmoneyDate(rset.getString("OMONEY_DATE"));
				moneyData.setOhmoneyType(rset.getString("OMONEY_TYPE"));
				moneyData.setContent(rset.getString("OMONEY_CONTENT"));
				moneyData.setOhmoneyAmount(rset.getString("OMONEY_AMOUNT"));
				moneyData.setBalance(rset.getInt("BALANCE"));

				list.add(moneyData);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		
		return list;
	}

}
