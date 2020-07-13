<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<style>
body {
	overflow-x: hidden;
}

.NavLink {
	padding-top: 30px;
	width: 120px;
	height: 40px;
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
</style>
</head>
<body>
	<div class="container_top">
		<ul class="header_top_menu" id="header_top">
			<li id="webIntro">로그아웃</li>
			<li id="webClasses">마이페이지</li>
		</ul>
	</div>
	<br>
	<nav id="navigateID">
		<div class="container" style="vertical-align: middle;">
			<ul class="header_bottom_menu" id="header_bottom">
				<li id="page_NAME"><a href=""><div id="logo">
							<img src="/omg/resources/img/OHmyGymLogo_Trainner.png">
						</div></a></li>
				<ul id="header_bottom_sidemenu" class="sideMenu">
					<li><a><div class="NavLink">공지/이벤트</div></a>
						<ul>
							<li><a>이벤트</a>&nbsp;&nbsp;&nbsp;<a>공지사항</a></li>
						</ul></li>
					<li><a><div class="NavLink">문의하기</div></a>
						<ul>
							<li><a>자주묻는질문</a>&nbsp;&nbsp;&nbsp;<a>직접문의하기</a></li>
						</ul></li>
					<li><a><div class="NavLink">건강정보</div></a> <!-- <ul>
                                <li><a>팔로워후기</a>&nbsp;&nbsp;&nbsp;<a>트레이너후기</a></li>
                            </ul> --></li>
					<li><a><div class="NavLink">OH 마이피티</div></a>
						<ul>
							<li><a>매칭신청 목록</a>&nbsp;&nbsp;&nbsp;<a>커리큘럼 관리</a>
								&nbsp;&nbsp;&nbsp;<a>나의 경력</a>&nbsp;&nbsp;&nbsp;<a>그룹소통방</a></li>
						</ul></li>
					<li><a><div class="NavLink">팔로워관리</div></a></li>
				</ul>
			</ul>
		</div>
	</nav>

	<br>
	<br>
</body>
</html>