package com.omg.jsp.manager.model.dao;

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

import com.omg.jsp.manager.model.vo.Manager;
import com.omg.jsp.member.model.dao.MemberDao;
import com.omg.jsp.member.model.vo.TrainerInfo;

import static com.omg.jsp.common.JDBCTemplate.*; 

public class ManagerDao {
	
private Properties prop = new Properties();
	
	public ManagerDao() {
		String fileName = MemberDao.class.getResource("/sql/manager/manager-query.properties").getPath();
		
		try {
			prop.load(new FileReader(fileName));
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}


	public Manager loginCheck(Connection con, Manager loginManager) {
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		Manager loginUser	= null;
		
		String query = prop.getProperty("loginManager");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, loginManager.getManagerId());
			pstmt.setString(2, loginManager.getManagerPwd());
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				loginUser = new Manager();
				loginUser.setManagerId(rset.getString("MANAGER_ID"));
				loginUser.setManagerPwd(rset.getString("MANAGER_PWD"));
				loginUser.setManagerName(rset.getString("MANAGER_NAME"));
				loginUser.setEmpowerDate(rset.getString("EMPOWER_DATE"));
				loginUser.setMasteryn(rset.getString("MASTER_YN"));
				loginUser.setProfileAttachmentCode(rset.getString("PROFILE_ATTACHMENT_CODE"));
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rset);
		}
		
		System.out.println("loginuser dao: "+loginUser);
		return loginUser;
	}
	
public ArrayList<TrainerInfo> selectTrainerDetail(Connection con, String memberId) {
		

		Statement stmt = null;
		ResultSet rset = null;
		ArrayList<TrainerInfo> list = null;
		
		String query = prop.getProperty("selectTrainerDetail");
		
		try {
			stmt = con.createStatement();
			rset = stmt.executeQuery(query);
			
			list = new ArrayList<TrainerInfo>();
			
			while(rset.next()) {
	            TrainerInfo ti = new TrainerInfo();
	            ti.setMemberId(memberId);
	            ti.setName(rset.getString("MEMBER_NAME"));
				ti.setEmail(rset.getString("EMAIL"));
				ti.setPhone(rset.getString("PHONE"));
				ti.setTrainerComment(rset.getString("TRAINER_COMMENT"));
				ti.setTrainerMainField(rset.getString("TRAINER_MAINFIELD"));
				ti.setTrainerSubField(rset.getString("TRAINER_SUBFIELD"));
				ti.setTrainerType(rset.getString("TRAINER_TYPE"));
				ti.setEnrollDate(rset.getString("ENROLL_DATE"));
				ti.setAddress(rset.getString("ADDRESS"));
				ti.setBankCode(rset.getString("BANK_CODE"));
				ti.setBankAccount(rset.getString("BANK_ACCOUNT"));
				
				
	            
				list.add(ti);
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

}
















