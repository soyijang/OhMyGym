package com.omg.jsp.ohmoney.model.service;

import static com.omg.jsp.common.JDBCTemplate.*;

import java.sql.Connection;

import com.omg.jsp.ohmoney.model.dao.OhMoneyDao;
import com.omg.jsp.ohmoney.model.vo.OhMoney;

public class OhMoneyService {

	public OhMoney checkMoney(String userId) {
		
		Connection con = getConncection();
		
		OhMoney resultMoney = new OhMoneyDao().checkMoney(con, userId);
		
		close(con);
		
		return resultMoney;
	}

}
