<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html>
<head> 
    <link rel="stylesheet" type="text/css" href="/omg/resources/css/daumcommon.css">
    <link rel="stylesheet" type="text/css" href="/omg/resources/css/fmypageContainer.css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="left-container">
		<div class="class_category_container">
			<div class="title">건강관리</div>
			<ul class="class_category_list" style="height: 230px;">
				<li class="navi-item "><a href="<%=request.getContextPath()%>/selectList.diet">오늘의 밥그릇</a></li>
				<li class="navi-item "><a href="<%=request.getContextPath()%>/followHealthInfo.no">건강정보게시판</a></li>
				<li class="navi-item "><a href="<%= request.getContextPath() %>/healthInfo.hi">내 상태 기록</a></li>
			</ul>
		</div>
	</div>
</body>
</html>