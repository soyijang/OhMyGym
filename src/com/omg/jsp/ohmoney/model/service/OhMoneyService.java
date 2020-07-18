package com.omg.jsp.ohmoney.model.service;

import static com.omg.jsp.common.JDBCTemplate.close;
import static com.omg.jsp.common.JDBCTemplate.commit;
import static com.omg.jsp.common.JDBCTemplate.getConncection;
import static com.omg.jsp.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import com.omg.jsp.ohmoney.model.dao.OhMoneyDao;
import com.omg.jsp.ohmoney.model.vo.OhMoney;

public class OhMoneyService {

	public OhMoney checkMoney(String userId) {
		
		Connection con = getConncection();
		
		OhMoney resultMoney = new OhMoneyDao().checkMoney(con, userId);
		
		close(con);
		
		return resultMoney;
	}

	public int updateMoney(OhMoney userOhMoney) {
		
		Connection con = getConncection();
		
		int result = new OhMoneyDao().updateMoney(con, userOhMoney);
		
		if(result > 0) {
			commit(con);
		} else {
			rollback(con);
		}
		
		close(con);
		
		return result;
	}

	public ArrayList<OhMoney> listOhMoney(String userId) {
		
		Connection con = getConncection();
		
		ArrayList<OhMoney> list = new OhMoneyDao().listOhMoney(con, userId);
		
		close(con);
		
		return list;
	}

}
