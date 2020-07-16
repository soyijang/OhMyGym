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
		bottom: 540px;
		left:  920px;
	}
	#title{
		font-size: 25px;
		font-weight: bold;
	}
</style>
<body>
	
	<%@ include file="../../common/managerNav.jsp" %>
	<div id="main">
		<div id="title">챌린지 목록관리</div>
		<form action="<%=request.getContextPath()%>/insert.mch" method="post">
			<table id="tables">
				<tr id="trs">
					<td class="back">진행현황</td>
					<td>
					<select name="category">
						<option value="10">모집중</option>
						<!--  <option value="20">종료</option> -->
					</select>
					</td>
					<td class="back">한도금액</td>
					<td><input type="text" name="payLimit">원</td>
				</tr>
				<tr id="trs">
					<td class="back">제목</td>
					<td><input type="text" name="title" style="width: 350px;"></td>
					<td class="back">모집인원</td>
					<td><input type="text" name="limit"></td>
				</tr>
				
				<tr id="trs">
					<td class="back">모집기간</td>
					<td><input type="text" name="startDate">&nbsp;~&nbsp;<input type="text" name="endDate"></td>
					<td class="back">진행기간</td>
					<td><input type="text" name="ingStartDate">&nbsp;~&nbsp;<input type="text" name="ingEndDate"></td>
				</tr>
				<tr>
					<td class="back">내용</td>
					<td colspan="3"><textarea rows ="20" cols="130" name="content"></textarea></td>
				</tr>
				<tr>
					<td class="back">첨부파일</td>
					<td><input type="file" name="file"></td>
				</tr>
			</table>
			<div><input type="submit" value="저장하기" id="button"></div>
		</form>
	</div>
</body>
</html>