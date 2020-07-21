package com.omg.jsp.ohmoney.model.service;

import static com.omg.jsp.common.JDBCTemplate.close;
import static com.omg.jsp.common.JDBCTemplate.commit;
import static com.omg.jsp.common.JDBCTemplate.getConncection;
import static com.omg.jsp.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import com.omg.jsp.ohmoney.model.dao.OhMoneyDao;
import com.omg.jsp.ohmoney.model.vo.OhMoney;
import com.omg.jsp.ohmoney.model.vo.ReFundOhMoney;

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

	public int applyRefund(ReFundOhMoney refund) {
		
		Connection con = getConncection();
		
		int result = new OhMoneyDao().applyRefund(con, refund);
		
		if(result > 0) {
			commit(con);
		} else {
			rollback(con);
		}
		
		close(con);
		
		return result;
	}

	public ArrayList<ReFundOhMoney> selectRefundList(String userId) {
		
		Connection con = getConncection();
		
		ArrayList<ReFundOhMoney> refundList = new OhMoneyDao().selectRefundList(con, userId);
		
		close(con);
		
		return refundList;
	}

	public ArrayList<OhMoney> manageListOhMoney() {
		Connection con = getConncection();
		
		ArrayList<OhMoney> list = new OhMoneyDao().manageListOhMoney(con);
		
		close(con);
		
		return list;
	}

	public ArrayList<ReFundOhMoney> manageListRefund() {
		Connection con = getConncection();
		
		ArrayList<ReFundOhMoney> list = new OhMoneyDao().manageListRefund(con);
		
		close(con);
		
		return list;
	}

	public int refundSubmit(ReFundOhMoney update) {
		Connection con = getConncection();
		
		int result = new OhMoneyDao().refundSubmit(con, update);
		
		if(result > 0) {
			commit(con);
		} else {
			rollback(con);
		}
		close(con);
		
		return result;
	}

	public int checkOkReturn(String returnNum) {
		Connection con = getConncection();
		
		int result = new OhMoneyDao().checkOkReturn(con, returnNum);
		
		if(result > 0) {
			commit(con);
		} else {
			rollback(con);
		}
		close(con);
		
		return result;
	}

	public int refundUpdate(String getId, OhMoney userOhMoney) {
		
		Connection con = getConncection();
		
		int result = new OhMoneyDao().refundUpdate(con, getId, userOhMoney);
		
		if(result > 0) {
			commit(con);
		}  else {
			rollback(con);
		}
		close(con);
		
		return result;
	}

	public OhMoney searchUser(String searchId) {
		
		Connection con = getConncection();
		
		OhMoney resultUser = new OhMoneyDao().searchUser(con, searchId);
		
		close(con);
		
		return resultUser;
	}

	public int directUser(OhMoney inputOhMoney) {
		
		Connection con = getConncection();
		
		int result = new OhMoneyDao().directUser(con, inputOhMoney);
		
		if(result > 0 ) {
			commit(con);
		} else {
			rollback(con);
		}
		
		close(con);
		
		return result;
	}

	public ArrayList<OhMoney> listDirectMoney() {
		
		Connection con = getConncection();
		
		ArrayList<OhMoney> directList = new OhMoneyDao().listDirectMoney(con);
		
		close(con);
		
		return directList;
	}

}
