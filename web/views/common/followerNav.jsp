<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.omg.jsp.member.model.vo.Member"%>
<% Member loginUser = (Member) session.getAttribute("loginUser");%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body {
	overflow-x: hidden;
}

.NavLink {
	padding-top: 30px;
	width: 120px;
	height: 40px;
	text-decoration: none;
}

.container_top {
	display: block;
	color: rgb(105, 111, 116);
	font-size: 0.8em;
	font-family: "Noto Sans KR";
	font-weight: 900;
	line-height: 1.25em;
	margin-right: 100px;
}

.container_top ul li {
	list-style: none;
	float: right;
	margin-left: 20px;
	margin-right: 10px;
}

nav {
	display: block;
	color: rgb(117, 117, 117);
	font-size: 0.8em;
	font-family: "Noto Sans KR";
	font-weight: bold;
	line-height: 1.25em;
}

nav ul {
	list-style: none;
}

.container #page_NAME {
	margin-top: 1px;
	margin-left: 50px;
	float: left;
}

.container #header_bottom_sidemenu {
	margin-right: 140px;
}

ul.sideMenu li {
	width: 120px;
}

ul.sideMenu li:hover {
	background-color: orangered;
	border-radius: 10px;
	color: white;
	transition: all ease 0.25s 0s;
}

ul.sideMenu li:hover div {
	color: white;
	transition: all ease 0.25s 0s;
}

ul.sideMenu ul {
	display: none;
	margin-left: -1400px;
}

ul.sideMenu li ul li {
	width: 2400px;
}

ul.sideMenu li ul li a {
	margin-left: 30px;
}

ul.sideMenu li:hover>ul {
	padding-top: 20px;
	height: 25px;
	text-align: center;
	float: left;
	background: rgba(255, 69, 0, 1);
	transition: all ease 0.25s 0s;
	display: block;
}

ul.sideMenu li:hover>ul li a:hover {
	background: rgb(179, 21, 0);
	transition: all ease 0.25s 0s;
}

.container {
	min-width: 1200px;
	width: 100%;
	height: 70px;
	margin-top: 11px;
}

#navigateID ul li {
	list-style: none;
	color: rgb(63, 63, 63);
	float: right;
	text-align: center;
	font-weight: bolder;
	font-size: 14px;
	margin-top: -13px;
}

ul#header_bottom_sidemenu li ul li {
	color: white;
	text-align: center;
	margin-left: 200px;
	margin-top: -4px;
}

a {
	text-decoration: none;
	cursor: pointer;
}
</style>
</head>
<body>
	<div class="container_top">
		<ul class="header_top_menu" id="header_top">
			<li id="webIntro"><a onclick="logout();" style="color: rgb(63, 63, 63);">로그아웃</a></li>
			<li id="webClasses"><a href="/omg/views/follower/followerMypage/followerMyInfo.jsp"
				style="color: rgb(63, 63, 63);">마이페이지</a></li>
		</ul>
	</div>
	<br>
	<nav id="navigateID">
		<div class="container" style="vertical-align: middle;">
			<ul class="header_bottom_menu" id="header_bottom">
				<li id="page_NAME"><a href="/omg/views/follower/followerMain.jsp"><div id="logo">
							<img src="/omg/resources/img/OHmyGymLogo.png">
						</div></a></li>
				<ul id="header_bottom_sidemenu" class="sideMenu">
					<li><a><div class="NavLink"style="color: rgb(63, 63, 63);">공지사항</div></a>
						<ul>
							<li><a href="<%=request.getContextPath()%>/followNotice.no" style="color: white;">공지사항</a></li>
						</ul>
					</li>
					<li><a><div class="NavLink" style="color: rgb(63, 63, 63);">문의하기</div></a>
						<ul>
							<li><a style="color: white;" href="/omg/FAQList.me">자주묻는질문</a>&nbsp;&nbsp;&nbsp;<a style="color: white;">직접문의하기</a></li>
						</ul>
					</li>
					<li><a><div class="NavLink" style="color: rgb(63, 63, 63);">건강관리</div></a>
						<ul>
							<li><a style="color: white;" href="<%=request.getContextPath()%>/selectList.diet">오늘의 밥그릇</a>&nbsp;&nbsp;&nbsp;
							<a style="color: white;" href="<%=request.getContextPath()%>/followHealthInfo.no">건강정보게시판</a>&nbsp;&nbsp;&nbsp;
								<a style="color: white;" href="<%= request.getContextPath() %>/healthInfo.hi">내 상태 기록</a></li>
						</ul></li>
					<li><a><div class="NavLink" style="color: rgb(63, 63, 63);">매칭신청</div></a>
						<ul>
							<li><a style="color: white;" href="<%= request.getContextPath() %>/trainerList.mc">트레이너 목록</a>&nbsp;&nbsp;&nbsp;<a style="color: white;">트레이너별 후기</a></li>
						</ul>
					</li>
					<li><a href="../fOhMyGym/fTrainingRoom.jsp">
					<div class="NavLink" style="color: rgb(63, 63, 63);">OH! MY GYM</div></a>
						<ul>
							<li><a href="<%= request.getContextPath() %>/views\follower\followerOhMyGym\followerTrainingRoom.jsp"
								style="color: white;">트레이닝</a>
								&nbsp;&nbsp;&nbsp;<a onclick="groupCommu();" style="color: white;">그룹소통방</a>
								&nbsp;&nbsp;&nbsp;<a href="<%= request.getContextPath() %>/selectList.fb" style="color: white;">피드백룸</a>
								&nbsp;&nbsp;&nbsp;<a href="../fOhMyGym/fReview.jsp" style="color: white;">트레이닝 리뷰</a>
							</li>
						</ul>
					</li>
				</ul>
			</ul>
		</div>
	</nav>
	<br>
	<br>
	
	<script type="text/javascript">
		function logout() {
			alert("<%= loginUser.getName()%>님 내일도 오마이짐에서 만나요!");
			location.href= "<%= request.getContextPath()%>/logout.me";
		}
		function groupCommu(){
			location.href="<%=request.getContextPath()%>/groupCommu.follower";
		}
	</script>
</body>
</html>