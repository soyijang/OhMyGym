package com.omg.jsp.matching.model.dao;

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
import java.util.HashMap;
import java.util.Properties;

import com.omg.jsp.matching.model.vo.MatchingChat;
import com.omg.jsp.matching.model.vo.MatchingRequest;
import com.omg.jsp.matching.model.vo.RequestInformation;
import com.omg.jsp.member.model.dao.MemberDao;
import com.omg.jsp.member.model.vo.TrainerInfo;
import com.omg.jsp.trainerCareer.model.vo.TrainerCareer;
import com.omg.jsp.trainerCeritificate.model.vo.TrainerCeritificate;
import com.omg.jsp.trainerEducation.model.vo.TrainerEducation;
import com.omg.jsp.trainerReview.model.vo.TrainerReview;

public class MatchingDao {
	
	private Properties prop = new Properties();
	public MatchingDao() {
		String fileName = MemberDao.class.getResource("/sql/matching/matching-query.properties").getPath();
		
		try {
			prop.load(new FileReader(fileName));
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	public MatchingRequest checkMatch(Connection con, String memberId) {
		
		PreparedStatement pstmt = null;
		
		ResultSet rset = null;
		
		MatchingRequest matchResult = new MatchingRequest();
		
		String query = prop.getProperty("checkMatch");
		
		try {
			pstmt = con.prepareStatement(query);
			
			pstmt.setString(1, memberId);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				matchResult.setTrainerId(rset.getString("TRAINER_ID"));
				matchResult.setFollowerId(rset.getString("FOLLOWER_ID"));
				matchResult.setTrainerName(rset.getString("MEMBER_NAME"));
				matchResult.setGroupCommuNum(rset.getString("GROUP_CONTAINERNUM"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		return matchResult;
	}
	public ArrayList<HashMap<String, Object>> selectTrainerList(Connection con) {
		Statement stmt = null;
		ArrayList<HashMap<String, Object>> list = null;
		HashMap<String, Object> hmap = null;                         
		ResultSet rset = null;

		String query = prop.getProperty("selectTrainerList");
		
		try {
			stmt = con.createStatement();
			
			rset = stmt.executeQuery(query);
			
			list = new ArrayList<>();
			
			while(rset.next()) {
				hmap = new HashMap<>();
				
				hmap.put("trainerId", rset.getString("MEMBER_ID"));
				hmap.put("trainerComment", rset.getString("TRAINER_COMMENT"));
				hmap.put("mainField", rset.getString("TRAINER_MAINFIELD"));
				hmap.put("subField", rset.getString("TRAINER_SUBFIELD"));
				hmap.put("trainerName", rset.getString("MEMBER_NAME"));
				
				list.add(hmap);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(stmt);
			close(rset);
		}
		
		return list;
	}
//	public HashMap<String, Object> selectTrainerMap(Connection con, String memberId) {
//		PreparedStatement pstmt = null;
//		ResultSet rset = null;
//		HashMap<String, Object> hmap = null;
//		Member trainer = null;
//		TrainerReview tr = null;
//		TrainerCareer tc = null;
//		TrainerEducation te = null;
//		
//		String query = prop.getProperty("selectTrainerMap");
//		
//		try {
//			pstmt = con.prepareStatement(query);
//			
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}
//		
//		return hmap;
//	}
	public ArrayList<String> selectTrainerInfo(Connection con, String memberId) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
//		Member m = new Member();
		ArrayList<String> list = new ArrayList<String>();
		
		String query = prop.getProperty("selectTrainerInfo");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, memberId);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				list.add(memberId);
				list.add(rset.getString("MEMBER_NAME"));
				list.add(rset.getString("TRAINER_COMMENT"));
				list.add(rset.getString("TRAINER_MAINFIELD"));
				list.add(rset.getString("TRAINER_SUBFIELD"));

				
//				m.setMemberId(memberId);
//				m.setName(rset.getString("MEMBER_NAME"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		
		return list;
	}
	public ArrayList<TrainerCeritificate> selectTrainerCeritificate(Connection con, String memberId) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<TrainerCeritificate> tcList = new ArrayList<TrainerCeritificate>();
		TrainerCeritificate tc = null;
		
		String query = prop.getProperty("selectTrainerCeritificate");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, memberId);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				tc = new TrainerCeritificate();
				
				tc.setCertiDate(rset.getString("CERTI_DATE"));
				tc.setCertiInstitution(rset.getString("CERTI_INSTITUTION"));
				tc.setCertiName(rset.getString("CERTI_NAME"));
				tc.setCertiFileCode(rset.getString("CERTI_FILECODE"));
				tc.setCertiNum(rset.getString("CERTI_NUM"));
				tc.setCertiCode(rset.getString("CERTI_CODE"));
				tc.setCertiManageCode(rset.getString("CERTI_MANAGECODE"));
				
				tcList.add(tc);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		
		return tcList;
	}
	public ArrayList<TrainerEducation> selectTrainerEducation(Connection con, String memberId) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<TrainerEducation> teList = new ArrayList<TrainerEducation>();
		TrainerEducation te = null;
		
		String query = prop.getProperty("selectTrainerEducation");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, memberId);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				te = new TrainerEducation();
				
				te.setEduManageCode(rset.getString("EDU_MANAGECODE"));
				te.setEduType(rset.getString("EDU_TYPE"));
				te.setEduName(rset.getString("EDU_NAME"));
				te.setEduEnrollDate(rset.getString("EDU_ENROLLDATE"));
				te.setGraduateDate(rset.getString("EDU_GRADUATEDATE"));
				te.setEduFileCode("EDU_FILECODE");
				te.setEduState(rset.getString("EDU_STATE"));
				
				teList.add(te);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		return teList;
	}
	public ArrayList<TrainerCareer> selectTrainerCareer(Connection con, String memberId) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<TrainerCareer> tcrList = new ArrayList<TrainerCareer>();
		TrainerCareer tcr = null;
		
		String query = prop.getProperty("selectTrainerCareer");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, memberId);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				tcr = new TrainerCareer();
				
				tcr.setCompName(rset.getString("COMP_NAME"));
				tcr.setEnterDate(rset.getString("ENTER_DATE"));
				tcr.setResignDate(rset.getString("RESIGN_DATE"));
				tcr.setCareerLevel(rset.getString("CAREER_LEVEL"));
				tcr.setCareerId(rset.getString("CAREER_ID"));
				tcr.setCareerProof(rset.getString("CAREER_PROOF"));
				tcr.setProofYn(rset.getString("PROOF_YN"));
				tcr.setCareerType(rset.getString("CAREER_TYPE"));
				tcr.setCareerField(rset.getString("CAREER_FIELD"));
				
				tcrList.add(tcr);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		
		return tcrList;
	}
	public ArrayList<TrainerReview> selectTrainerReview(Connection con, String memberId) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<TrainerReview> trList = new ArrayList<TrainerReview>();
		TrainerReview tr = null;
		
		String query = prop.getProperty("selectTrainerReview");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, memberId);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				tr = new TrainerReview();
				
				tr.setRatingContent(rset.getString("RATING_CONTENT"));
				tr.setGrade(rset.getDouble("GRADE"));
				tr.setFollowerId(rset.getString("FOLLOWER_ID"));
				tr.setRatingFileCode(rset.getString("RATING_FILECODE"));
				
				trList.add(tr);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		return trList;
	}
	public HashMap<String, Object> selectGradeAvg(Connection con) {
		Statement stmt = null;
		ResultSet rset = null;
		HashMap<String, Object> avgMap = new HashMap<String, Object>();
		
		String query = prop.getProperty("selectGradeAvg");
		
		try {
			stmt = con.createStatement();
			rset = stmt.executeQuery(query);
			
			while(rset.next()) {
				avgMap.put(rset.getString("TRAINER_ID"), (Object) rset.getDouble("AVG(GRADE)"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(stmt);
			close(rset);
		}
		
		return avgMap;
	}
	public int insertMatchRequest(Connection con, HashMap<String, String> matchingInfo) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("insertMatchRequest");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, matchingInfo.get("trainerId"));
			pstmt.setString(2, matchingInfo.get("followerId"));
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return result;
	}
	public int insertMatchChat(Connection con, HashMap<String, String> matchingInfo) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("insertMatchChat");
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, matchingInfo.get("matchingChatContent"));
			pstmt.setString(2, matchingInfo.get("followerId"));
			pstmt.setString(3, matchingInfo.get("trainerId"));
			pstmt.setString(4, matchingInfo.get("followerId"));
			
			result = pstmt.executeUpdate();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		
		return result;
	}
	
	public ArrayList<MatchingRequest> selectApplyList(Connection con, String memberId) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		MatchingRequest mr = null;
		ArrayList<MatchingRequest> matchRequest = new ArrayList<MatchingRequest>();
		
		String query = prop.getProperty("selectApplyList");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, memberId);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				mr = new MatchingRequest();
				
				mr.setRequestCode(rset.getString("REQUEST_MANAGECODE"));
				mr.setRequestDate(rset.getString("REQUEST_DATE"));
				mr.setRequestTime(rset.getString("REQUEST_TIME"));
				mr.setRequestType(rset.getString("REQUEST_TYPE"));
				mr.setTrainerId(rset.getString("TRAINER_ID"));
				mr.setFollowerId(rset.getString("FOLLOWER_ID"));
			
				matchRequest.add(mr);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		
		return matchRequest;
	}
	public MatchingRequest isMatched(Connection con, String trainerId, String followerId) {
		
		PreparedStatement pstmt =null;
		ResultSet rset = null;
		
		MatchingRequest match = null;
		
		String query = prop.getProperty("isMatched");
		
		try {
			pstmt = con.prepareStatement(query);
			
			pstmt.setString(1, followerId);
			pstmt.setString(2, trainerId);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				match = new MatchingRequest();
				
				match.setRequestCode(rset.getString("REQUEST_MANAGECODE"));
				match.setFollowerId(rset.getString("FOLLOWER_ID"));
				match.setTrainerId(rset.getString("TRAINER_ID"));
				match.setRequestType(rset.getString("REQUEST_TYPE"));
				
			} 
		
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		
		return match;
	}
	public ArrayList<MatchingChat> matchChatList(Connection con, String roomNum) {
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		ArrayList<MatchingChat> result = null;
		
		String query = prop.getProperty("matchChatList");
		
		try {
			pstmt = con.prepareStatement(query);
			
			pstmt.setString(1, roomNum);
			
			rset = pstmt.executeQuery();
			
			result = new ArrayList<MatchingChat>();
			
			while(rset.next()) {
				MatchingChat chat = new MatchingChat();
				chat.setChatNum(rset.getString("CHAT_NUM"));
				chat.setChatContent(rset.getString("CHAT_CONTENT"));
				chat.setWriterId(rset.getString("CHAT_WRITERID"));
				chat.setMemberType(rset.getString("MEMBER_TYPE"));
				
				result.add(chat);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		
		return result;
	}
	public int insertChat(Connection con, MatchingChat chat) {
		
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("insertMoreChat");
		
		
		try {
			pstmt = con.prepareStatement(query);
			
			pstmt.setString(1, chat.getChatContent());
			pstmt.setString(2, chat.getWriterId());
			pstmt.setString(3, chat.getRequestCode());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}

		return result;
	}
	
	public ArrayList<TrainerInfo> selectInfo(Connection con, String memberId) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<TrainerInfo> tiList = new ArrayList<TrainerInfo>();
		TrainerInfo ti = null;
		
		String query = prop.getProperty("selectInfo");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, memberId);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				ti = new TrainerInfo();
				
				
				ti.setMemberId(rset.getString("MEMBER_ID"));
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
				ti.setBankName(rset.getString("BANK_NAME"));
				
				tiList.add(ti);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		
		return tiList;
	}
	
	public ArrayList<String> selectFollowerHealthInfo(Connection con, String followerId) {
	      PreparedStatement pstmt = null;
	      ResultSet rset = null;
	      ArrayList<String> hi = new ArrayList<String>();
	      
	      String query = prop.getProperty("selectHealthInfo");
	      
	      try {
	         pstmt = con.prepareStatement(query);
	         pstmt.setString(1, followerId);
	         
	         rset = pstmt.executeQuery();
	         
	         while(rset.next()) {
	            hi.add(rset.getString("HEALTH_DATA"));
	         }
	      } catch (SQLException e) {
	         e.printStackTrace();
	      }
	      return hi;
	   }
	
	public RequestInformation selectFollowerInfo(Connection con, String followerId) {
	      PreparedStatement pstmt = null;
	      ResultSet rset = null;
	      RequestInformation requestInfo = new RequestInformation();
	      String query = prop.getProperty("selectFollowerInfo");
	      
	      try {
	         pstmt = con.prepareStatement(query);
	         pstmt.setString(1, followerId);
	         
	         rset = pstmt.executeQuery();
	         
	         if(rset.next()) {
	            requestInfo.setChatContent(rset.getString("CHAT_CONTENT"));
	            requestInfo.setFollowerId(followerId);
	            requestInfo.setFollowerName(rset.getString("MEMBER_NAME"));
	            requestInfo.setMemberAge(rset.getString("MEMBER_AGE"));
	         }
	         System.out.println("matchingDao followerInfo : " + requestInfo);
	      } catch (SQLException e) {
	         e.printStackTrace();
	      } finally {
	         close(pstmt);
	         close(rset);
	      }
	      
	      return requestInfo;
	   }
	public MatchingRequest selectChat(Connection con, String trainerId, String userId) {
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		MatchingRequest result = null;
		String query = prop.getProperty("selectChat");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, trainerId);
			pstmt.setString(2, userId);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				result = new MatchingRequest();
				
				result.setRequestCode(rset.getString("REQUEST_MANAGECODE"));
				result.setTrainerId(rset.getString("TRAINER_ID"));
				result.setFollowerId(rset.getString("FOLLOWER_ID"));
				result.setRequestType(rset.getString("REQUEST_TYPE"));
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		
		return result;
	}
	public MatchingRequest manageGroup(Connection con, String trainerId) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		MatchingRequest result = null;
		
		String query = prop.getProperty("manageGroup");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, trainerId);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				result = new MatchingRequest();
				
				result.setGroupCommuNum(rset.getString("GROUP_CONTAINERNUM"));
				result.setTrainerId(rset.getString("MEMBER_ID"));
				result.setTrainerName(rset.getString("MEMBER_NAME"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		
		return result;
	}
	public int endMatch(Connection con, String trainerId, String followerId) {
		
		PreparedStatement pstmt = null;
		
		int result = 0;
		
		String query = prop.getProperty("endMatch");
		
		try {
			pstmt = con.prepareStatement(query);
			
			pstmt.setString(1, trainerId);
			pstmt.setString(2, followerId);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return 0;
	}
}



