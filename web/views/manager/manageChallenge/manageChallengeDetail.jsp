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
		left: 830px;
	}
	#button_2 {
		background: blue;
		color: white;
		font-weight: bold;
		padding: 3px;
		position: absolute;
		left: 900px;
	}
	
	#button_3 {
		background: orangered;
		color: white;
		font-weight: bold;
		padding: 3px;
		position: absolute;
		left: 750px;
		top: 0px;
	}
	
	#button_4 {
		background: orangered;
		color: white;
		font-weight: bold;
		padding: 3px;
		position: absolute;
		left: 900px;
		top: 0px;
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
			<table id="tables">
				<tr id="trs">
					<td class="back">진행현황</td>
					<td>
					모집중
					</td>
					<td class="back">한도금액</td>
					<td>50,000</td>
				</tr>
				<tr id="trs">
					<td class="back">제목</td>
					<td>내 몸에 수분을 충전하자!</td>
					<td class="back">모집인원</td>
					<td>500명</td>
				</tr>
				<tr id="trs">
					<td class="back">모집기간</td>
					<td>2020-07-01 ~ 2020-07-06</td>
					<td class="back">진행기간</td>
					<td>2020-07-07 ~ 2020-07-21</td>
				</tr>
				<tr>
					<td class="back">내용</td>
					<td colspan="3" style="width: 600px; height: 500px;">
						<img src="../../resources/challengeImg/image 58.png"
						style="position: absolute; left: 430px; width: 300px; height: 150px; bottom: 310px;">
						하루에 물을 3잔씩 마셔 인증샷을 남겨주세요!<br>
				해당 챌린지는 매일 새벽 6시 기준으로 리셋됩니다.
					</td>
				</tr>
			</table>
			<br>
			<div><input type="submit" value="수정하기" id="button" onclick=""></div>
			<div><input type="submit" value="삭제하기" id="button_2" onclick=""></div>
			<div><input type="submit" value="챌린지 참가자 조회" id="button_3" onclick=""></div>
			<div><input type="submit" value="인증샷 확인" id="button_4" onclick=""></div>
</body>
</html>