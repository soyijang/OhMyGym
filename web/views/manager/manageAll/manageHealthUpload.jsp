<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	#main {
		position: absolute;
		top: 150px;
		left: 300px;
	}
	.back {
		background: darkgray;
		font-weight: bold;
		padding: 10px;
	}
	#tables{
		border-top: 2px solid black;
		width: 1000px;
		border-bottom: 1px solid gray;
	}
	#trs {
		border-bottom: 1px solid gray;
		width: 1000px;
	}
	#button {
		background: orangered;
		color: white;
		font-weight: bold;
		padding: 3px;
		position: absolute;
		left:  920px;
		top: 1px;
	}
	#title{
		font-size: 25px;
		font-weight: bold;
	}
</style>
<body>
	
	<%@ include file="../../common/managerNav.jsp" %>
	<div id="main">
		<div id="title">건강정보 게시판</div>
			<table id="tables">
				<tr id="trs">
					<td class="back">제목</td>
					<td><input type=text name=title style="width: 700px;"></td>
					<td class="back">진행현황</td>
					<td>
					<select>
						<option>식단 정보</option>
						<option>운동 정보</option>
						<option>건강 정보</option>
					</select>
					</td>
				</tr>
				<tr>
					<td class="back">첨부파일</td>
					<td><input type=file></td>
				</tr>
				<tr>
					<td class="back">내용</td>
					<td colspan="3"><textarea rows ="20" cols="130"></textarea></td>
				</tr>
			</table>
			<div><input type="submit" value="저장하기" id="button"></div>
	</div>
</body>
</html>