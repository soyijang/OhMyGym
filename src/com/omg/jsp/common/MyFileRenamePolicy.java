package com.omg.jsp.common;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;

import com.oreilly.servlet.multipart.FileRenamePolicy;

//오버라이드가 강제화된 메소드. 오버라이딩된 메소드가 우선권을 가지기때문에(동적바인딩)우리가 작성한게 우선이 된다.
public class MyFileRenamePolicy implements FileRenamePolicy {

	@Override
	public File rename(File oldFile) {
		
		long currentTime = System.currentTimeMillis();
		
		SimpleDateFormat ft = new SimpleDateFormat("yyyyMMddHHmmss");
		
		//겹치지 않게 랜덤수 발생시켜서 붙여
		int randomNumber = (int) (Math.random() *100000);
		
		String name = oldFile.getName();
		
		// 파일명에 들어있는 확장자를 미리 . 뒤부터 빼놔
		String body = "";
		String ext = "";
		int dot = name.lastIndexOf("."); //. 의 위치를 int로 반환함.
		
		//확장자가 있는지 없는지 확인
		if(dot != -1) {
			//확장자가 있는 경우
			body = name.substring(0, dot);
			ext = name.substring(dot);
			
		}else {
			//확장자가 없는 경우
			body = name;
		}

		String fileName = ft.format(new Date(currentTime)) + randomNumber + ext;
		File newFile = new File(oldFile.getParent(), fileName);
		
		return newFile;
	}

	
	
}
