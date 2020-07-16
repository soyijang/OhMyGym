package com.omg.jsp.manager.model.service;

import static com.omg.jsp.common.JDBCTemplate.*;

import java.sql.Connection;

import com.omg.jsp.manager.model.dao.ManagerDao;
import com.omg.jsp.manager.model.vo.Manager;

public class ManagerService {

	public Manager loginCheck(Manager loginManager) {
		
		Connection con = getConncection();
		Manager loginUser= new ManagerDao().loginCheck(con,loginManager);
		System.out.println("login service에서 받은 로그인정보: " + loginManager);
		
		close(con);
		return loginUser;
	}

}
