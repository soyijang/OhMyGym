<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, com.omg.jsp.trainerCurriculum.model.vo.*, com.omg.jsp.trainerVideo.model.vo.*"%>
<% HashMap<String, Object> curriInfo = (HashMap) request.getAttribute("curriInfo");
	ArrayList<TrainerCurriculum> curriculum = (ArrayList<TrainerCurriculum>) curriInfo.get("curriculum");
	ArrayList<TrainerVideo> video = (ArrayList<TrainerVideo>) curriInfo.get("video");
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
        margin-left: 10px;
        width: 827px;
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
    #cMenu a {
        text-decoration: none;
    }
    #showVideoList {
    	 margin-left: 20px; 
    	 margin-top: 20px; 
    	 width:773px; 
    	 text-align: center;
    	 border-collapse: collapse;
    	 border-bottom: 5px double gray;
    }
    #showVideoList td {
    	height: 30px;
    	font-size: 13px;
    	border-bottom: 1px solid gray;
    }
    .curriArea {
    	width: 200px;
    	height: 160px;
    	border: 1px solid gray;
    	border-radius: 10px 10px 10px 10px;
    	display: inline-block;
    	margin-left: 50px;
    	margin-top: 50px;
    }
    .curriArea:hover {
		background: orangered;
		color: white;
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
                <h1 style="margin-top: 6px;">&nbsp;&nbsp;&nbsp;커리큘럼 관리</h1>
            </div>
        </article>
        <!--커리큘럼 관리 타이틀 종료-->

        <!--커리큘럼메뉴-->
        <article id="curriculumMenu" style="float: left;">
            <div id="cMenu">
                <table>
                    <tr><td style="font-size: 15px; font-weight: bold; border-bottom: 2px solid gray;"><a href="">커리큘럼 전체 보기</a></td></tr>
                    <% for(int i = 0; i < curriculum.size(); i++) { %>
	                    <tr>
	                    	<td>
	                    		<a onclick="moveCurri();"><%= curriculum.get(i).getCurriculumTitle() %></a>
	                    		<input type="hidden" value="<%= curriculum.get(i).getCurriculumCode() %>" id="curriCode">
	                    	</td>
	                    </tr>
                    <% } %>
                </table>
	
                <div id="cMenuButtonArea" align="center">
                    <button class="button" style="font-size: 10px;">추가</button>
                    <button class="button" style="margin-left: 10px; font-size: 10px;">삭제</button>
                </div>
            </div>
        </article>
        <!--커리큘럼메뉴 종료-->

        <!--커리큘럼 출력-->
        <article id="showMediaArea">
            <div style="overflow: auto;" id="outline">
                <%-- <table id="showVideoList">
                    <tr>
                        <th colspan="3" style="border-bottom: 5px double gray; text-align: left;">커리큘럼 전체 보기</th>
                    </tr>
                    <tr>
	                	<th style="width: 70px;">No.</th>
	                	<th style="width: 550px;">동영상 제목</th>
	                	<th>업로드 시간</th>
	                </tr>
                    <% for(int i = 0; i < video.size(); i++) { %>
	                <tr>
	                	<td><%= video.size() - i %></td>
	                	<td style="padding-left: 30px; text-align: left;"><%= video.get(i).getVideoTitle() %></td>
	                	<td><%= video.get(i).getTrainerUploadDate() + " " + video.get(i).getTrainerUploadTime() %></td>
	                </tr>
	            	<% } %>
                </table> --%>
                <% if(curriculum.size() > 0) { %>
                
	                <% for(int i = 0; i < curriculum.size(); i++) { %>
	                
	                	<div class="curriArea" style="vertical-align: middle; text-align: center;"  onclick="showCurri('<%= curriculum.get(i).getCurriculumCode() %>');">
	                		<div style="height: 35px; vertical-align: middle; font-weight: bold; font-size: 1.2em; margin-top: 65px;">
	                			<%= curriculum.get(i).getCurriculumTitle() %>
	                		</div>
<%-- 	                		<div style="height: 35px; font-size: 0.85em;">저장 된 영상 수 <b><%= video.get(i).getTrainerVideoCode() %></b>개</div>
 --%>	                	</div>
	                
	                <% } %>
	                
	           	<% } %>
	           	<script>
	           		function showCurri(curriculumCode) {
	           			var curriCode = curriculumCode;
	           			console.log(curriCode);
	           			
	           		 	$.ajax({
	           				url: "selectVideo.cu",
	           				data: {
	           					curriCode: curriCode
	           				},
	           				type: "get",
	           				success: function(data) {
	           					console.log("성공");
	           				},
	           				error: function(data) {
	           					console.log("실패");
	           				}
	           			});
	           		}
	           	</script>
                
            </div>
        </article>
        <!--커리큘럼 출력 종료-->
        <article id="addMediaBtnArea">
            <button id="addMediaBtn">동영상 추가</button>
        </article>
    </section>
    <br><br><br><br>
    <!--footer start-->
    <%@ include file="../../common/footer.jsp"%>
    <!--footer end-->
    
</body>
</html>