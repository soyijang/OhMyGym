package com.omg.jsp.QNAAnswer.model.service;

import static com.omg.jsp.common.JDBCTemplate.close;
import static com.omg.jsp.common.JDBCTemplate.commit;
import static com.omg.jsp.common.JDBCTemplate.getConncection;
import static com.omg.jsp.common.JDBCTemplate.rollback;

import java.sql.Connection;

import com.omg.jsp.QNAAnswer.model.dao.QNAAnswerDao;
import com.omg.jsp.QNAAnswer.model.vo.QNAAnswer;
import com.omg.jsp.qna.model.dao.QNADao;

public class QNAAnswerService {

	public int InsertAnswer(QNAAnswer qa) {

		
		Connection con = getConncection();
		
		int result = new QNAAnswerDao().insertAnswer(con, qa);
		
		if(result > 0) {
			commit(con);
		} else {
			rollback(con);
		}
		
		close(con);
		
		return result;
	}

}
