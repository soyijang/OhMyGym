<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css"
	href="/omg/resources/css/daumcommon.css">
<link rel="stylesheet" type="text/css"
	href="/omg/resources/css/fmypageContainer.css">

<style>

	.pie-chart {
	position: relative;
	display: inline-block;
	width: 300px;
	height: 300px;
	border-radius: 50%;
	transition: 0.3s;
	background: conic-gradient(#A30000 0% 0%, #A30000 0% 56%, #FF6438 56% 100%);
}

span.center {
	background: #fff;
	display: block;
	position: absolute;
	top: 50%;
	left: 50%;
	width: 200px;
	height: 200px;
	border-radius: 50%;
	text-align: center;
	line-height: 200px;
	font-size: 30px;
	transform: translate(-50%, -50%);
}

	#delete,#upload {
		
		width: 90px;
		height: 40px;
		font-size: 17px;
		background: #FF3800;
		color: white;
		border: none;
		border-radius: 10px;		
	}
	#bobinsert {
		margin-left: 400px; 
		margin-top: 100px;
		border: 1px solid lightgray; 
		width: 1070px; 
		height: 500px;
	}
	hr {
		margin-left: 40px;
		margin-right: 40px;
	}
	#eat {
		font-size: 30px;
		color: graytext;
		display: inline-block;
		width: 450px;
		margin-left: 60px;
		margin-top: 20px;
		margin-bottom: 20px;
	}
	#eatphoto{
		border: 1px solid gary;
		box-shadow: 0 4px 5px 0 rgba(0,0,0,0.2), 0 4px 10px 0 rgba(0,0,0,0.15);
		width: 100px;
		height: 40px;
		border-radius: 5px;
		
	}
	p {
		text-align: right;
		margin-right: 50px;
	}

</style>
</head>
<body>
	<br>
	<br>
	<%@ include file="../../common/followerNav.jsp"%>


	<div class="left-container">
		<div class="class_category_container">
			<div class="title">건강관리</div>
			<ul class="class_category_list" style="height: 630px;">
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

	
	<!-- insert table -->
	
	<div id="bobinsert">
	
		<select style="width: 200px; height: 50px; font-size: 18px; margin: 30px; border-radius: 5px; border:1px solid lightgray;">
			<option>끼니선택</option>				
			<option>아침</option>				
			<option>점심</option>				
			<option>저녁</option>				
		</select>
	
		<hr>
		<div id="eat"><label>먹은식단</label></div>
		<div id="eat">
		<button id="eatphoto" onclick="">
		<a href="javascript:openWindowPop('/omg/views/follower/followerDiet/followerTodayMealSearch.jsp', 'popup');">
		사진추가</a></button></div>
	
		<hr>
			<p>총 칼로리 섭취량 <mark style="background: white; color: red;">670</mark> kcal</p>
		<hr>
		<div id="eat"><label>밥사진</label></div>
		<div id="eat"><button id="eatphoto" onclick=""><a href="javascript:openWindowPop('/omg/views/follower/followerDiet/followerTodayMealSearch.jsp', 'popup');">
		사진추가</a></button></div>
		<hr>
	</div>
	
		
		<!-- delete, upload block -->
		<br><br>
		
		<div style="text-align: right; margin-right: 130px;">
		<button id="delete"><label>삭제</label></button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<button id="upload"><label>업로드</label></button>
		</div>
		<br><br><br>
		
		
		<script>
			$(window).ready(function() {
				draw(50, '.pie-chart1', '#ccc');
			});

			function draw(max, classname, colorname) {
				var i = 1;
				var func1 = setInterval(function() {
					if (i < max) {
						color1(i, classname, colorname);
						i++;
					} else {
						clearInterval(func1);
					}
				}, 10);
			}
			function color1(i, classname, colorname) {
				$(classname).css(
						{
							"background" : "conic-gradient(" + colorname
									+ " 0% " + i + "%, #ffffff " + i
									+ "% 100%)"
						});
			}

			function replay() {
				draw(50, '.pie-chart1', '#ccc');
			}
			
			
			function openWindowPop(url, name){
			    var options = 'top=150, left=500, width=500, height=650, status=no, menubar=no, toolbar=no, resizable=no';
			    window.open(url, name, options);
			}
		</script>

		<%@ include file="../../common/footer.jsp"%>
</body>
</html>