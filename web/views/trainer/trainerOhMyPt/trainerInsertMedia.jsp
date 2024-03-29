<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, com.omg.jsp.trainerCurriculum.model.vo.*"%>
<% HashMap<String, Object> hmap = (HashMap<String, Object>) request.getAttribute("curriculum");
	ArrayList<TrainerCurriculum> curriculum = (ArrayList<TrainerCurriculum>) hmap.get("curriculum");
%>
<!DOCTYPE html> 
<html lang="ko">
<head>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
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
        height: 500px;
        margin-left: 40px;
        margin-top: 10px;
        padding: 10px;
    }
    #curriculumMenu div table {
        text-align: center;
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
    #inputMediaArea #inputMedia{
        display:inline-block; 
        border: 2px double gray; 
        margin-top: 10px; 
        margin-left: 40px;
        width: 1000px;
        height: 520px;
    }
    #cMenuButtonArea {
        position: absolute;
        display: inline-block;
        width: 130px;
        height: 20px;
        font-size: 5px;
        top: 650px;
        left: 258px;
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
        text-align: center;
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

    #mediaTitle {
        border: none;
        width: 955px;
    } 
    #inputMediaArea .inputMediaTd {
        border-bottom: 1px solid gray; 
        text-align: left;
        margin: 10px;
        width: 750px; 
        height: 30px; 
        padding-top: 5px;
        padding-bottom: 5px;
    }
    </style>
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

        <!--커리큘럼 입력-->
        <article id="inputMediaArea">
            <div id="inputMedia">
        		<form action="<%= request.getContextPath() %>/insertVideo.vo" method="post" enctype="multipart/form-data" id="uploadVideoForm">
	                <table style="margin: 20px; width:955px;" id="inputMediaTable">
	                    <tr>
	                        <td class="inputMediaTd"><input type="text" name="mediaTitle" id="mediaTitle" placeholder="동영상 제목을 입력하세요."></td>
	                    </tr>
	                    <tr>
	                        <td class="inputMediaTd">
	                            <select name="curriCode" id="curriCode" style="height: 25px;">
	                            	<% for(int i = 0; i < curriculum.size(); i++) { %>
	                                <option value="<%=curriculum.get(i).getCurriculumCode()%>"><%=curriculum.get(i).getCurriculumTitle()%></option>
	                                <% } %>
	                                <option value="other">커리큘럼 추가</option>
	                            </select>
	                            <!--select- option이 커리큘럼 추가일 때 display 속성값 변경-->
	                            <input id="newCurriculum" name="newCurriculumTitle" type="text" style="margin-left: 10px; border: none; width: 800px; display: none;" placeholder="생성할 커리큘럼 제목을 입력하세요.">
	                        </td>
	                    </tr>
	                    <tr style="height: 350px; vertical-align: top;">
	                        <td style="height: 25px; border: none;">	
	                            <input type="file" name="files" style="border:none; margin-top:5px;">
	                        </td>
	                    </tr>
	                    <tr id="addMediaBtnArea">
	                    	<td><button id="addMediaBtn">동영상 추가</button></td>
	                    </tr>
	                </table>
        		</form>
            </div>
        </article>
        <!--커리큘럼 입력 종료-->
        
        <script>
        	$("#curriCode").change(function() {
        		console.log($("#curriCode").val());
        		 if($("#curriCode option:selected").val() == 'other') {
             		$("#newCurriculum").css("display", "inline-block");
             	} else {
             		$("#newCurriculum").css("display", "none");
             	}
        	});
        </script>
    </section>
    <br><br><br><br>
    <!--footer start-->
    <%@ include file="../../common/footer.jsp"%>
    <!--footer end-->
    
</body>
</html>