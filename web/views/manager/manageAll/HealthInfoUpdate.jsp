<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.omg.jsp.notice.model.vo.HealthInfo, com.omg.jsp.member.model.vo.*"%>
	<% 
	HealthInfo healthInfo = (HealthInfo) request.getAttribute("healthInfo");
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<style>
table {
	border:1px solid gray;
	margin-left: auto;
	text-align: center;
	background: #efefef;
}
td {
	border-bottom: 1px solid gray;
}
caption {
	margin-left: 50%;
}
#text {
	margin-left: 10%;
}
legend { 
	margin-left: 3%;
}
 #searchArea {
    display: inline-block;
    width: 400px;
    position: absolute;
    top: 130px;
    left: 1180px;
    margin: 0;
        }
 #btn1 {
 	width: 80px;
 	height: 30px;
 	background: #1F0076;
 	color: white;
 	border: 0px;
 	
 }

</style>
</head>
<body>

	    <%@ include file="../../common/managerNav.jsp" %> 

	<!--content-->

	<h2 style="margin-left: 250px; margin-top: 40px; font: bold;">건강정보 게시판</h2>
	<br>

	<br><br>
	<form id="updateForm" action="<%=request.getContextPath()%>/healthInfoUpdateComplete.no" method="post">
	<input type="text" name="boardNum" value="<%=healthInfo.getBoardNum()%>" style="display: none;">
	<script>
		console.log("<%=healthInfo.getBoardNum()%>");
	</script>
	<table>
	<tr>
		<td width="300px" height="50px" style="text-align: left; background:#e3e3e3;"><a id="text">항복구분</a></td>
		<td width="850px" height="50px"><legend align="left">
			<input type="text" name="managerId" value="<%=loginManager.getManagerId()%>" style="display: none;">
			<input type="radio" id="category" name="category" value="이용약관변경"><label>식단정보</label>&nbsp;&nbsp;
			<input type="radio" id="category" name="category" value="기능안내"><label>운동정보</label>&nbsp;&nbsp;
			<input type="radio" id="category" name="category" value="버그수정안내"><label>건강정보</label>&nbsp;&nbsp;
			<input type="radio" id="category" name="category" value="기타"><label>기타</label>&nbsp;&nbsp;
		</legend></td>
	
	</tr>

	<tr>
		<td width="300px" height="80px" style="text-align: left; background:#e3e3e3;"><a id="text">게시일</a></td>
		<td width="850px" height="80px"><legend align="left"><input type="date" name="writedate" value="<%=healthInfo.getWritedate() %>"></legend></td>
<%-- 		<td width="850px" height="80px"><legend align="left"><input type="date" name="writedate" value="<%=notice.getWritedate() %>"></legend></td> --%>
<!-- 		<td width="850px" height="80px"><legend align="left"><input type="date" name="writedate" value="2012-07-16"></legend></td> -->
	</tr>
	<tr>
		<td width="300px" height="50px" style="text-align: left; background:#e3e3e3;"><a id="text">공개상태</a></td>
		<td width="850px" height="50px"><legend align="left">
			<input type="radio" id="status" name="status" value="Y"><label>공개</label>&nbsp;&nbsp;
			<input type="radio" id="status" name="status" value="N"><label>비공개</label>&nbsp;&nbsp;
		</legend></td>
	</tr>
	
	<tr>
		<td width="300px" height="80px" style="text-align: left; background:#e3e3e3;"><a id="text">제목</a></td>
		<td width="850px" height="90px"><legend align="left">
		<textarea rows="3px" cols="120px" style="resize: none;" name="title"><%=healthInfo.getBoardTitle()%></textarea></td>
		</legend>
	</tr>
	<tr>
		<td width="300px" height="100px" style="text-align: left; background:#d1d1d1;"><a id="text">내용작성</a></td>
		<td width="850px" height="100px"><legend align="left">
		<textarea rows="20px" cols="120px" style="resize: none;" name="content"><%=healthInfo.getBoardContent()%></textarea> </legend>
		</td>
	
	</tr>
	<tr>
		<td width="300px" height="80px" style="text-align: left; background:#e3e3e3;"><a id="text">첨부파일</a></td>
		<td width="850px" height="80px"><legend align="left"><input type="file"></legend></td>
	
	</tr>
	</table>
	<p style="margin-left: 20%;">※ 이미지는 png, jpg 확장자파일만 업로드 가능하며, 최대 100MB 까지만 업로드 가능합니다.</p>
		<div style="text-align: right;">
		<button id="btn1" onclick="location.href='<%=request.getContextPath()%>/deleteHealthInfo.no?num=<%=healthInfo.getBoardNum()%>'">삭제</button>
		&nbsp;&nbsp;&nbsp;
<%-- 		<button id="btn1" onclick="location.href='<%=request.getContextPath()%>/updateNotice.no?num=<%=notice.getBoardNum()%>'">수정</button> --%>
		<input id="btn1" type="submit" value="수정">
	</div>
	</form>

	
	
		
	<script type="text/javascript">
     $(document).ready(function(){
     $("input[type='radio'][name='category'][value='<%=healthInfo.getBoardCategory() %>']").prop("checked", true);
      })
      
      $(document).ready(function(){
     $("input[type='radio'][name='status'][value='<%=healthInfo.getStatus() %>']").prop("checked", true);
      })
    </script>

</body>
</html>