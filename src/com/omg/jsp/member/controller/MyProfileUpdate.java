package com.omg.jsp.member.controller;

import java.io.File; 
import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.omg.jsp.common.MyFileRenamePolicy;
import com.omg.jsp.member.model.service.MemberService;
import com.omg.jsp.member.model.vo.Attachment;
import com.omg.jsp.member.model.vo.Member;
import com.oreilly.servlet.MultipartRequest;

/**
 * Servlet implementation class InsertThumbnailServlet
 */
@WebServlet("/insert.pf")
public class MyProfileUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public MyProfileUpdate() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {


		// 폼전송을 multipart/form-data로 전송하는 경우에는
		// 기존처럼 request.getParameter로 값을 받을 수 없다.
		// cos.jar가 파일도 받고 폼의 다른 값들도 받아주는 역할을 한다.
		System.out.println("프로필 업로드 서블릿 호출");
		if (ServletFileUpload.isMultipartContent(request)) {
			// 전송 파일 용량 제한 : 10Mbyte로 제한
			int maxSize = 1024 * 1024 * 10;

			// 웹 서버 컨테이너 경로 추출
			// getSession객체 안에잇는 '세션이 발급된 톰켓의 경로'를 가져옴
			String root = request.getSession().getServletContext().getRealPath("/");

			// 파일 저장 경로 설정
			String savePath = root + "/views/follower/followerMypage/profile_uploadFiles/";

			//파일이름 재정의
			MultipartRequest multiRequest = new MultipartRequest(request, savePath, maxSize, "UTF-8",
					new MyFileRenamePolicy());

			// 저장한 파일의 이름을 저장할 arrayList 생성
			ArrayList<String> saveFiles = new ArrayList<>();

			// 원본 파일 이름을 저장할 arrayList 생성
			ArrayList<String> originFiles = new ArrayList<>();

			// 파일이 전송 된 폼의 name을 반환
			Enumeration<String> files = multiRequest.getFileNames();

			System.out.println(files);

			// 각 파일의 정보를 구해온 후 db에 저장할 목적의 데이터를 꺼내온다
			while (files.hasMoreElements()) {
				String name = files.nextElement();
				System.out.println("name : " + name);
				// 변경된 파일을 넣어줌?
				saveFiles.add(multiRequest.getFilesystemName(name));
				// 원본이름도 담아
				originFiles.add(multiRequest.getOriginalFileName(name));
			}
			System.out.println(saveFiles);
			System.out.println(originFiles);

			ArrayList<Attachment> fileList = new ArrayList<>();
			for (int i = originFiles.size() - 1; i >= 0; i--) {
				Attachment at = new Attachment();

				at.setFilePath(savePath);
				at.setOriginName(originFiles.get(i));
				at.setChangeName(saveFiles.get(i));

				fileList.add(at);
			}

			System.out.println(fileList);
			int result = new MemberService().insertProfile(fileList);
			System.out.println("result : " + result);

			if (result > 0) {
				response.sendRedirect(request.getContextPath() + "/selectList.tn");
			} else {
				for (int i = 0; i < saveFiles.size(); i++) {
					File failedFile = new File(savePath + saveFiles.get(i));
					failedFile.delete();
				}

				request.setAttribute("msg", "프로필사진 등록 실패!");
				request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);

			}
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
