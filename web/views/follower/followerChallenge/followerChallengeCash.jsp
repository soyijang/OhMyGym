<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
/*사이드 메뉴바 */
nav#side_nav {
	font-family: Noto Sans SC;
	position: absolute;
	width: 178px;
	height: 724px;
	left: 150px;
}

nav#side_nav div.side_container {
	border: solid 1px rgb(103, 103, 103);
	width: 150px;
	height: 800px;
	border-radius: 9px;
	box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
}

nav ul {
	list-style: none;
}

nav {
	color: rgb(117, 117, 117)
}

/* 여기부터 사이드바 이후의 style 입니다.*/
#main_front {
	position: absolute;
	width: 1300px;
	height: 700px;
	left: 330px;
	top: 150px;
	background: rgba(196, 196, 196, 0.35);
	
}

.line {
	position: absolute;
	height: 1px;
	width: 1100px;
	background-color: black;
	left: 200px;
	float: right;
	top: 140px;
}

#complate {
	position: absolute;
	left: 250px;
	top: 80px;
	font-size: 40px;
	font-weight: bold;
}

#complate_cash {
	position: absolute;
	left: 280px;
	top: 200px;
	font-size: 50px;
	font-weight: bold;
}

.orangered {
	color: orangered;
}

#bold {
	font-weight: bold;
}

#font {
	position: absolute;
	font-family: Noto Sans KR;
	font-style: normal;
	font-weight: 300;
	font-size: 30px;
	line-height: 43px;
	align-items: center;
	letter-spacing: -0.105em;
	top: 300px;
	left: 300px;
}

#box {
	position: absolute; 
	border: 2px solid #FF3800;
	box-sizing: border-box;
	color: white;
	font-weight: bold;
	width: 60px;
	text-align: center;
	background: #FF6337;
	top: 650px;
	left: 750px;
	cursor: pointer;
}
#table {
	position: absolute;
	top: 500px;
	left: 300px;
	font-family: Noto Sans KR;
	font-style: normal;
	font-weight: 300;
	font-size: 20px;
	line-height: 29px;
	/* identical to box height */
	align-items: center;
	letter-spacing: -0.105em;
}
.dline_1{
	border-left: 1px solid black;
}
#t_cash{
	position: absolute;
	top:470px;
	font-weight: bold;
	font-size: 15px;
	left: 330px;
	
}
</style>
<body>
	<%@ include file="../../common/followerNav.jsp"%>
	<nav id="side_nav">
		<div class="side_container">
			<ul class="side_menu">
				<li><a
					style="font-size: 20px; font-weight: bold; margin-left: -10px;">OH!마이짐</a>
					<hr style="margin-left: -25px; border: 1.5px solid;"></li>
				<li><a
					style="font-size: 14px; font-weight: normal; color: orangered;">챌린지</a>
					<hr></li>
				<li><a class="select"
					style="font-size: 14px; font-weight: normal;">그룹소통방</a>
					<hr></li>
				<li><a style="font-size: 14px; font-weight: normal;">트레이닝 룸</a>
					<hr></li>
			</ul>
		</div>
	</nav>
	<!-- 결제 완료 div -->
	<div id="main_front">
		<div id="complate">결제완료</div>
		<div class="line"></div>
		<div id="complate_cash">35,000 원</div>
		<div id="font">
			<a class="orangered" id="bold">결제완료&nbsp;</a>되었습니다.<br>아래 내역을
			확인해주세요.
		</div>
		<div>
			<div id="t_cash">결제내역</div>
			<table id="table" style="border: 1px solid black; background: white; width: 1000px;">
				<tr>
					<td style="border-bottom: 1px solid black;">결제일</td>
					<td style="border-bottom: 1px solid black;">2020.06.06</td>
				</tr>
				<tr>
					<td style="border-bottom: 1px solid black;">결제수단</td>
					<td style="border-bottom: 1px solid black;">오머니 페이 결제</td>
				</tr>
				<tr>
					<td class="orangered" style="border-bottom: 1px solid black;">결제금액</td>
					<td class="orangered" style="border-bottom: 1px solid black;">35,000 원</td>
				</tr>
				<tr>
					<td>구매상품</td>
					<td>OMG챌린지 (28일 패키지)</td>
				</tr>
			</table>
		</div>
		<div id="box" onclick="">확인</div>
	</div>
    <div style="position: absolute; top:1100px; left:150px;">
    <%@ include file="../../common/footer.jsp" %>
    </div>
</body>
</html>