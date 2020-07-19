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

}
