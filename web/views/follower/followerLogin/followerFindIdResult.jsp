<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	div.resultFindId{
		font-size: 1.8em;
		font-weight: 450;
	}
	
	button#btnLogin{
		background:rgb(255, 61, 35);
		width: 120px;
		height: 40px;
		color: white;
		font-weight: bold;
		border:none;
		border-radius: 10px;
		cursor: pointer;
	}
	
	button#findPassBtn{
		background: rgb(213, 213, 213);
		width: 120px;
		height: 40px;
		color: black;
		font-weight: bold;
		border:none;
		border-radius: 10px;
		cursor: pointer;
	}
	
	button:focus{
		outline: none;
	}
</style>
</head>
<body>
	<%@ include file="../../common/nonNav.jsp" %>
	<section style="text-align: center;">
		<div style="margin-left: 33%; margin-right: 33%; padding: 15px; width: 450px; height: 370px; border: 1px solid rgb(192, 192, 192);; border-radius: 10px;">
			<div class="resultFindId">아이디 찾기 결과</div>
			<hr style="border-radius: 20px; margin-top: 15px; width: 300px; margin-bottom: 35px;">
			<div style="font-size: 0.9em;">고객님의 정보와 일치하는 아이디는 아래와 같습니다.</div>
			<div style="margin-left: auto; margin-right: auto; margin-top: 60px; margin-bottom: 40px; width: 350px; height: 100px; border: 1px solid rgb(255, 150, 111); border-radius: 10px;">
				<div id="findId" style="padding: 20px;">kingyunking11</div>
				<div id="findName">김윤김</div>
			</div>
				
				<button id="btnLogin">로그인하기</button>&nbsp;<button id="findPassBtn">비밀번호 찾기</button>
		</div>
	</section>
	<br><br>
	<%@ include file="../../common/footer.jsp"%>
</body>
</html>