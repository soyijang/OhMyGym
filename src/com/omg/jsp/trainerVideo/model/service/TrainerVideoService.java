package com.omg.jsp.trainerVideo.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.omg.jsp.trainerVideo.model.dao.TrainerVideoDao;
import com.omg.jsp.trainerVideo.model.vo.TrainerVideo;
import static com.omg.jsp.common.JDBCTemplate.*;

public class TrainerVideoService {

	public ArrayList<TrainerVideo> selectVideoInCurriculum(String curriculumCode) {
		Connection con = getConncection();
		
		ArrayList<TrainerVideo> videoList = new TrainerVideoDao().selectVideoInCurriculum(con, curriculumCode);
		
		System.out.println(videoList);
		
		
		return videoList;
	}

}
