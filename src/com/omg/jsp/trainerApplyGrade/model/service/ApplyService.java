package com.omg.jsp.trainerApplyGrade.model.service;

import static com.omg.jsp.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.omg.jsp.trainerApplyGrade.model.dao.ApplyDao;
import com.omg.jsp.trainerApplyGrade.model.vo.Apply;

public class ApplyService {
	
	//승인요청리스트 조회용 메소드
	public ArrayList<Apply> selectList(String userId) {
		
		Connection con = getConncection();
		
		ArrayList <Apply> list = new ApplyDao().selectList(con,userId);
		
		System.out.println("조회된 승인신청 내용 (service): " + list);
		
		close(con);
		
		return list;
	}

	//승인요청 추가용 메소드
	public int insertApply(String userId) {
		
		Connection con = getConncection();
		
		int result = new ApplyDao().insertApply(con,userId);
		
		close(con);
		
		return result;
		
	}

	//관리자용 모든 리스트 조회
	public ArrayList<Apply> selectListAll() {
		
		Connection con = getConncection();
		
		ArrayList <Apply> list = new ApplyDao().selectListAll(con);
		
		System.out.println("조회된 승인신청 내용 (service): " + list);
		
		close(con);
		
		return list;
	}
	
	//관리자용 승인처리 업데이트
	public int updateApply(Apply apply) {
		
		Connection con = getConncection();
		
		int result = new ApplyDao().updateApply(con,apply);
		
		close(con);
		
		return result;
	}
	
	//관리자용 거절처리 업데이터
	public int rejectApply(Apply apply) {
		
		Connection con = getConncection();
		
		int result = new ApplyDao().rejectApply(con,apply);
		
		close(con);
		
		return result;
	}

}
