package com.omg.jsp.ohmoney.model.dao;

import static com.omg.jsp.common.JDBCTemplate.close;

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

import com.omg.jsp.common.PageInfo;
import com.omg.jsp.member.model.dao.MemberDao;
import com.omg.jsp.ohmoney.model.vo.OhMoney;
import com.omg.jsp.ohmoney.model.vo.ReFundOhMoney;

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
				resultMoney.setNofundBal(rset.getInt("NOFUNDBAL"));
				resultMoney.setRefundBal(rset.getInt("REFUNDBAL"));
				resultMoney.setBalance(rset.getInt("BALANCE"));
			}
			
			System.out.println(resultMoney.getNofundBal());
			System.out.println(resultMoney.getBalance());
			
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

	public int applyRefund(Connection con, ReFundOhMoney refund) {
		
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("applyRefund");
		
		try {
			pstmt = con.prepareStatement(query);
			
			pstmt.setString(1, refund.getMemberId());
			pstmt.setInt(2, refund.getMoney());
			
			result = pstmt.executeUpdate();
					
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		
		
		return result;
	}

	public ArrayList<ReFundOhMoney> selectRefundList(Connection con, String userId) {
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		ArrayList<ReFundOhMoney> refundList = null;
		
		String query = prop.getProperty("selectRefundList");
		
		try {
			pstmt = con.prepareStatement(query);
			
			pstmt.setString(1, userId);
			
			rset = pstmt.executeQuery();
			
			refundList = new ArrayList<ReFundOhMoney>();
			
			while(rset.next()) {
				ReFundOhMoney refund = new ReFundOhMoney();
				
				refund.setRefundNum(rset.getString("RETURN_NUM"));
				refund.setRefundState(rset.getString("RETURN_STATE"));
				refund.setMoney(rset.getInt("OHMONEY_VALUE"));
				refund.setMemberId(rset.getString("MEMBER_ID"));
				refund.setManagerId(rset.getString("MANAGER_ID"));
				refund.setFileCode(rset.getString("FILE_CODE"));
				refund.setRefundDate(rset.getString("RETURN_DATE"));
				
				refundList.add(refund);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		return refundList;
	}

	public ArrayList<OhMoney> manageListOhMoney(Connection con, PageInfo pi) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		ArrayList<OhMoney> list = new ArrayList<OhMoney>();
		
		String query = prop.getProperty("listOhMoneyPage");
		
		try {
			pstmt = con.prepareStatement(query);
	
			int startRow = (((pi.getMaxPage()-1) - (pi.getCurrentPage() -1)) * pi.getLimit() + (pi.getListCount() % pi.getLimit()));
			
			int endRow =  startRow - pi.getLimit() + 1;

			pstmt.setInt(1, endRow);
			pstmt.setInt(2, startRow);		
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				OhMoney moneyData = new OhMoney();
				
				moneyData.setRowNum(rset.getInt("RNUM"));
				moneyData.setManageCode(rset.getString("OMONEY_MANAGECODE"));
				moneyData.setOhmoneyDate(rset.getString("OMONEY_DATE"));
				moneyData.setOhmoneyType(rset.getString("OMONEY_TYPE"));
				moneyData.setContent(rset.getString("OMONEY_CONTENT"));
				moneyData.setOhmoneyAmount(rset.getString("OMONEY_AMOUNT"));
				moneyData.setManagerId(rset.getString("MANAGER_ID"));
				moneyData.setOhmoneyMean(rset.getString("OMONEY_MEANS"));
				moneyData.setIsRefund(rset.getString("REFUND_YN"));
				moneyData.setUserId(rset.getString("MEMBER_ID"));
				moneyData.setOhmoneyTime(rset.getString("OMONEY_TIME"));
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

	public ArrayList<ReFundOhMoney> manageListRefund(Connection con, PageInfo pi) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		ArrayList<ReFundOhMoney> list = new ArrayList<ReFundOhMoney>();
		
		String query = prop.getProperty("listReturnMoneyPage");
		
		try {
			pstmt = con.prepareStatement(query);
			
			int startRow = (((pi.getMaxPage()-1) - (pi.getCurrentPage() -1)) * pi.getLimit() + (pi.getListCount() % pi.getLimit()));
			
			int endRow =  startRow - pi.getLimit() + 1;

			pstmt.setInt(1, endRow);
			pstmt.setInt(2, startRow);		
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				ReFundOhMoney moneyData = new ReFundOhMoney();
				
				moneyData.setRowNum(rset.getInt("RNUM"));
				moneyData.setRefundNum(rset.getString("RETURN_NUM"));
				moneyData.setMemberId(rset.getString("MEMBER_ID"));
				moneyData.setMemberName(rset.getString("MEMBER_NAME"));
				moneyData.setManagerId(rset.getString("MANAGER_ID"));
				moneyData.setMoney(rset.getInt("OHMONEY_VALUE"));
				moneyData.setRefundDate(rset.getString("RETURN_DATE"));
				moneyData.setRefundState(rset.getString("RETURN_STATE"));
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

	public int refundSubmit(Connection con, ReFundOhMoney update) {
		
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("refundSubmit");
		
		try {
			pstmt = con.prepareStatement(query);
			
			pstmt.setString(1, update.getManagerId());
			pstmt.setString(2, update.getFileCode());
			pstmt.setString(3, update.getRefundNum());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public int checkOkReturn(Connection con, String returnNum) {
		
		PreparedStatement pstmt = null;
		
		int result = 0;
		
		String query = prop.getProperty("checkOkReturn");
		
		try {
			pstmt = con.prepareStatement(query);
			
			pstmt.setString(1, returnNum);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public int refundUpdate(Connection con, String getId, OhMoney userOhMoney) {
		
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("refundUpdate");
		
		try {
			pstmt = con.prepareStatement(query);
			
			pstmt.setString(1, userOhMoney.getUserId());
			pstmt.setString(2, userOhMoney.getOhmoneyType());
			pstmt.setString(3, userOhMoney.getOhmoneyAmount());
			pstmt.setString(4, userOhMoney.getManagerId());
			pstmt.setString(5, userOhMoney.getContent());
			pstmt.setString(6, userOhMoney.getOhmoneyMean());
			pstmt.setInt(7, userOhMoney.getNofundBal());
			pstmt.setInt(8, userOhMoney.getRefundBal());
			pstmt.setInt(9, userOhMoney.getBalance());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}

	public OhMoney searchUser(Connection con, String searchId) {
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = prop.getProperty("searchUser");
		OhMoney resultUser = null;
		try {
			pstmt = con.prepareStatement(query);
			
			pstmt.setString(1, searchId);
			
			rset = pstmt.executeQuery();
			if(rset.next()) {
				resultUser = new OhMoney();
	
				resultUser.setBalance(rset.getInt("BALANCE"));
				resultUser.setUserId(rset.getString("MEMBER_ID"));
				resultUser.setUserName(rset.getString("MEMBER_NAME"));
				resultUser.setNofundBal(rset.getInt("NOFUNDBAL"));
				resultUser.setRefundBal(rset.getInt("REFUNDBAL"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return resultUser;
	}

	public int directUser(Connection con, OhMoney inputOhMoney) {
		
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("updateMoney");
		
		try {
			pstmt = con.prepareStatement(query);
			
			pstmt.setString(1, inputOhMoney.getUserId());
			pstmt.setString(2, "수기지급");
			pstmt.setString(3, inputOhMoney.getOhmoneyAmount());
			pstmt.setString(4, inputOhMoney.getContent());
			pstmt.setString(5, "자동");
			pstmt.setInt(6, inputOhMoney.getNofundBal());
			pstmt.setInt(7, inputOhMoney.getRefundBal());
			pstmt.setInt(8, inputOhMoney.getBalance());
			
			result = pstmt.executeUpdate();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public ArrayList<OhMoney> listDirectMoney(Connection con, PageInfo pi) {
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		ArrayList<OhMoney> directList = null;
		
		String query = prop.getProperty("listDirectMoneyPage");
		
		try {
			pstmt = con.prepareStatement(query);
			
			int startRow = (((pi.getMaxPage()-1) - (pi.getCurrentPage() -1)) * pi.getLimit() + (pi.getListCount() % pi.getLimit()));
			
			int endRow =  startRow - pi.getLimit() + 1;
			
			pstmt.setInt(1, endRow);
			pstmt.setInt(2, startRow);		
			rset = pstmt.executeQuery();

			directList = new ArrayList<OhMoney>();
			
			while(rset.next()) {
				OhMoney moneyData = new OhMoney();
				
				moneyData.setRowNum(rset.getInt("RNUM"));
				moneyData.setManageCode(rset.getString("OMONEY_MANAGECODE"));
				moneyData.setUserId(rset.getString("MEMBER_ID"));
				moneyData.setOhmoneyAmount(rset.getString("OMONEY_AMOUNT"));
				moneyData.setOhmoneyDate(rset.getString("OMONEY_DATE"));
				moneyData.setOhmoneyTime(rset.getString("OMONEY_TIME"));
				moneyData.setManagerId(rset.getString("MANAGER_ID"));
				moneyData.setContent(rset.getString("OMONEY_CONTENT"));
				moneyData.setIsRefund(rset.getString("REFUND_YN"));
				
				directList.add(moneyData);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		
		return directList;
	}

	public int rejectReturn(Connection con, String managerId, String returnNum) {
		
		PreparedStatement pstmt = null;
		
		int result = 0;
		
		String query = prop.getProperty("rejectReturn");
				
		try {
			pstmt = con.prepareStatement(query);
			
			pstmt.setString(1, managerId);
			pstmt.setString(2, returnNum);

			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
			
		return result;
	}

	public int getDirectListCount(Connection con) {

		Statement stmt = null;
		ResultSet rset = null;
		
		int listCount = 0;
		
		String query = prop.getProperty("directListCount");
		
		try {
			stmt = con.createStatement();
			rset = stmt.executeQuery(query);
			
			if(rset.next()) {
				listCount = rset.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(stmt);
			close(rset);
		}
		
		return listCount;
	}

	public int getListCount(Connection con) {
		Statement stmt = null;
		ResultSet rset = null;
		
		int listCount = 0;
		
		String query = prop.getProperty("listCount");
		
		try {
			stmt = con.createStatement();
			rset = stmt.executeQuery(query);
			
			if(rset.next()) {
				listCount = rset.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(stmt);
			close(rset);
		}
		
		return listCount;
	}

	public int getReturnCount(Connection con) {
		Statement stmt = null;
		ResultSet rset = null;
		
		int listCount = 0;
		
		String query = prop.getProperty("returnListCount");
		
		try {
			stmt = con.createStatement();
			rset = stmt.executeQuery(query);
			
			if(rset.next()) {
				listCount = rset.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(stmt);
			close(rset);
		}
		
		return listCount;
	}

}
