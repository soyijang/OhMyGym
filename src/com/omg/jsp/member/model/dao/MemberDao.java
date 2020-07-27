package com.omg.jsp.member.model.dao;


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

import com.omg.jsp.member.model.dao.MemberDao;
import com.omg.jsp.member.model.vo.Attachment;
import com.omg.jsp.member.model.vo.Member;
import com.omg.jsp.member.model.vo.TrainerInfo;

import static com.omg.jsp.common.JDBCTemplate.*; 


public class MemberDao {
	
private Properties prop = new Properties();
	
	public MemberDao() {
		String fileName = MemberDao.class.getResource("/sql/member/member-query.properties").getPath();
		String fileName2 = MemberDao.class.getResource("/sql/manager/manager-query.properties").getPath();
				
		try {
			prop.load(new FileReader(fileName));
			prop.load(new FileReader(fileName2));
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
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
				loginUser.setProfileAttachmentCode(rset.getString("PROFILE_FILECODE"));
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



	public int memberIdCheck(String memberId) {
		PreparedStatement pstmt = null;
		Connection con = getConncection();
		ResultSet rset = null;
		
		String query = "SELECT * FROM MEMBER WHERE MEMBER_ID = ?";
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, memberId);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				return 0; //이미 존재하는 아이디
			} else {
				return 1; //가입 가능
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return -1; //데이터 베이스 오류
	}



	public int joinUser(Connection con, Member requestMember, TrainerInfo requestTrainer) {

		PreparedStatement pstmt = null;
		PreparedStatement pstmt2 = null;
		int result = 0;
		int result2 = 0;
		
		String query = prop.getProperty("joinMember");
		String query2 = prop.getProperty("joinTrainerInfo");
		
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
			
			pstmt2 = con.prepareStatement(query2);
			
			pstmt2.setString(1, requestTrainer.getBankAccount());
			pstmt2.setString(2, requestTrainer.getBankCode());
			pstmt2.setString(3, requestMember.getMemberId());
			
			result2 = pstmt2.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(pstmt2);
		}
		
		return result;
	}



	public int insertTrainerInfo(Connection con, TrainerInfo requestTrainer, String memberId) {

		
		PreparedStatement pstmt2 = null;
		
		int result2 = 0;
		
		
		String query2 = prop.getProperty("joinTrainerInfo");
		
		try {
			
			
			pstmt2 = con.prepareStatement(query2);
			
			pstmt2.setString(1, requestTrainer.getBankAccount());
			pstmt2.setString(2, requestTrainer.getBankCode());
			pstmt2.setString(3, memberId);
			
			result2 = pstmt2.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(pstmt2);
		}
		
		return result2;
	}



	public Member findId(Connection con, Member findIdUser) {
		
		PreparedStatement pstmt = null;
		Member findUser = null;
		ResultSet rset = null;
		
		String query = prop.getProperty("findId");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, findIdUser.getName());
			pstmt.setString(2, findIdUser.getPhone());
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				findUser = new Member();
				findUser.setMemberId(rset.getString("MEMBER_ID"));
				findUser.setMemberDivision(rset.getString("MEMBER_TYPE"));
				findUser.setName(rset.getString("MEMBER_NAME"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		
		return findUser;
	}
	
	//최근 발생한 시퀀스 조회용 메소드
	public int selectCurrval(Connection con) {
		
		Statement stmt = null;
		ResultSet rset = null;
		int fid = 0;

		String query = prop.getProperty("selectProfileCurrval");
		
		try {
			
			stmt = con.createStatement();
			rset = stmt.executeQuery(query);
			
			if(rset.next()) {
				fid = rset.getInt("currval");
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(stmt);
			close(rset);
		}
		
		
		
		return fid;
	}

	//첨부파일 한 행을 insert할메소드
	public int insertAttachment(Connection con, Attachment attachment) {
		
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("insertAttachment");
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, attachment.getOriginName());
			pstmt.setString(2, attachment.getChangeName());
			pstmt.setString(3, attachment.getFilePath());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
	}



	public int updateMember(Connection con, Member m) {
		
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("updateMember");
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, m.getMemberPwd());
			pstmt.setString(2, m.getAddress());
			pstmt.setString(3, m.getPhone());
			pstmt.setString(4, m.getEmail());
			pstmt.setString(5, m.getMemberAge());
			pstmt.setString(6, m.getGender());
			pstmt.setString(7, m.getMemberId());
			
			System.out.println("m : " + m);
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			
		}
		
		System.out.println("result : " + result);
		return result;
	}


//	public int getListCount(Connection con) {
//	
//
//	Statement stmt = null;
//	int listCount = 0;
//	ResultSet rset = null;
//	
//	String query = prop.getProperty("listCount");
//	
//	try {
//		stmt = con.createStatement();
//		rset = stmt.executeQuery(query);
//		
//		if(rset.next()) {
//			listCount = rset.getInt(1);
//		}
//	} catch (SQLException e) {
//		// TODO Auto-generated catch block
//		e.printStackTrace();
//	}
//	
//	
//	
//	
//	return listCount;
//}



//public ArrayList<Member> selectList(Connection con, PageInfo pi) {
//	
//	
//
//	PreparedStatement pstmt = null;
//	ResultSet rset = null;
//	ArrayList<Member> list = null;
//	
//	String query = prop.getProperty("selectList");
//	
//	try {
//		pstmt = con.prepareStatement(query);
//		
//		
//		
//		rset = pstmt.executeQuery();
//		
//		list = new ArrayList<>();
//		
//		while(rset.next()) {
//            Member m = new Member();
//            
//            
//            m.setMemberId(rset.getString("MEMBER_ID"));
//            m.setName(rset.getString("MEMBER_NAME"));
//			m.setEmail(rset.getString("EMAIL"));
//			m.setPhone(rset.getString("PHONE"));
//			m.setEnrollDate(rset.getString("ENROLL_DATE"));
//			m.setRequestType(rset.getString("REQUEST_TYPE"));
//            
//            list.add(m);
//		}
//		
//	} catch (SQLException e) {
//		// TODO Auto-generated catch block
//		e.printStackTrace();
//	} finally {
//		close(rset);
//		close(pstmt);
//	}
//	
//	return null;
//}



//페이징처리 전 게시물 목록 조회용 메소드
public ArrayList<Member> selectList(Connection con) {
	
	Statement stmt = null;
	ResultSet rset = null;
	ArrayList<Member> list = null;
	
	String query = prop.getProperty("selectList");
	
	try {
		stmt = con.createStatement();
		rset = stmt.executeQuery(query);
		
		list = new ArrayList<Member>();
		
		while(rset.next()) {
            Member m = new Member();
            m.setMemberId(rset.getString("MEMBER_ID"));
            m.setName(rset.getString("MEMBER_NAME"));
			m.setEmail(rset.getString("EMAIL"));
			m.setPhone(rset.getString("PHONE"));
			m.setEnrollDate(rset.getString("ENROLL_DATE"));
            
            list.add(m);
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

public ArrayList<Member> selectFollower(Connection con, String memberId) {
	
	PreparedStatement pstmt = null;
	ResultSet rset = null;
	ArrayList<Member> list = new ArrayList<Member>();
	Member m = null;
	
	System.out.println("dao 오니?");
	
	String query = prop.getProperty("selectFollowerDetail");
	System.out.println(memberId);
	
	try {
		pstmt = con.prepareStatement(query);
		
		pstmt.setString(1, memberId);
		rset = pstmt.executeQuery();
		
		while(rset.next()) {
			System.out.println("in if");
            m = new Member();
            m.setMemberId(rset.getString("MEMBER_ID"));
            m.setMemberDivision(rset.getString("MEMBER_TYPE"));
            m.setName(rset.getString("MEMBER_NAME"));
			m.setEmail(rset.getString("EMAIL"));
			m.setPhone(rset.getString("PHONE"));
			m.setAddress(rset.getString("ADDRESS"));
			m.setProfileAttachmentCode(rset.getString("PROFILE_FILECODE"));
			m.setEnrollDate(rset.getString("ENROLL_DATE"));
			m.setMemberStatus(rset.getString("MEMBER_STATUS"));
			m.setGender(rset.getString("GENDER"));
			m.setEnrollTime(rset.getString("ENROLL_TIME"));
			m.setMemberAge(rset.getString("MEMBER_AGE"));
			m.setEventYn(rset.getString("EVENT_YN"));
			m.setRequestType(rset.getString("REQUEST_TYPE"));
			
			
            System.out.println("dao m : " + m);
            list.add(m);
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} finally {
		close(pstmt);
		close(rset);
	}
	
	return list;
	
	
}




public ArrayList<Member> selectTrainer(Connection con) {
	Statement stmt = null;
	ResultSet rset = null;
	ArrayList<Member> list = null;
	
	String query = prop.getProperty("selectTrainer");
	
	try {
		stmt = con.createStatement();
		rset = stmt.executeQuery(query);
		
		list = new ArrayList<Member>();
		
		while(rset.next()) {
            Member m = new Member();
            m.setMemberId(rset.getString("MEMBER_ID"));
            m.setName(rset.getString("MEMBER_NAME"));
			m.setEmail(rset.getString("EMAIL"));
			m.setPhone(rset.getString("PHONE"));
			m.setEnrollDate(rset.getString("ENROLL_DATE"));
			m.setTrainerType(rset.getString("TRAINER_TYPE"));
            
            list.add(m);
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
	

public int updateProfile(Connection con, String fileCode, String userId) {
	
	PreparedStatement pstmt = null;
	
	int result = 0;
	
	String query = prop.getProperty("updateProfile");
	
	try {
		pstmt = con.prepareStatement(query);
		
		pstmt.setString(1, fileCode);
		pstmt.setString(2, userId);
		
		result = pstmt.executeUpdate();

	} catch (SQLException e) {
		e.printStackTrace();
	} finally {
		close(pstmt);
	}
	
	return result;
}




public int duplecateID(String memberId) {
	int cnt=0; 
	try{
		Connection con = getConncection();
		StringBuilder sql=new StringBuilder(); //아이디 중복확인
		sql.append(" SELECT count(MEMBER_ID) as cnt "); 
		sql.append(" FROM MEMBER "); 
		sql.append(" WHERE MEMBER_ID=? "); 
		PreparedStatement pstmt=con.prepareStatement(sql.toString());
		pstmt.setString(1, memberId); 
		ResultSet rs=pstmt.executeQuery(); 
		if(rs.next()){
			cnt=rs.getInt("cnt");
			}//if end
		}catch(Exception e){
			System.out.println("아이디 중복 확인 실패 : "+e);
			}//try end 
	return cnt; 
	}//duplecateID() end




public int userIdCheck(String memberId) {
	
	PreparedStatement pstmt = null;
	Connection con = getConncection();
	ResultSet rset = null;
	String query = "SELECT * FROM MEMBER WHERE MEMBER_ID = ?";
	try {
		pstmt = con.prepareStatement(query);
		pstmt.setString(1, memberId); 
		rset = pstmt.executeQuery();
		if(rset.next()){ 
			return 0; //이미 존재하는 회원 
		} else {
			return 1; //가입 가능 
			} 
		} catch (Exception e) {
			e.printStackTrace(); 
		} 
	return -1; //데이터베이스 오류
	}



//비밀번호찾기
public Member findPwd(Connection con, Member findPwdUser) {
	PreparedStatement pstmt = null;
	Member findUser = null;
	ResultSet rset = null;
	
	String query = prop.getProperty("findPwd");
	
	try {
		pstmt = con.prepareStatement(query);
		pstmt.setString(1, findPwdUser.getName());
		pstmt.setString(2, findPwdUser.getPhone());
		pstmt.setString(3, findPwdUser.getMemberId());
		
		rset = pstmt.executeQuery();
		
		if(rset.next()) {
			findUser = new Member();
			findUser.setMemberId(rset.getString("MEMBER_ID"));
			findUser.setMemberDivision(rset.getString("MEMBER_TYPE"));
			findUser.setName(rset.getString("MEMBER_NAME"));
		}
		
	} catch (SQLException e) {
		e.printStackTrace();
	} finally {
		close(pstmt);
		close(rset);
	}
	
	return findUser;
}




public int updatePwd(Connection con, Member m) {
	
	PreparedStatement pstmt = null;
	int result = 0;
	
	String query = prop.getProperty("updatePwd");
	try {
		pstmt = con.prepareStatement(query);
		pstmt.setString(1, m.getMemberPwd());
		pstmt.setString(2, m.getMemberId());
		
		System.out.println("m : " + m);
		result = pstmt.executeUpdate();
		
	} catch (SQLException e) {
		e.printStackTrace();
	} finally {
		close(pstmt);
		
	}
	
	System.out.println("result : " + result);
	return result;
}



//회원탈퇴
public int withdrawMember(Connection con, String userId) {
	PreparedStatement pstmt = null;
	int result = 0;
	
	String query = prop.getProperty("withdrawMember");
	try {
		pstmt = con.prepareStatement(query);
		pstmt.setString(1, userId);
		
		result = pstmt.executeUpdate();
		
	} catch (SQLException e) {
		e.printStackTrace();
	} finally {
		close(pstmt);
		
	}
	
	System.out.println("result : " + result);
	return result;
}

	

}
	




