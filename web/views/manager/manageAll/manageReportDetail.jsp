<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

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
 <%@ include file="../../common/managerNav.jsp" %>
	<h2 style="margin-left: 250px; margin-top: 40px; font: bold;">신고내역 상세보기</h2>
	<br>
	
	<div style="margin-left: 200px;">
	<table>
	<tr>
		<td width="300px" height="80px" style="text-align: left; background:#e3e3e3;"><a id="text">신고날짜</a></td>
		<td width="700px" height="80px"><legend align="left"><input type="date"></legend></td>
	</tr>
	<tr>
		<td width="300px" height="40px" style="text-align: left; background:#e3e3e3;"><a id="text">신고URL</a></td>
		<td width="700px" height="40px"><textarea rows="1px" cols="100px" style="resize: none;">
		</textarea></td>
	</tr>
	<tr>
		<td width="300px" height="50px" style="text-align: left; background:#e3e3e3;"><a id="text">제목</a></td>
		<td width="700px" height="50px"><textarea rows="2px" cols="100px" style="resize: none;">
		</textarea></td>
	</tr>
	<tr>
		<td width="300px" height="90px" style="text-align: left; background:#d1d1d1;"><a id="text">내용</a></td>
		<td width="700px" height="90px"><textarea rows="13px" cols="100px" style="resize: none;">
		</textarea> 
		</td>
	
	</tr>
	<tr>
		<td width="300px" height="80px" style="text-align: left; background:#e3e3e3;"><a id="text">첨부파일</a></td>
		<td width="850px" height="80px"><legend align="left"><input type="file"></legend></td>
	
	</tr>
	</table>
	
</div>
<br>
	<div style="text-align: right;">
		<a href=""><img src="../../resources/img/Group 71cancel.png"></a>
		&nbsp;&nbsp;&nbsp;
		<a href=""><img src="../../resources/img/Group 59save.png"></a>
	</div>
	
</body>
</html>