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
<!-- 비밀번호 재설정 페이지 -->
	<header>
		<%@ include file="/views/common/nonNav.jsp"%>
	</header>

	<section style="height: 600px;">
		<div class="mypage-contents" align="center">
			<div class="findidcontents"  align="center">
				
				<img src="../../resources/img/OHmyGymLogo.png" style="margin-top: 6%;"><br>
				
				<%
				String type = findUser.getMemberDivision();
				String showType = null;
				if(type.equals("trainer")){
					showType = "트레이너";
				}else if( type.equals("follower")){
					showType = "팔로워";
				}
				%>
				<br>
				<h1 style="font-size: 25px;"><%= findUser.getName() %> <%= showType %>님, 비밀번호를 재설정하세요!</h1><br>
				
				<div id="_findIdPhone" class="tab_cont" style="display: block">
					<div class="find_idpw">
						<div class="input_area">
							<input type="password" placeholder="비밀번호 입력" name="pass1"  id="pass1" class="inpt_default" value="" style="width: 350px; height : 50px;" maxlength="150">
						</div><br>
						<div class="input_area">
							<input type="password" placeholder="비밀번호 확인" id="pass2" name="pass2" class="inpt_default" value="" style="width: 350px; height : 50px;"  maxlength="150">
							<br>
						</div>	
					</div>
					<button class="loginButton" onclick="savePwd();">비밀번호변경</button>
				</div>
				
			</div>
		</div>
	</section>

	<footer id="foot">
		<%@ include file="/views/common/footer.jsp"%>
	</footer>
	
	<script type="text/javascript">
		
		function savePwd() {
			
			var pass1 = document.getElementById('pass1').value;
			var pass2 = document.getElementById('pass2').value;
			
			$.ajax({
				url: "/omg/update.pwd",
				type: "post",
				data: {
					pass1 : pass1,
					pass2 : pass2
				},
				success: function (data) {
					if(data > 0){
						alert("비밀번호가 변경되었습니다!");
						location.href = "/omg/views/visitor/login.jsp";
					}else {
						alert("비밀번호가 일치하지 않습니다!");
					}
				},
				error: function () {
					alert("비밀번호변경에 실패했습니다!");
					console.log("실패!");
				}
			});
			
			
		}
	
	
	</script>

</body>
</html>
