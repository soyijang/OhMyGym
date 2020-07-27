package com.omg.jsp.qna.model.service;

import static com.omg.jsp.common.JDBCTemplate.close;
import static com.omg.jsp.common.JDBCTemplate.commit;
import static com.omg.jsp.common.JDBCTemplate.getConncection;
import static com.omg.jsp.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import com.omg.jsp.member.model.dao.MemberDao;
import com.omg.jsp.member.model.vo.Member;
import com.omg.jsp.qna.model.dao.QNADao;
import com.omg.jsp.qna.model.vo.QNA;

public class QNAService {

	public int insertQNA(QNA q) {

			
			Connection con = getConncection();
			
			int result = new QNADao().insertQNA(con, q);
			
			if(result > 0) {
				commit(con);
			} else {
				rollback(con);
			}
			
			close(con);
			
			return result;
		}

	public ArrayList<QNA> selectList() {

		Connection con = getConncection();
		
		ArrayList<QNA> list = new QNADao().selectList(con);
		
		close(con);
		
		return list;
	}

	public QNA selectOne(String manageCode) {
		
		Connection con = getConncection();
		
		
		QNA qna = new QNADao().selectOne(con, manageCode);
		
		close(con);
		
		return qna;
	}

}
