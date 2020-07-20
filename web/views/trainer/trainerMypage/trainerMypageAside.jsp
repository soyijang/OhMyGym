<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="/omg/resources/css/daumcommon.css">
<link rel="stylesheet" type="text/css" href="/omg/resources/css/fmypageContainer.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<meta charset="UTF-8">
<style type="">
</style>
<title>Insert title here</title>
</head>
<body>
	<div class="left-container">
		<div class="class_category_container">
			<div class="title">TRAINER 마이페이지</div>
			<ul class="class_category_list">
				<li id="taside0" class="navi-item " onclick="on(0);"><a href="<%=request.getContextPath()%>/trinerinfo.mp">프로필 설정</a></li>
				<li id="taside1" class="navi-item " onclick="on(1);"><a href="/omg/views/trainer/trainerMypage/trainerMyInfo.jsp">계정 설정</a></li>
				<li id="taside2" class="navi-item " onclick="on(2);"><a href="/omg/views/trainer/trainerMypage/trainerMyPrize.jsp">자격정보/수상내역</a></li>
				<li id="taside3" class="navi-item " onclick="on(3);"><a href="/omg/views/trainer/trainerMypage/trainerMyMoney.jsp">정산</a></li>
				<li id="taside5" class="navi-item " onclick="on(5);"><a href="/omg/views/follower/followerMypage/followerWithdraw.jsp">회원탈퇴</a></li>
			</ul>
		</div>
	</div>

	<script type="text/javascript">
		function on(num) {
			/* 페이지이동 & 클래스명 on으로 바궈서 글씨체 변경하는 함수 적용 */
			var num = num;
        	
        	switch (num) {
        	
			case 0: document.getElementById("taside0").className = "navi-item-on"; break;
			case 1: document.getElementById("taside1").className = "navi-item-on"; break;
			case 2: document.getElementById("taside2").className = "navi-item-on"; break;
			case 3: document.getElementById("taside3").className = "navi-item-on"; break;
			case 5: document.getElementById("taside5").className = "navi-item-on"; break;
            }
		}
	
	</script>
</body>
</html>