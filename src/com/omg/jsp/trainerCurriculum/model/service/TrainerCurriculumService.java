package com.omg.jsp.trainerCurriculum.model.service;

import static com.omg.jsp.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.HashMap;

import com.omg.jsp.member.model.vo.Member;
import com.omg.jsp.trainerCurriculum.model.dao.TrainerCurriculumDao;
import com.omg.jsp.trainerCurriculum.model.vo.TrainerCurriculum;
import com.omg.jsp.trainerVideo.model.vo.TrainerVideo;

public class TrainerCurriculumService {

	public HashMap<String, Object> selectCurriculumList(Member loginUser) {
		Connection con = getConncection();
		
		HashMap<String, Object> curriInfo = new HashMap<String, Object>();
		
		ArrayList<TrainerCurriculum> curriculum = new TrainerCurriculumDao().selectTrainerCurriculum(con, loginUser);
		ArrayList<TrainerVideo> video = new TrainerCurriculumDao().selectTrainerVideo(con, loginUser);
		
		curriInfo.put("curriculum", curriculum);
		curriInfo.put("video", video);
		
		return curriInfo;
	}
	
	public int insertCurriculum(String newCurriculumTitle, String memberId) {
		Connection con = getConncection();
		
		int result = new TrainerCurriculumDao().insertCurriculum(con, newCurriculumTitle, memberId);
		
		if(result > 0) {
			commit(con);
		} else {
			rollback(con);
		}
		
		return result;
	}

	public String selectCurriculumTitle(String videoCode) {
		Connection con = getConncection();
		
		String curriculumTitle = new TrainerCurriculumDao().selectCurriculumTitle(con, videoCode);
		
		close(con);
		
		return curriculumTitle;
	}

}
