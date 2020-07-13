<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

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

</style>
</head>
<body>

	<%@ include file="../../common/managerNav.jsp"%>

	<!--content-->

	<h2 style="margin-left: 250px; margin-top: 40px; font: bold;">이벤트 관리</h2>
	<br>

	<div style="margin-left: 250px">
		<a href=""><img src="../../resources/img/상세정보버튼eventing1.png"></a>&nbsp;&nbsp;&nbsp;
		<a href=""><img src="../../resources/img/상세정보버튼eventend.png"></a>
		<hr>
		<br>
		<h2>이벤트 작성</h2>
	</div>
	<br><br>

	<table>
	<tr>
		<td width="300px" height="80px" style="text-align: left; background:#e3e3e3;"><a id="text">이벤트 날짜</a></td>
		<td width="850px" height="80px"><legend align="left"><input type="date">&nbsp;&nbsp;~&nbsp;&nbsp;<input type="date"></legend></td>
	</tr>
	<tr>
		<td width="300px" height="80px" style="text-align: left; background:#e3e3e3;"><a id="text">제목</a></td>
		<td width="850px" height="90px"><legend align="left"><textarea rows="3px" cols="120px" style="resize: none;">
		
		여름맞이 운동 어떻게 하고 계시나요? 나만의 꿀팁 공유해주세요!</textarea></td>
		</legend>
	</tr>
	<tr>
		<td width="300px" height="100px" style="text-align: left; background:#d1d1d1;"><a id="text">내용작성</a></td>
		<td width="850px" height="100px"><legend align="left"><textarea rows="20px" cols="120px" style="resize: none;">
		
		안녕하세요 고객님,
		
		오늘도 오마이짐을 찾아주셔서 감사합니다. 
		6월 ﻿13일(토) ~ 6월 30일(화) <여름맞이 나만의 꿀팁 공유 EVENT>가 진행됩니다!
		* 20명씩 추첨 진행</textarea> </legend>
		</td>
	
	</tr>
	<tr>
		<td width="300px" height="80px" style="text-align: left; background:#e3e3e3;"><a id="text">첨부파일</a></td>
		<td width="850px" height="80px"><legend align="left"><input type="file"></legend></td>
	
	</tr>
	</table>
	<p style="margin-left: 20%;">※ 이미지는 png, jpg 확장자파일만 업로드 가능하며, 최대 100MB 까지만 업로드 가능합니다.</p>

	<div style="text-align: right;">
		<a href=""><img src="../../resources/img/Group 71cancel.png"></a>
		&nbsp;&nbsp;&nbsp;
		<a href=""><img src="../../resources/img/Group 59save.png"></a>
	</div>



</body>
</html>