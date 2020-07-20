<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="/omg/resources/css/fmypageContainer.css">
<link rel="stylesheet" type="text/css"
	href="/omg/resources/css/tjob.css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<section style="height:1200px;">
	<%@ include file="followerMypageAside.jsp" %>
	<div class="right-container">
	
		<div class="head_article"><h3 class="info-header">나의 스템프</h3></div>
		<div id="ohmystamp_title"><img src="/omg/resources/img/ohmystamp.png"></div>
		
		<!-- 테이블영역 -->
		<div id="ohmystamp_content">
		<table class="stamp_table" style="align:center;">
			<tr>
			<td class="stamp">회원가입<img src="/omg/resources/img/successstamp.png"></td>
			<td class="stamp">로그인1회<img src="/omg/resources/img/successstamp.png"></td>
			<td class="stamp">트레이너 매칭<img src="/omg/resources/img/successstamp.png"></td>
			<td class="stamp">건강기록 작성<img src="/omg/resources/img/successstamp.png"></td>
			<td class="stamp">운동영상시청 3회<img src="/omg/resources/img/successstamp.png"></td>
			</tr>
			<tr>
			<td class="stamp_no">프로필사진 업로드<img src="/omg/resources/img/trystamp.png"></td>
			<td class="stamp_no">식단일지 작성 5회<img src="/omg/resources/img/trystamp.png"></td>
			<td class="stamp_no">그룹소통 게시글게시<img src="/omg/resources/img/trystamp.png"></td>
			<td class="stamp_no">오머니 충전<img src="/omg/resources/img/trystamp.png"></td>
			<td class="stamp_no">트레이닝 후기작성<img src="/omg/resources/img/trystamp.png"></td>
			</tr>
		</table>
		</div>
		<br>
		<br>
		<br>
		<!-- 메일 수신 동의예정 -->
		<div align="center"> 
			<button style="width: 200px; height: 50px; color:white; font-weight:bold; background-color: orangered;" onclick="alert('이벤트 수신동의가 필요한 계정입니다!');">상품응모권 메일로 받기!</button>			
		</div>
		
	</div>
	</section>	
	
	<footer>
	<%@ include file="../../common/footer.jsp" %>
	</footer>
</body>
</html>