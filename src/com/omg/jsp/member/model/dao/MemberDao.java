package com.omg.jsp.member.model.dao;


import java.io.FileNotFoundException; 
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import com.omg.jsp.member.model.dao.MemberDao;
import com.omg.jsp.member.model.vo.Member;
import static com.omg.jsp.common.JDBCTemplate.*; 


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
			pstmt.setString(9, requestMember.getMemberAge());
			
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return result;
	}


	public Member loginCheck(Connection con, Member loginMember) {
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		Member loginUser = null;
		
		String query = prop.getProperty("loginSelect");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, loginMember.getMemberId());
			pstmt.setString(2, loginMember.getMemberPwd());
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				loginUser = new Member();
				
				loginUser.setName(rset.getString("MEMBER_NAME"));
				loginUser.setMemberId(rset.getString("MEMBER_ID"));
				loginUser.setMemberPwd(rset.getString("MEMBER_PWD"));
				loginUser.setMemberDivision(rset.getString("MEMBER_TYPE"));
				loginUser.setEmail(rset.getString("EMAIL"));
				loginUser.setPhone(rset.getString("PHONE"));
				loginUser.setAddress(rset.getString("ADDRESS"));
				loginUser.setProfileAttachmentCode(rset.getString("PRORILE_FILECODE"));
				loginUser.setEnrollDate(rset.getString("ENROLL_DATE"));
				loginUser.setMemberStatus(rset.getString("MEMBER_STATUS"));
				loginUser.setGender(rset.getString("GENDER"));
				loginUser.setEnrollTime(rset.getString("ENROLL_TIME"));
				loginUser.setMemberAge(rset.getString("MEMBER_AGE"));
				
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		System.out.println("loginuser dao: "+loginUser);
		return loginUser;
		
	}

}
