<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css"
	href="/omg/resources/css/daumcommon.css">
<link rel="stylesheet" type="text/css"
	href="/omg/resources/css/fmypageContainer.css">

<style>
.pie-chart {
	position: relative;
	display: inline-block;
	width: 300px;
	height: 300px;
	border-radius: 50%;
	transition: 0.3s;
	background: conic-gradient(#A30000 0% 0%, #A30000 0% 56%, #FF6438 56% 100%);
}

span.center {
	background: #fff;
	display: block;
	position: absolute;
	top: 50%;
	left: 50%;
	width: 200px;
	height: 200px;
	border-radius: 50%;
	text-align: center;
	line-height: 200px;
	font-size: 30px;
	transform: translate(-50%, -50%);
}

th {
	border-bottom: 3px solid graytext;
}

td {
	border-bottom: 1px solid gray;
}
</style>
</head>
<body>
	<br>
	<br>
	<%@ include file="../../common/trainerNav.jsp"%>


	<div class="left-container">
		<div class="class_category_container">
			<div class="title">건강관리</div>
			<ul class="class_category_list" style="height: 630px;">
				<li class="navi-item ">건강정보</li>
				<li class="navi-item ">밥스타그램</li>
			</ul>
		</div>
	</div>

	<div class="left-container" style="width: 1080px; margin-left: 30px;">
		<div class="class_category_container">
			<div class="title">킹윤킹의 밥스타그램</div>
		</div>
	</div>
	<br>

	<div>
		<div class="left-container"
			style="height: 600px; width: 550px; margin: 30px; text-align: center;">

			<div class="pie-chart pie-chart1">
				<span class="center" style="font-size: 20px;">2710kacl/2400kcal</span>
			</div>
			<br>
			<br>
			<br>
			<div>
				<p style="font-size: 18px;">섭취한
					칼로리&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;목표
					칼로리</p>
				<p style="font-size: 18px;">2710kacl&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2400kcal</p>
				<br><br><br>
				<p style="font-size: 18px;">
					<mark style="background: orangered; color: white;">돼지</mark>
					같이 드셨군요!
				</p>
				<p style="font-size: 18px;">다음에는 조금만 먹도록 노력해요!</p>
			</div>
		</div>
		<div class="left-container"
			style="width: 500px; margin:30px 0; text-align: center;">
			<a href="javascript:openWindowPop('/omg/views/bobstagram/bobstagram_trainnerPopup.jsp', 'popup');">
				<P style="font-size: 20px;">트레이너의 관리</P>
			</a>
			<br>
			<br>
			<table>
				<tr>
					<th width="30px">번호</th>
					<th width="200px" style="text-align: center;">제목</th>
					<th width="80px">작성일</th>
				</tr>

				<tr>
					<td><div style="margin: 10px;">4</div></td>
					<td><div style="margin: 10px;">오늘 저녁식단에 개선이 필요합니다.</div></td>
					<td><div style="margin: 10px;">
							<input type="date">
						</div></td>
				</tr>
				<tr>
					<td><div style="margin: 10px;">3</div></td>
					<td><div style="margin: 10px;">킹윤킹님 오늘도 매우 좋습니다!</div></td>
					<td><div style="margin: 10px;">
							<input type="date">
						</div></td>
				</tr>
				<tr>
					<td><div style="margin: 10px;">2</div></td>
					<td><div style="margin: 10px;">오늘 식단이 아주 좋습니다.힘내세요!</div></td>
					<td><div style="margin: 10px;">
							<input type="date">
						</div></td>
				</tr>
				<tr>
					<td><div style="margin: 10px;">1</div></td>
					<td><div style="margin: 10px;">식단관리가 제일 중요합니다!</div></td>
					<td><div style="margin: 10px;">
							<input type="date">
						</div></td>
				</tr>

			</table>
		</div>
		<div>
			<a href="/omg/views/bobstagram/bobstagram_detail_01.jsp"><img style="margin: 10px;"
				src="../../resources/img/Group 355care.png"> </a>
			<img
				style="margin-left: 70%; width: 250px; height: 300px;"
				src="../../resources/img/XMLID 28imgg.png">
		</div>

	
		<script>
			$(window).ready(function() {
				draw(50, '.pie-chart1', '#ccc');
			});

			function draw(max, classname, colorname) {
				var i = 1;
				var func1 = setInterval(function() {
					if (i < max) {
						color1(i, classname, colorname);
						i++;
					} else {
						clearInterval(func1);
					}
				}, 10);
			}
			function color1(i, classname, colorname) {
				$(classname).css(
						{
							"background" : "conic-gradient(" + colorname
									+ " 0% " + i + "%, #ffffff " + i
									+ "% 100%)"
						});
			}

			function replay() {
				draw(50, '.pie-chart1', '#ccc');
			}
			
			
			function openWindowPop(url, name){
			    var options = 'top=200, left=500, width=500, height=450, status=no, menubar=no, toolbar=no, resizable=no';
			    window.open(url, name, options);
			}
		</script>

		<%@ include file="../../common/footer.jsp"%>
</body>
</html>