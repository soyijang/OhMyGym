<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.omg.jsp.member.model.vo.Member"%>
<% Member findUser = (Member) session.getAttribute("findUser");%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="/omg/resources/css/fmypageContainer.css">
<link rel="stylesheet" type="text/css"
	href="/omg/resources/css/tjob.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<style type="text/css">

	.findidcontents{
		margin-top:5%;
		text-align: center;
		background-color: rgb(243, 243, 243);
		width: 700px;
		height: 500px;
		border: 1px black;
	}
	
	.loginButton{
		background-color: orangered;
		color: white;
		width: 100px;
		height: 30px;
		font-weight: bold;
		margin-top: 5%;
	}
	
	.loginButton :hover {
		background-color: white;
		color: orangerd;
		width: 100px;
		height: 30px;
		font-weight: bold;
		margin-top: 5%;
	}

</style>
</head>
<body>
	<header>
		<%@ include file="/views/common/nonNav.jsp"%>
	</header>

	<section style="height: 700px;">
		<div class="mypage-contents" align="center">
			<div class="findidcontents"  align="center">
				
				<img src="../../resources/img/OHmyGymLogo.png" style="margin-top: 6%;"><br>
				<img alt="" src="../../resources/img/alert.png" style="height: 20%; width: 15%; margin-top: 10%;"> 
				
				<%
				String type = findUser.getMemberDivision();
				String showType = null;
				if(type.equals("trainer")){
					showType = "트레이너";
				}else if( type.equals("follower")){
					showType = "팔로워";
				}
				%>
				
				<h1 style="font-size: 25px;"><%= findUser.getName() %> <%= showType %>님의
				아이디는 <br> <%= findUser.getMemberId() %> 입니다.</h1>		
				
				<button class="loginButton" onclick="location.href='login.jsp'">로그인하기</button>
				<button class="loginButton" onclick="location.href='../follower/followerLogin/followerFindId.jsp'">비밀번호찾기</button>
				
			</div>
		</div>
	</section>

	<footer id="foot">
		<%@ include file="/views/common/footer.jsp"%>
	</footer>

</body>
</html>
