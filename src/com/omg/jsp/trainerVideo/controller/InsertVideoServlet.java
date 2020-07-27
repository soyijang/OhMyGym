package com.omg.jsp.trainerVideo.controller;

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
import com.omg.jsp.member.model.vo.Member;
import com.omg.jsp.trainerCurriculum.model.service.TrainerCurriculumService;
import com.omg.jsp.trainerCurriculum.model.vo.TrainerCurriculum;
import com.omg.jsp.trainerVideo.model.service.TrainerVideoService;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

/** 
 * Servlet implementation class InsertVideoServlet
 */
// ===============================================================동영상 추가 서블렛
@WebServlet("/insertVideo.vo")
public class InsertVideoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertVideoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		request.setCharacterEncoding("UTF-8");
		
			if(ServletFileUpload.isMultipartContent(request)) {
			
			//최대 크기가 0보다 작을 경우 용량 무제한
			int maxSize = 1024 * 1024 * 5000;
			
//			String root = request.getSession().getServletContext().getRealPath("/");
			String root = request.getSession().getServletContext().getRealPath("/");
			System.out.println("root : " + root);
			
			String savePath = root + "resources/curriculum";//루트와 같이 저장할게 아니라 경로만 저장하면 어떻게 됨?
			
			MultipartRequest multiRequest = new MultipartRequest(request, savePath, maxSize, "UTF-8", new MyFileRenamePolicy());
			
			System.out.println("multirequest : " + multiRequest);
	
			String saveFiles = "";
			String originFiles = "";

			Enumeration<String> files = multiRequest.getFileNames();
			
			if(files.hasMoreElements()) {
				String name = files.nextElement();
				
				System.out.println("name : " + name);
				
				saveFiles = multiRequest.getFilesystemName(name);
				originFiles = multiRequest.getOriginalFileName(name);
			}
			
			System.out.println("세파:" + saveFiles);
			System.out.println("오파:" + originFiles);
			
			String videoTitle = multiRequest.getParameter("mediaTitle");
			System.out.println("title : " + videoTitle);
			
			Member loginUser = (Member) request.getSession().getAttribute("loginUser");
			String memberId = loginUser.getMemberId();
			System.out.println("memberId : " + memberId);
			
			String curriCode = multiRequest.getParameter("curriCode");
			System.out.println("curriCode : " + curriCode);
			if(curriCode.equals("other")) {
				String newCurriculumTitle = multiRequest.getParameter("newCurriculumTitle");
				System.out.println("controller : " + newCurriculumTitle);
				int newCurriResult = new TrainerCurriculumService().insertCurriculum(newCurriculumTitle, memberId);
			}
			
			Files upfile = new Files();
			
			if(originFiles != null) {
				savePath =  "resources/curriculum";
				System.out.println("savePath : " + savePath);
				upfile.setFilePath(savePath);
				upfile.setFileOriginName(originFiles);
				upfile.setFileManageName(saveFiles);
			}
			
			Files myFile = new FileService().fileUpload(upfile);
			
			String filecode = new FileService().selectOneFileCode(saveFiles);
			
			System.out.println("filecode : " + filecode);
			
			int insertTrainerVideo = new TrainerVideoService().insertTrainerVideo(videoTitle, memberId, curriCode, filecode);
			
			String page = "";
			if(myFile != null && insertTrainerVideo > 0) {
				page = "views/trainer/trainerOhMyPt/insertVideoResultPage.jsp";
			} else {
				page = "views/common/errorPage.jsp";
				request.setAttribute("msg", "트레이닝 영상 업로드 실패");
			}
			request.getRequestDispatcher(page).forward(request, response);
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