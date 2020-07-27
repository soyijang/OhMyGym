<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, com.omg.jsp.trainerCurriculum.model.vo.*, com.omg.jsp.trainerVideo.model.vo.*, com.omg.jsp.file.model.vo.*"%>
<% 
	TrainerVideo video = (TrainerVideo) request.getAttribute("video");
	String curriTitle = (String) request.getAttribute("curriTitle");
	Files videoFile = (Files) request.getAttribute("file");
%>
<!DOCTYPE html>
<html lang="ko">
<head> 
    <meta charset="UTF-8">
    <style>
    * {
        font-family: "Noto Sans KR";
    }
    a {
        text-decoration: none;
        color: black;
    }
    #ohMyPtMenu td a {
        color: gray;
    }
    #titleArea div {
        border: 2px double gray; 
        display: inline-block; 
        width: 1000px; 
        height: 40px;
        margin-left: 40px;
        font-size: 14px;
    }
    #curriculumMenu #cMenu {
        border: 2px double gray;
        display: inline-block;
        width: 140px;
        height: 580px;
        margin-left: 40px;
        margin-top: 10px;
        padding: 10px;
    }
    #curriculumMenu div table {
        text-align: center;
        margin: 10px;
    }
    #curriculumMenu div table td {
        height: 40px;
        font-size: 14px;
    }
    #curriculumMenu a:hover {
        color: orangered;
    }
    #curriculumMenu button {
        border-top-left-radius: 20%;
        border-top-right-radius: 20%;
        border-bottom-left-radius: 20%;
        border-bottom-right-radius: 20%;
        border: 1px solid gray
    }
    #outline{
        display:inline-block; 
        border: 2px double gray; 
        margin-top: 10px; 
        margin-left: 40px;
        width: 1000px;
        height: 600px;
    }
    #cMenuButtonArea {
        position: absolute;
        display: inline-block;
        width: 130px;
        height: 20px;
        font-size: 5px;
        top: 751px;
        left: 265px;
    }
    #cMenuButtonArea button {
        width: 50px;
        height: 20px;
        font-weight: bold;
    }
    #cMenuButtonAre button {
        font-family: "Noto Sans KR";
    }
    img.ohfooter_logo{
        margin-left: -50%; 
        margin-bottom: 50%; 
        margin-top: 50%; 
    }
    #addMediaBtnArea {
        position: absolute;
        left: 417px;
        width: 827px;
        text-align: right;
    }
    #addMediaBtnArea button{
        background: orangered;
        border-style: none;
        color: white;
        font-weight: bold;
        height: 30px;
        width: 100px;
    }
    #showVideoList {
    	 margin: 0 auto;
    	 width:800px; 
    	 text-align: center;
    	 border-collapse: collapse;
    	 border-bottom: 5px double gray;
    	 border-top: 5px double gray;
    }
    #showMediaArea th {
    	width: 80px;
        height: 35px;
        font-size: 15px;
        background: lightgray;
    }
    #showVideoList tr {
    	border-bottom: 1px solid gray;
    }
    #showVideoList td {
    	/* height: 30px;
    	font-size: 13px; 
    	border-bottom: 1px solid gray;*/
    }
    #titleArea a:hover {
    	cursor: pointer;
    	color: orangered;
    }
	 #backBtn, #modifyBtn {
	 	width: 80px;
	 	height: 30px;
	 	background: orangered;
	 	color: white;
	 	border: 0px;
	 	margin-top: 5px;
	 }
    </style>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    
</head>
<body>
<%@ include file="../../common/trainerNav.jsp"%>
    <aside style="float: left;">
        <!--OH마이피티 메뉴-->
        <%@ include file="trainerOhMyPtAside.jsp" %>
        <!--OH마이피티 메뉴 종료-->
    </aside>

    <section>
        <!--커리큘럼 관리 타이틀-->
        <article id="titleArea">
            <div>
                <h1 style="margin-top: 6px;">&nbsp;&nbsp;&nbsp;<a href="<%= request.getContextPath() %>/selectCurriculumList.cu">커리큘럼 관리</a></h1>
            </div>
        </article> 
        <!--커리큘럼 관리 타이틀 종료-->

        <!--커리큘럼 출력-->
        <article id="showMediaArea">
            <div style="overflow: auto; " id="outline">
        	<div style="height: 40px;"></div>
                <table id="showVideoList">
                    <tr>
                        <th>커리큘럼</th>
                        <td id="curriTitle" style="width: 280px;"><%= curriTitle %></td>
                        <th>업로드일</th>
                        <td style="width: 200px;"><%= video.getTrainerUploadDate() + " " + video.getTrainerUploadTime() %></td>
                        <th>북마크 수</th>
                        <td><%= video.getBookmarkCount() %></td>
                    </tr>
                    <tr>
	                	<th>제목</th>
	                	<td colspan="5" style="text-align: left; padding-left: 30px;"><%= video.getVideoTitle() %>
	                </tr>
	                <tr>
                    	<th>첨부파일</th>
                    	<td colspan="5" style="text-align: left; padding-left: 30px;"><%= videoFile.getFileOriginName() %></td>
                    </tr>
                    <tr style="height: 400px;">
                    	<td colspan="6">
                    		<video style="width:400px; height: 250px;" controls>
                    			<source src="/omg/resources/curriculum/test.mp4">
                    		</video>
                    	</td>
                    </tr>
                </table>
            </div>
            <div style="text-align: right; width: 1240px;">
				<button id="backBtn" onclick="history.back(-1)">돌아가기</button>
				&nbsp;&nbsp;&nbsp;
				<%-- <%if(loginUser != null && loginUser.getMemberId().equals("admin01")) {%> --%>
				<button id="modifyBtn">수정</button>
				<%-- <%} %> --%>
			</div>
        </article>
        <!--커리큘럼 출력 종료-->
    </section>
    <br><br><br><br>
    <!--footer start-->
    <%@ include file="../../common/footer.jsp"%>
    <!--footer end-->
    
</body>
</html>