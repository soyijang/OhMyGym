package com.omg.jsp.trainerVideo.model.service;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.HashMap;

import com.omg.jsp.trainerCurriculum.model.dao.TrainerCurriculumDao;
import com.omg.jsp.trainerVideo.model.dao.TrainerVideoDao;
import com.omg.jsp.trainerVideo.model.vo.TrainerVideo;
import static com.omg.jsp.common.JDBCTemplate.*;

public class TrainerVideoService {

	public HashMap<String, Object> selectVideoInCurriculum(String curriculumCode) {
		Connection con = getConncection();
		
		ArrayList<TrainerVideo> videoList = new TrainerVideoDao().selectVideoInCurriculum(con, curriculumCode);
		HashMap<String, String> curriTitle = new TrainerCurriculumDao().selectCurriTitle(con, curriculumCode);
		
		HashMap<String, Object> videoListnCurriTitle = new HashMap<String, Object>();
		
		videoListnCurriTitle.put("videoList", videoList);
		videoListnCurriTitle.put("curriTItle", curriTitle);
		
		close(con);
		
		
		return videoListnCurriTitle;
	}

	public TrainerVideo selectOneVideo(String videoCode) {
		Connection con = getConncection();
		
		TrainerVideo video = new TrainerVideoDao().selectOneVideo(con, videoCode);
		
		close(con);
		
		
		return video;
	}

}
