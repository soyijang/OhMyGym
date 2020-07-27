package com.omg.jsp.report.model.service;

import static com.omg.jsp.common.JDBCTemplate.close;
import static com.omg.jsp.common.JDBCTemplate.commit;
import static com.omg.jsp.common.JDBCTemplate.getConncection;
import static com.omg.jsp.common.JDBCTemplate.rollback;

import java.sql.Connection;

import com.omg.jsp.report.model.dao.ReportDao;
import com.omg.jsp.report.model.vo.Report;

public class ReportService {
	
	//신고추가용
	public int insertReport(Report report) {
		
		 
			Connection con = getConncection();
			  int result = new ReportDao().insertReport(con, report);
			   
			  if(result > 0) {
				 commit(con);
			  } else {
				  rollback(con);
			  }
			  
			  close(con);
			  return result;
	}

}
