package com.omg.jsp.followerFeedbackRoom.controller;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.omg.jsp.common.MyFileRenamePolicy;
import com.omg.jsp.file.model.service.FileService;
import com.omg.jsp.file.model.vo.Files;
import com.omg.jsp.followerFeedbackRoom.model.service.FeedbackRoomService;
import com.omg.jsp.member.model.vo.Member;
import com.oreilly.servlet.MultipartRequest;

/**
 * Servlet implementation class InsertFeedbackServlet
 */
@WebServlet({ "/InsertFeedbackServlet", "/insert.feedback" })
public class InsertFeedbackServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public InsertFeedbackServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(ServletFileUpload.isMultipartContent(request)) {

			//최대 크기가 0보다 작을 경우 용량 무제한
			int maxSize = 1024 * 1024 * 20;

			//			String root = request.getSession().getServletContext().getRealPath("/");
			String root = request.getSession().getServletContext().getRealPath("/");
			System.out.println("root : " + root);

			String savePath = root + "resources/feedback";//루트와 같이 저장할게 아니라 경로만 저장하면 어떻게 됨?

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
			
			Files upfile = new Files();
			
			if(originFiles != null) {
				savePath =  "resources/feedback";
				System.out.println("savePath : " + savePath);
				upfile.setFilePath(savePath);
				upfile.setFileOriginName(originFiles);
				upfile.setFileManageName(saveFiles);
			}
			
			Files myFile = new FileService().fileUpload(upfile);
			
			String filecode = new FileService().selectOneFileCode(saveFiles);
			
			String feedbackTitle = multiRequest.getParameter("feedbackTitle");
			String feedbackContent = multiRequest.getParameter("feedbackContent");
			Member loginUser = (Member) request.getSession().getAttribute("loginUser");
			String memberId = loginUser.getMemberId();
			System.out.println("feedbackTitle : " + feedbackTitle);
			System.out.println("feedbackContent : " + feedbackContent);
			
			String requestManageCode = new FeedbackRoomService().selectRequestManageCode(memberId);
			
			int insertResult = new FeedbackRoomService().insertFeedback(feedbackTitle, feedbackContent, filecode, requestManageCode);
			
			String page = "";
				if(insertResult > 0) {
					page = "views/follower/followerOhMyGym/insertFeedbackResultPage.jsp";
				} else {
					page = "views/common/errorPage.jsp";
					request.setAttribute("msg", "피드백 업로드 실패");
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
