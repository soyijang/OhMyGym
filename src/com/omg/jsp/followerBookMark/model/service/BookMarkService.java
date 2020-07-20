package com.omg.jsp.followerBookMark.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.omg.jsp.followerBookMark.model.dao.BookMarkDao;
import com.omg.jsp.followerBookMark.model.vo.BookMark;
import static com.omg.jsp.common.JDBCTemplate.*;

public class BookMarkService {

	//북마크 조회용 메소드
	public ArrayList<BookMark> selectList(String userId) {
		
		Connection con = getConncection();
		
		ArrayList <BookMark> list = new BookMarkDao().selectList(con,userId);
		
		System.out.println("조회된 북마크 내용 (service): " + list);
		
		
		close(con);
		
		return list;
	}
	
	//북마크삭제
	public int deleteBookMark(String userId, String boardNum) {
		
		Connection con = getConncection();
		
		int result = new BookMarkDao().deleteBookMark(con, userId, boardNum);
		
		if(result>0) {
			commit(con);
		} else {
			rollback(con);
		}
		
		close(con);
		
		return result;
	}

}
