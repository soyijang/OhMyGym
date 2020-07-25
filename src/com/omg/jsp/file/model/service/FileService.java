package com.omg.jsp.file.model.service;

import java.sql.Connection;

import com.omg.jsp.file.model.dao.FileDao;
import com.omg.jsp.file.model.vo.Files;

import static com.omg.jsp.common.JDBCTemplate.*;

public class FileService {

	public Files fileUpload(Files upfile) {
		Connection con = getConncection();
		
		int result = new FileDao().fileUpload(con, upfile);
		
		if(result > 0) {
			commit(con);
		} else {
			rollback(con);
		}
		
		int getCode = new FileDao().fileCurrval(con);
		
		Files myFile = new FileDao().getfile(con, getCode);
		
		close(con);
		
		return myFile;
	}

	public Files selectOneFiles(int num) {
		
		Connection con = getConncection();
		
		Files file = new FileDao().selectOneFiles(con, num);
		
		close(con);
		
		return file;
		
	}

	public Files checkUserProfile(String userId) {
		
		Connection con = getConncection();
		Files file = new FileDao().checkUserProfile(con, userId);
		
		close(con);
		
		return file;
	}

	public Files checkPost(String boardId) {
		Connection con = getConncection();
		Files file = new FileDao().checkPost(con, boardId);
		
		close(con);
		
		return file;
	}

}
