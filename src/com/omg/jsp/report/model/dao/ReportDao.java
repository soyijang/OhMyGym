package com.omg.jsp.report.model.dao;

import static com.omg.jsp.common.JDBCTemplate.close;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Properties;

import com.omg.jsp.member.model.dao.MemberDao;
import com.omg.jsp.report.model.vo.Report;

public class ReportDao {

	private Properties prop = new Properties();
	
	public ReportDao() {
		String fileName = MemberDao.class.getResource("/sql/followerreport/report-query.properties").getPath();
				
		try {
			prop.load(new FileReader(fileName));
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	

	public int insertReport(Connection con, Report report) {

		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("insertReport");
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, report.getReportCategory());
			pstmt.setString(2, report.getReportContent());
			pstmt.setString(3, report.getMemberId());
			pstmt.setString(4, report.getReportedMemberId());
			pstmt.setString(5, report.getReportUrl());
			
			
			System.out.println("report : " + report);
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}

}