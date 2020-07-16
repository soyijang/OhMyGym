package com.omg.jsp.manager.model.dao;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import com.omg.jsp.manager.model.vo.Manager;
import com.omg.jsp.member.model.dao.MemberDao;
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

}
















