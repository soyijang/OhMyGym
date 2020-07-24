package com.omg.jsp.trainerSalary.model.service;

import static com.omg.jsp.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.omg.jsp.trainerSalary.model.dao.SalaryDao;
import com.omg.jsp.trainerSalary.model.vo.Salary;

public class SalaryService {

	//관리자용 모든 리스트 조회
	public ArrayList<Salary> selectListAll() {
		
		Connection con = getConncection();
		
		ArrayList <Salary> list = new SalaryDao().selectListAll(con);
		
		System.out.println("조회된 승인신청 내용 (service): " + list);
		
		close(con);
		
		return list;
		
	}
	

	//관리자용 완료처리 (업데이트)
	public int updateSalary(String managecode) {
		
		Connection con = getConncection();
		
		int result = new SalaryDao().updateOne(con, managecode);
		
		System.out.println("조회된 정산처리 아이디 (service): " + managecode);
		
		close(con);
		
		return result;
	}

	//트레이너용 본인리스트
	public ArrayList<Salary> selectListOne(String userId) {
		
		Connection con = getConncection();
		
		ArrayList <Salary> list = new SalaryDao().selectListOne(con, userId);
		
		
		close(con);
		
		return list;
	}

}
