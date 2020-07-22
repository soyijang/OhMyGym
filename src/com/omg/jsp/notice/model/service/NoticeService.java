package com.omg.jsp.notice.model.service;

import java.sql.Connection; 
import java.util.ArrayList;

import com.omg.jsp.notice.model.dao.NoticeDao;
import com.omg.jsp.notice.model.vo.Attachment;
import com.omg.jsp.notice.model.vo.Notice;
import static com.omg.jsp.common.JDBCTemplate.*;

public class NoticeService {
	
	//공지사항 목록 조회용 메소드
	public ArrayList<Notice> selectList(){
		
		Connection con = getConncection();
		
		ArrayList<Notice> list = new NoticeDao().selectList(con);
		close(con);
		
		return list;
	}

	//공지사항 등록용 메소드
	public int insertNotice(Notice newNotice) {
		
		Connection con = getConncection();
		
		int result = new NoticeDao().insertNotice(con, newNotice);
		
		
		if(result > 0) {
			commit(con);
		} else {
			rollback(con);
		}
		close(con);
		
		return result;
		
	}
	/*public int getViewCount() {
		
		Connection con = getConncection();
		
		int viewCount = new NoticeDao().getViewCount(con);
		
		close(con);
		
		return viewCount;
	}*/

	public Notice selectOne(int nno) {
		
		Connection con = getConncection();
		
		int result = 0;
		
		Notice notice = new NoticeDao().selectOne(con, nno);
		
		if(notice != null) {
			result = new NoticeDao().viewCount(con,nno);
			
			if(result > 0) {
				commit(con);
			} else {
				rollback(con);
			}
		}
		close(con);
		
		return notice;
	}

	public Attachment selectOneAttachment(int num) {
		
		
		
		return null;
	}

	public Notice FollowSelectOne(int nno) {
		
		Connection con = getConncection();
		
		Notice notice = null;
		int result = 0;
		
		notice = new NoticeDao().FollowSelectOne(con, nno);
		result = new NoticeDao().viewCount(con, nno);
		
		if(notice != null && result > 0) {
				commit(con);
			} else {
				rollback(con);
			}
		
		close(con);
		
		return notice;
		
	}

	public Notice deleteNotice(int nno) {
		
		Connection con = getConncection();
		
		int result = 0;
		
		Notice notice = new NoticeDao().deleteNotice(con, nno);
		
		if(notice != null) {
			
			if(result > 0) {
				rollback(con);
			} else {
				commit(con);
			}
		}
		close(con);
		
		System.out.println("noticeService notice : "+notice);
		return notice;
	}
	
}
