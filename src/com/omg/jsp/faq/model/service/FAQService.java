package com.omg.jsp.faq.model.service;

import static com.omg.jsp.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.omg.jsp.faq.model.dao.FAQDao;
import com.omg.jsp.faq.model.vo.FAQ;

public class FAQService {
	
	public ArrayList<FAQ> selectList() {
		
		Connection con = getConncection();
		
		ArrayList<FAQ> list = new FAQDao().selectList(con);
		
		close(con);
		
		return list;
		
	}
	
	public int insertFAQ(FAQ faq) {
			
			Connection con = getConncection();
			
			int result = new FAQDao().insertFAQ(con, faq);
			
			if(result > 0) {
				commit(con);
			} else {
				rollback(con);
			}
			
			close(con);
			
			return result;
		}
	
	

}
