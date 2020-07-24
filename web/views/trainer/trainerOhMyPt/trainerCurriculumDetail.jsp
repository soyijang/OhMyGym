<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, com.omg.jsp.trainerCurriculum.model.vo.*, com.omg.jsp.trainerVideo.model.vo.*"%>
<% 
	HashMap<String, Object> videoListnCurriculum = (HashMap<String, Object>) request.getAttribute("videoListnCurriculum");
	ArrayList<TrainerVideo> videoList = (ArrayList<TrainerVideo>) videoListnCurriculum.get("videoList");
	HashMap<String, String> curriculum = (HashMap<String, String>) videoListnCurriculum.get("curriculum");
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
    #showMediaArea th {
        height: 42px;
        font-size: 15px;
        border-bottom: 5px double gray;
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
    }
    #showVideoList td {
    	height: 30px;
    	font-size: 13px;
    	border-bottom: 1px solid gray;
    }
    #titleArea a:hover {
    	cursor: pointer;
    	color: orangered;
    }
    .video-list:hover {
    	cursor: pointer;
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
            <div style="overflow: auto;" id="outline">
                <table id="showVideoList">
                    <tr>
                        <th colspan="3" style="border-bottom: 5px double gray; text-align: left;"><%= curriculum.get("title") %></th>
                    </tr>
                    <tr>
	                	<th style="width: 70px;">No.</th>
	                	<th style="width: 550px;">동영상 제목</th>
	                	<th>업로드 시간</th>
	                </tr>
                    <% for(int i = 0; i < videoList.size(); i++) { %>
		                <tr class="video-list">
		                	<td style="display:none;"><input type="hidden" name="videoCode" value="<%= videoList.get(i).getTrainerVideoCode() %>"></td>
		                	<td><%= videoList.size() - i %></td>
		                	<td style="padding-left: 30px; text-align: left;"><%= videoList.get(i).getVideoTitle() %></td>
		                	<td><%= videoList.get(i).getTrainerUploadDate() + " " + videoList.get(i).getTrainerUploadTime() %></td>
		                </tr>
	            	<% } %>
                </table>

	           	<script>
	           			$(function() {
	        				$(".video-list").click(function() {
	        					//var num = $(this).children().childred().eq(0).val();
	        					var num = $(this).find("input").val();
	        					console.log(num);
	        					location.href="<%= request.getContextPath()%>/selectOne.vi?num=" + num;
	        				});
	        			});
	           	</script>
            </div>
        </article>
        <!--커리큘럼 출력 종료-->
        <article id="addMediaBtnArea">
        	<form action="<%= request.getContextPath() %>/insertVideo.vo" method="post">
        		<input type="hidden" value="<%= curriculum.get("title") %>" name="title">
        		<input type="hidden" value="<%= curriculum.get("code") %>" name="code">
            	<button type="submit" id="addMediaBtn" onclick="addVideo();">동영상 추가</button>
            </form>
        </article>
    </section>
    <br><br><br><br>
    <!--footer start-->
    <%@ include file="../../common/footer.jsp"%>
    <!--footer end-->
    
</body>
</html>