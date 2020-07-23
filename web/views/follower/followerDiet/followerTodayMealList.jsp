<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*,com.omg.jsp.followerDiet.model.vo.*"%>
	<% ArrayList<FollowerDiet> list = (ArrayList<FollowerDiet>) request.getAttribute("list"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="/omg/resources/css/daumcommon.css">
<link rel="stylesheet" type="text/css"
	href="/omg/resources/css/fmypageContainer.css">

<style>

	button {
		width: 130px;
		height: 40px;
		font-size: 18px;
		border: 1px solid lightgray;
		margin-top: 20px;
		margin-left: 30px;
		cursor: pointer;
		
	}
	#breakfast {
		background: #FF3800;
		color: white;
	}
	#detailfood {
		width: 1150px;
		padding: 30px;
	}

	thead {
		height: 100px;
		width: 700px;
		background: lightgray;
	}
	tbody,tfoot  td {
		text-align: center;
	}
	#delete,#upload {
		background: #FF3800;
		color: white;
		border: none;
		border-radius: 10px;		
		width: 80px;
	}

</style>
</head>
<body>
	<br>
	<br>
	<%@ include file="../../common/followerNav.jsp"%>

	<form action="<%=request.getContextPath()%>/selectList.bo" method="post">
	<div class="left-container">
		<div class="class_category_container">
			<div class="title">건강관리</div>
			<ul class="class_category_list" style="height: 230px;">
				<li class="navi-item ">건강정보</li>
				<li class="navi-item ">밥스타그램</li>
			</ul>
		</div>
	</div>

	<div class="left-container" style="width: 1080px; margin-left: 30px;">
		<div class="class_category_container">
			<div class="title">세부 식단관리</div>
		</div>
	</div>
	<br><br><br>

	<div>
		<button id="breakfast" onclick="">아침</button>
		<button id="lunch" onclick="">점심</button>
		<button id="dinner" onclick="">저녁</button>
	
	</div>
	
	<!-- insert table -->
	<table id="detailfood" style="width: 1080px; height: 400px;">
		<thead>
			<tr>
				<th width="250px">사진</th>
				<th width="230px">섭취기록</th>
				<th width="250px">칼로리(Kcal)</th>
			</tr>
		</thead>
		
		<tbody>
		<%-- <% for(FollowerDiet fd : list) {%>
			<tr>
				<td><%=fd.getIntakeDate() %></td>
				<td><%=fd.getFoodCode() %></td>
				<td><%=fd.getIntakeVolume() %></td>
			</tr>
			
		<%} %> --%>
		
		</tbody>
		
		<tfoot></tfoot>
		</table>
		
		
		<!-- delete, upload block -->
		<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
		
		<div style="text-align: right; margin-right: 120px;">
		<button id="delete"><label>삭제</label></button>
		<button id="upload" onclick="location.href='views/follower/followerDiet/followerInsertTodayMeal.jsp'"><label>업로드</label></button>
		</div>
		<br><br><br>
		</form>

		<%@ include file="../../common/footer.jsp"%>
		
		
		
</body>
</html>