package com.omg.jsp.file.controller;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.omg.jsp.file.model.service.FileService;
import com.omg.jsp.file.model.vo.Files;

@WebServlet("/downFile.all")
public class FileDownloadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public FileDownloadServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int num = Integer.parseInt(request.getParameter("num"));
		System.out.println("다운로드 넘" + num);
		
		Files file = new FileService().selectOneFiles(num);
		
		System.out.println("컨트롤라 파일: " + file);
		
		//폴더에서 파일을 읽어들일 스트림 생성
		BufferedInputStream buf = null;
		//클라이언트로 내보낼 출력스트림 생성
		ServletOutputStream downOut = null;
		
		downOut = response.getOutputStream();
		
		//스트림으로 전송할 파일 객체 생성
		File downFile = new File(file.getFilePath() +"\\"+ file.getFileManageName());
		
		response.setContentType("text/plain; charset=UTF-8");
		
		//한글 파일명에 대한 인코딩 처리
		//강제적으로 다운로드 처리
		response.setHeader("Content-Disposition", "attachment; filename=\"" + new String(file.getFileOriginName().getBytes("UTF-8"), "ISO-8859-1") + "\"");
		
		response.setContentLength((int) downFile.length());
		
		FileInputStream fin = new FileInputStream(downFile);
		
		buf = new BufferedInputStream(fin);
		
		int readBytes = 0;
		
		System.out.println("팡리다운리ㅓㄴ미;런ㅇ러ㅣ;ㅁㄴㅇ러" + buf);
		
		while((readBytes = buf.read()) != -1) {
			downOut.write(readBytes);
		}
		
		downOut.close();
		buf.close();
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
