<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<% ArrayList<HashMap<String, Object>> list = (ArrayList<HashMap<String, Object>>) request.getAttribute("list");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<title>Insert title here</title>
<style>
html {
	width: 1440px;
	margin: 0;
}

* {
	margin: 0;
	padding: 0;
	font-family: "Noto Sans KR Medium";
	text-decoration: none;
}

body {
	width: 1440px;
	background-color: lightgray;
	margin-right: 0;
}

header {
	width: 1440px;
	height: 63px;
	margin-right: 0;
}

#top_background {
	position: absolute;
	left: 0;
	top: 0;
	display: inline;
	z-index: -100;
}

#logo {
	position: absolute;
	top: 13px;
	left: 13px;
}

header div {
	position: relative;
	/* left: 1000px; */
	font-size: 13px;
	color: white;
	top: 22px;
}

header div a {
	font: bold 13px "Noto Sans KR Thin";
	color: white;
}

nav {
	position: absolute;
	display: inline-block;
	top: 63px;
	font-size: 15px;
}

#nav_background {
	position: absolute;
	z-index: -100;
	top: 0;
	height: 100%;
	width: 200px;
}

nav ul {
	background-color: 000532;
	position: relative;
	font-weight: bold;
	color: white;
	/* left: 30px;*/
	top: 3px;
	list-style: none;
	width: 160px;
	padding-left: 25px;
}

nav li {
	color: black;
	font-weight: normal;
	margin: 8px;
}

nav a {
	color: white;
	font-size: 13px;
}

.menuGroup {
	display: inline-block;
	width: 200px;
	position: absolute;
}

details {
	cursor: pointer;
}

summary {
	outline: none;
}

section {
	position: absolute;
	display: inline-block;
	width: 1240px;
	height: 100%;
	left: 200px;
}

section>article {
	margin-top: 30px;
	margin-left: 30px;
	margin: 30px;
	display: inline-block;
	width: 1180px;
}

table {
	text-align: center;
	width: 1100px;
	border-collapse: collapse;
}

tr {
	width: 1000px;
	height: 20px;
}

th {
	font-size: 13px;
	height: 40px;
	border-bottom: 3px double gray;
	background: #000532;
	color: white;
	font-weight: normal;
}

td {
	font-family: "Noto Sans KR Regular ";
	font-size: 14px;
	height: 35px;
	border-bottom: 2px solid gray;
}

td>a {
	color: black;
	text-decoration: underline;
	font-size: 14px;
}

#menuTitleArea {
	display: inline;
}

#tableArea {
	height: 450px;
}

#searchArea {
	display: inline-block;
	width: 400px;
	position: absolute;
	top: 60px;
	left: 812px;
	margin: 0;
}

#searchBtn {
	width: 50px;
	margin-left: 5px;
}

#alignmentArea {
	margin: 0;
	display: inline-block;
	position: absolute;
	left: 1007px;
	top: 100px;
}

#pagingArea {
	display: inline-block;
	margin: 0;
	text-align: center;
}

#pageButtonTemp {
	background: white;
	display: inline-block;
	width: 300px;
	height: 20px;
}

.movBtn {
	border-style: none;
	background: orangered;
	width: 80px;
	color: white;
	height: 25px;
	cursor: pointer;
}
</style>
</head>
<body>
	<%@ include file="../../common/managerNav.jsp"%>

	<section>
		<!--헤더 영역-->
		<article id="menuTitleArea">
			<p
				style="font-weight: bold; font-size: 1.5em; padding-top: 30px; padding-left: 30px;">그룹소통방조회</p>
		</article>
		<!--헤더 영역 종료-->

		<!--검색 영역-->
		<article id="searchArea">
			<select name="search" id="searchSelect">
				<option value="followerID">트레이너명</option>
				<option value="date">트레이너ID</option>
			</select> <input type="search" width="50"><input type="submit"
				value="검색" id="searchBtn">
		</article>
		<!--검색 영역 종료-->

		<!--정렬 설정 영역-->
		<article id="alignmentArea">
			<select name="alignment" id="alignment">
				<option value="trainingDate">No 순</option>
				<option value="matchingNumDesc">ID 순</option>
				<option value="matchingNumAsc">참여회원 순</option>
			</select> <select name="viewRow" id="viewRow">
				<option value="10">10개씩 보기</option>
				<option value="20">20개씩 보기</option>
				<option value="30">30개씩 보기</option>
				<option value="40">40개씩 보기</option>
				<option value="50">50개씩 보기</option>
			</select>
		</article>
		<!--정렬영역 종료-->

		<!--테이블 표시 영역-->

		<article id="tableArea">
			<div align="center"
				style="padding-top: 25px; padding-bottom: 25px; width: 100%; background: white; border-radius: 8px;">
				<table>
					<tr>
						<th width="100px">No</th>
						<th width="180px">트레이너ID</th>
						<th width="130px">트레이너명</th>
						<th width="150px">E-mail</th>
						<th width="200px">연락처</th>
						<th width="100px">참여회원 수</th>
						<th width="110px">그룹소통방 이동</th>
					</tr>
					<% int listNum = list.size();%>
					<% for(int i = 0; i < list.size(); i++){ HashMap<String, Object> hmap = list.get(i);%>
					<tr>
						<td><%=listNum%></td>
						<td><%=hmap.get("trainerId")%></td>
						<td><%=hmap.get("trainerName")%></td>
						<td><%=hmap.get("trainerEmail")%></td>
						<td><%=hmap.get("trainerPhone")%></td>
						<td><%=hmap.get("matchedFollower")%></td>
						<td><button class="movBtn" onclick="location.href='<%=request.getContextPath()%>/groupCommu.manager?trainerId=<%=hmap.get("trainerId")%>'">이동하기</button></td>
					</tr>
					<%listNum= listNum-1; }%>
				</table>
			</div>
		</article>
		<!--테이블 표시 영역 종료-->
		
		
		
		<script>
		
   		function moveDetail(){
   			$("#selectDetail").submit();
   		}
		</script>
	</section>
</body>
</html>