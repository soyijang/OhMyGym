<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
table {
	margin-left: auto;
	text-align: center;
	padding: 30px;
	border-collapse: collapse;
}
th {
	border-bottom: 4px solid black;
}

td {
	border-bottom: 1px solid gray;
	
}

</style>
</head>
<body>

	<%@ include file="../../common/managerNav.jsp"%>

	<!--content-->

	<h2 style="margin-left: 250px; margin-top: 40px; font: bold;">이벤트 관리</h2>
	<br>

	<div style="margin-left: 250px">
		<a href=""><img src="../../../resources/img/상세정보버튼eventing1.png"></a>&nbsp;&nbsp;&nbsp;
		<a href=""><img src="../../../resources/img/상세정보버튼eventend.png"></a>
		<hr>
		<br>
		<br>
		<h3>진행중인 이벤트 목록</h3>

		<div style="text-align: right;">
			<a href=""><img src="../../../resources/img/상세정보버튼write.png"></a>
		</div>
	</div>

	<table>
		<tr>
			<th width="100px">NO</th>
			<th width="450px" style="text-align: center;">제목</th>
			<th width="150px">작성자</th>
			<th width="150px">조회수</th>
			<th width="150px">작성일</th>
			<th width="150px">종료일</th>
		</tr>

		<tr>
			<td><div style="margin: 10px;">1</div></td>
			<td>홈트를 완벽히 즐기기 위한 나만의 코디를 인증해주세요!</td>
			<td>관리자</td>
			<td>5747</td>	
			<td><input type="date"></td>
			<td><input type="date"></td>
		</tr>
		<tr>
			<td><div style="margin: 10px;">2</div></td>
			<td>SNS에 운동 사진을 찍어서 인증해주세요!</td>
			<td>관리자</td>
			<td>8365</td>	
			<td><input type="date"></td>
			<td><input type="date"></td>
		</tr>
		<tr>
			<td><div style="margin: 10px;">3</div></td>
			<td>봄철 운동을 공유해주세요!</td>
			<td>관리자</td>
			<td>8134</td>	
			<td><input type="date"></td>
			<td><input type="date"></td>
		</tr>	
	</table>

	<div style="vertical-align: bottom; text-align: right;">
		<a href="";><img src="../../../resources/img/Group 248trainer.png"></a>&nbsp;&nbsp;
		<a href="";><img src="../../../resources/img/Group 249user.png"></a>
	</div>

</body>
</html>