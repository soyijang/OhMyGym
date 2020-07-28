<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body {
	font-family: "Noto Sans KR";
}

#trainnerList::-webkit-scrollbar {
	width: 13px;
}

#trainnerList::-webkit-scrollbar-thumb {
	background-color: #5d5d5d;
	border-radius: 10px;
	background-clip: padding-box;
	border: 2px solid transparent;
}

#trainnerList::-webkit-scrollbar-track {
	background-color: rgb(184, 184, 184);
	border-radius: 10px;
	box-shadow: inset 0px 0px 2px white;
}

div#follower_Match_Main {
	margin-left: 50px;
	margin-top: 15px;
	margin-bottom: 25px;
	width: 1300px;
	height: 650px;
	border-radius: 10px;
}

a.arrayTab {
	margin-left: 20px;
	margin-right: 20px;
	border-radius: 25px;
	cursor: pointer;
	transition: all ease 0.25s 0s;
}

a#TabSelect {
	padding: 7px;
	font-weight: bold;
	color: white;
	background: orangered;
}

a.arrayTab:hover {
	padding: 7px;
	font-weight: bold;
	color: white;
	background: orangered;
}

div.trainer_Info {
	margin: 15px;
	width: 350px;
	height: 450px;
	border-radius: 10px;
	border: 2px solid white;
	transition: all ease 0.35s 0s;
}

div.trainer_Info:hover {
	margin: 15px;
	width: 350px;
	height: 450px;
	border-radius: 10px;
	border: 2px solid orangered;
	cursor: pointer;
}

div.trainnerImg {
	margin: auto;
	margin-top: 30px;
	width: 200px;
	height: 190px;
	border-radius: 8px;
}

img.trainnerImg {
	margin: auto;
	width: 200px;
	height: 190px;
	border-radius: 8px;
}

div.trainnerTxt {
	margin: auto;
	margin-top: 15px;
	width: 250px;
	height: 185px;
	border: 1px solid orangered;
	border-radius: 8px;
	text-align: center;
	padding-top: 15px;
}

div.trainnerTxt ul {
	list-style: none;
	margin-left: 18px;
}

div.trainnerTxt ul li {
	float: left;
	margin-left: 5px;
}

div.trainerScore {
	clear: both;
	margin-top: -15px;
	font-weight: bold;
	font-size: 0.9em;
}

a.trainerName {
	font-size: 1em;
	font-weight: bold;
}

a.trainerId {
	display: none;
}

div.tariner_comment {
	margin-top: 10px;
	font-size: 0.9em;
	padding-left: 10px;
	padding-right: 10px;
}

div.tariner_ability {
	margin-top: 10px;
	font-size: 0.9em;
	border-radius: 25px;
	background: orangered;
	color: white;
	font-weight: bold;
	margin-left: 20px;
	margin-right: 20px;
}

.wait_wrap {
	display: none;
	position: fixed;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	z-index: 10000
}

.dark_bg {
	position: absolute;
	width: 100%;
	height: 100%;
	background: #000;
	filter: alpha(opacity = 60);
	opacity: .6;
	-moz-opacity: .6
}

.wait_box {
	position: relative;
	top: 25%;
	width: 535px;
	height: 275px;
	background: #fff;
	margin: 0 auto;
	border-radius: 8px;
	background: #fff;
	border: 1px solid #ccc
}

.wait_box .close {
	position: absolute;
	right: 6px;
	top: 6px;
	width: 16px;
	height: 16px;
	cursor: pointer
}

textarea:focus {
	outline: none;
}

table.applytable {
	width: 80%;
	margin-left: auto;
	margin-right: auto;
	border-top: 2px solid gray;
	border-bottom: 2px solid gray;
	border-collapse: collapse;
}

table.applytable tr th {
	font-size: 0.8em;
	font-weight: normal;
}

table.applytable tr td {
	font-size: 1em;
	font-weight: bold;
}

table.applytable tr th, table.applytable tr td {
	border-bottom: 1px solid black;
}

button.divbtn{
	width: 100px; 
	height: 30px; 
	border: none; 
	cursor: pointer; 
	background: orangered; 
	color: white; 
	font-weight: bold;
}

</style>
</head>
<body>
	<%@ include file="../../common/followerNav.jsp"%>

	<div class="wait_wrap" style="display: none;">
		<div class="dark_bg"
			onclick="jQuery('.wait_wrap').fadeOut('slow')"></div>
		<div class="wait_box">
			<div
				style="width: 100%; height: 30px; background: orangered; border-radius: 8px;">
				<div
					style="color: white; font-weight: bold; font-family: 'Noto Sans KR'; margin-left: 235px; padding-top: 5px;">매칭대기</div>
				<img class="close"
					onclick="jQuery('.wait_wrap').fadeOut('slow')"
					src="../../../resources/img_icon/closeIcon.png" width="20px"
					height="20px">
			</div>
			<div class="matching_content">
					<div style="font-size: 1em; text-align: center;">
						<div
							style="margin-top: 10px; font-size: 1.2em; font-weight: bold;">
							신청내용</div>
						<div style="margin-top: 30px;">
							<table class="applytable">
								<tbody>
									<tr>
										<th>신청트레이너</th>
										<td><div id="applyname">이대길</div></td>
										<th>트레이너 ID</th>
										<td><div id="applyid">chaseNoBig</div></td>
									</tr>
								</tbody>
							</table>
						</div>
							<button onclick="completeMatching();" class="divbtn" style="background: navy; margin-top: 25px;" >직접문의</button>
					</div>
					<div style="margin-top: 15px; margin-left: 165px;">
						<button onclick="completeMatching();"  class="divbtn" style="background: lightgray;">대기중</button>
						<button onclick="jQuery('.wait_wrap').fadeOut('slow');" class="divbtn">매칭신청취소</button>
					</div>
			</div>
		</div>
	</div>


	<section>
		<article>
			<div id="follower_Match_Main">
				<div
					style="margin-top: 15px; margin-left: 40px; font-size: 1.8em; font-weight: bold;">신청
					트레이너 목록</div>
				<br> <br>
				<hr style="width: 1250px">
				<div id="trainnerList"
					style="overflow: auto; clear: both; margin-left: auto; margin-right: auto; width: 1250px; height: 500px;">
					<div
						style="margin: auto; padding: 10px; padding-left: 30px; padding-right: 30px; text-align: center;">
						<!-- 리스트 시작 -->
						<div class="trainer_Info" style="float: left;" onclick="TrainerDetail();">
							<div class="trainnerImg">
								<img class="trainnerImg" width="100%" height="100%"
									src="../../../resources/img/trainerJang.png">
							</div>
							<div class="trainnerTxt">
								<a class="trainerName">트레이너 대길</a> <a class="trainerId">chaseNoBig</a>
								<ul>
									<li><img width="20px" height="20px"
										src="../../../resources/img_icon/ohmystar_pull.png"></li>
									<li><img width="20px" height="20px"
										src="../../../resources/img_icon/ohmystar_pull.png"></li>
									<li><img width="20px" height="20px"
										src="../../../resources/img_icon/ohmystar_pull.png"></li>
									<li><img width="20px" height="20px"
										src="../../../resources/img_icon/ohmystar_pull.png"></li>
									<li><img width="20px" height="20px"
										src="../../../resources/img_icon/ohmystar_pull.png"></li>
								</ul>
								<div class="trainerScore">5.0</div>
								<div class="tariner_comment">추노질하는 것보다 팔로워 관리하는게 훨씬 더
									힘들구만.</div>
								<div class="tariner_ability">#운동습관형성</div>
							</div>
						</div>
						<!-- 리스트 끝 -->
					</div>
				</div>
			</div>
			<script>
			
				function TrainerDetail(){
					console.log("조회");
					  $('.wait_wrap').fadeIn('slow');
				}
			
			</script>
		</article>
	</section>
	<%@ include file="../../common/footer.jsp"%>
</body>
</html>