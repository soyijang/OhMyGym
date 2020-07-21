package com.omg.jsp.file.model.dao;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

import com.omg.jsp.file.model.vo.Files;
import static com.omg.jsp.common.JDBCTemplate.*;

public class FileDao {
	private Properties prop = new Properties();
	public FileDao() {
		String fileName = FileDao.class.getResource("/sql/fileQuery/files-query.properties").getPath();
		try {
			prop.load(new FileReader(fileName));
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	
	public int fileUpload(Connection con, Files upfile) {
		
		PreparedStatement pstmt = null;
		
		int result = 0;
		
		String query = prop.getProperty("fileUpload");
		
		try {
			pstmt = con.prepareStatement(query);
			
			pstmt.setString(1, upfile.getFileOriginName());
			pstmt.setString(2, upfile.getFileManageName());
			pstmt.setString(3, upfile.getFilePath());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}


	public int fileCurrval(Connection con) {
		Statement stmt = null;
		ResultSet rset = null;
		int code = 0;
		
		String query = prop.getProperty("selectCurrval");
		
		try {
			stmt = con.createStatement();
			rset = stmt.executeQuery(query);
			
			
			if(rset.next()) {
				code = rset.getInt("currval");
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			
			close(stmt);
			close(rset);
		}
		
		return code;
	}


	public Files getfile(Connection con, int getCode) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		Files myFile = null;
		
		String query = prop.getProperty("getfile");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, Integer.toString(getCode));
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				myFile = new Files();
				
				myFile.setFileCode(rset.getString("FILE_CODE"));
				myFile.setFileOriginName(rset.getString("FILE_ORIGIN_NAME"));
				myFile.setFileManageName(rset.getString("FILE_MANAGE_NAME"));
				myFile.setFilePath(rset.getString("FILE_PATH"));
				myFile.setFileUploadDate(rset.getString("FILE_UPLOAD_DATE"));
				myFile.setFileUploadTime(rset.getString("FILE_UPLOAD_TIME"));
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		
		
		return myFile;
	}


	public Files selectOneFiles(Connection con, int num) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		Files file = null;
		
		String query = prop.getProperty("selectOneFiles");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, Integer.toString(num));
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				file = new Files();
				
				file.setFileCode(rset.getString("FILE_CODE"));
				file.setFileOriginName(rset.getString("FILE_ORIGIN_NAME"));
				file.setFileManageName(rset.getString("FILE_MANAGE_NAME"));
				file.setFilePath(rset.getString("FILE_PATH"));
				file.setFileUploadDate(rset.getString("FILE_UPLOAD_DATE"));
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			
			close(pstmt);
			close(rset);
		}
		
		return file;
	}


	public Files checkUserProfile(Connection con, String userId) {
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		Files resultFile = null;
		
		String query = prop.getProperty("checkUserProfile");
		
		try {
			pstmt = con.prepareStatement(query);
			
			pstmt.setString(1, userId);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				resultFile = new Files();
				resultFile.setFileCode(rset.getString("FILE_CODE"));
				resultFile.setFileManageName(rset.getString("FILE_MANAGE_NAME"));
				resultFile.setFileOriginName(rset.getString("FILE_ORIGIN_NAME"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		
		
		return resultFile;
	}

}
