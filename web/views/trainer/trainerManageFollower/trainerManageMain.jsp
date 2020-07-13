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

th {
	border-bottom: 3px solid graytext;
}

td {
	border-bottom: 1px solid gray;
}
#frofile {
	width: 300px;
	height: 700px;
	border: 1px solid #ff3800;
	text-align: center;
	margin-top: 30px;
	margin-left: 100px;
}
 #ing {
	width: 90px;
	height: 40px;
	font-size: 17px;
	background: #FF3800;
	color: white;
	border: none;
	border-radius: 20px;	
}
#maintitle {
	margin-left: 130px;
}
#listTable {

	margin: 0;
	padding: 0;
	text-align: center;
}
#list {
	display: inline;
}
</style>
</head>
<body>
	<br>
	<br>
	<%@ include file="../../common/trainerNav.jsp"%>
	<!-- trainner nav -->
	<div id="maintitle"><h2>킹윤킹 트레이닝 룸</h2></div>
	<div class="left-container" id="frofile">
		<div class="class_category_container">
			<div class="title"><img src="../../resources/img/image 58king.png"></div>
			<ul class="class_category_list">
				<li class="navi-item ">킹윤킹</li>
				<li class="navi-item "><mark style="background: white; color: #ff3800;">풀스텍 커리큘럼</mark></li>
			</ul><br><br><br>
			<div class="ing"><button id="ing">진행중</button></div><br><br>
			<div><label>개인소통방 확인 <input type="checkbox" id="check"></label></div><br>
			<div><label>밥스타그램 확인 <input type="checkbox" id="check"></label></div>
		</div>
	</div>

	<!-- feedback Room -->
	<div id="list">
		<div class="left-container"
			style="width: 500px; margin-left:30px; margin-top: 30px; text-align: center;">
				<P style="font-size: 20px;">피드백룸</P>
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
					<td><div style="margin: 10px;">초보자들의 운동루틴  #1 </div></td>
					<td><div style="margin: 10px;">
							<input type="date">
						</div></td>
				</tr>
				<tr>
					<td><div style="margin: 10px;">3</div></td>
					<td><div style="margin: 10px;">올바른 자세 만들기 # 2 </div></td>
					<td><div style="margin: 10px;">
							<input type="date">
						</div></td>
				</tr>
				<tr>
					<td><div style="margin: 10px;">2</div></td>
					<td><div style="margin: 10px;">올바른 자세 만들기 # 1 </div></td>
					<td><div style="margin: 10px;">
							<input type="date">
						</div></td>
				</tr>
				<tr>
					<td><div style="margin: 10px;">1</div></td>
					<td><div style="margin: 10px;">운동 습관이 되기까지 #1 </div></td>
					<td><div style="margin: 10px;">
							<input type="date">
						</div></td>
				</tr>

			</table>
		</div>
		<div class="left-container"
			style="width: 550px; text-align: center; margin-top: 30px; margin-left: 30px;">
				<P style="font-size: 20px;">제공한 영상 목록</P>
			<br>
			<br>
			<table>
				<tr>
					<th width="30px">번호</th>
					<th width="130px" style="text-align: center;">제목</th>
					<th width="80px" style="text-align: center;">조회여부</th>
					<th width="30px">작성일</th>
				</tr>

				<tr>
					<td><div>4</div></td>
					<td><div>오늘 저녁식단에 개선이 필요합니다.</div></td>
					<td width="50px" style="text-align: center;"><input type="checkbox"></td>
					<td><div>
							<input type="date">
						</div></td>
				</tr>
				<tr>
					<td><div>3</div></td>
					<td><div>킹윤킹님 오늘도 매우 좋습니다!</div></td>
					<td width="50px" style="text-align: center;"><input type="checkbox"></td>
					<td><div>
							<input type="date">
						</div></td>
				</tr>
				<tr>
					<td><div>2</div></td>
					<td><div>오늘 식단이 아주 좋습니다.힘내세요!</div></td>
					<td width="50px" style="text-align: center;"><input type="checkbox"></td>
					<td><div>
							<input type="date">
						</div></td>
				</tr>
				<tr>
					<td><div>1</div></td>
					<td><div>식단관리가 제일 중요합니다!</div></td>
					<td width="50px" style="text-align: center;"><input type="checkbox"></td>
					<td><div>
							<input type="date">
						</div></td>
				</tr>

			</table>
		</div>
		</div>
		
		<div>
			<a href="/omg/views/bobstagram/bobstagram_detail_01.jsp"><img style="margin: 30px;"
				src="../../resources/img/Group 28babstar.png"> </a>
				<a href="/omg/views/bobstagram/bobstagram_detail_01.jsp"><img style="margin: 30px;"
				src="../../resources/img/Group 50profile.png"> </a>
			<img
				style="margin-left: 75%; width: 250px; height: 300px;"
				src="../../resources/img/Groupmaleimg.png">
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