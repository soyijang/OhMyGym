package com.omg.jsp.member.model.dao;


import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Properties;

import com.omg.jsp.member.model.dao.MemberDao;
import com.omg.jsp.member.model.vo.Member;

public class MemberDao {
	
private Properties prop = new Properties();
	
	public MemberDao() {
		String fileName = MemberDao.class.getResource("/sql/member/member-query.properties").getPath();
		
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

	
	
	public int joinUser(Connection con, Member requestMember) {
		
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("joinMember");
		
		try {
			pstmt = con.prepareStatement(query);
			
			pstmt.setString(1, requestMember.getMemberId());
			pstmt.setString(2, requestMember.getMemberDivision());
			pstmt.setString(3, requestMember.getName());
			pstmt.setString(4, requestMember.getMemberPwd());
			pstmt.setString(5, requestMember.getEmail());
			pstmt.setString(6, requestMember.getPhone());
			pstmt.setString(7, requestMember.getAddress());
			pstmt.setString(8, requestMember.getGender());
			
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return result;
	}

}
