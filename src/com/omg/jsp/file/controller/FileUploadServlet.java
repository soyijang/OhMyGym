package com.omg.jsp.file.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.google.gson.Gson;
import com.omg.jsp.common.MyFileRenamePolicy;
import com.omg.jsp.file.model.service.FileService;
import com.omg.jsp.file.model.vo.Files;
import com.oreilly.servlet.MultipartRequest;

/**
 * Servlet implementation class FileUploadServlet
 */
@WebServlet("/upFile.all")
public class FileUploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public FileUploadServlet() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		if(ServletFileUpload.isMultipartContent(request)) {
			
			int maxSize = 1024 * 1024 * 10;
			
			String root = request.getSession().getServletContext().getRealPath("/");
			
			String savePath = root + "resources/test";//루트와 같이 저장할게 아니라 경로만 저장하면 어떻게 됨?
			
			MultipartRequest multiRequest = new MultipartRequest(request, savePath, maxSize, "UTF-8", new MyFileRenamePolicy());
	
			ArrayList<String> saveFiles = new ArrayList<>();
			ArrayList<String> originFiles = new ArrayList<>();

			Enumeration<String> files = multiRequest.getFileNames();
			
			
			while(files.hasMoreElements()) {
				String name = files.nextElement();
				
				System.out.println("name : " + name);
				
				saveFiles.add(multiRequest.getFilesystemName(name));
				originFiles.add(multiRequest.getOriginalFileName(name));
			}
			
			System.out.println("세파:" + saveFiles);
			System.out.println("오파:" + originFiles);
			
			Files upfile = new Files();
			
			for(int i = originFiles.size() -1 ; i >= 0; i--) {
				savePath =  "resources/test";
				upfile.setFilePath(savePath);
				upfile.setFileOriginName(originFiles.get(i));
				upfile.setFileManageName(saveFiles.get(i));
			}
			
			
			Files myFile = new FileService().fileUpload(upfile);
			
			response.setContentType("application/json");
			response.setCharacterEncoding("UTF-8");
			new Gson().toJson(myFile, response.getWriter());
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
