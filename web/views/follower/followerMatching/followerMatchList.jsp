<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
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
</style>
</head>
<body>
	<%@ include file="../../common/followerNav.jsp"%>
	<section>
		<article>
			<div id="follower_Match_Main">
				<div
					style="margin-top: 15px; margin-left: 40px; font-size: 1.8em; font-weight: bold;">트레이너
					목록</div>
				<br>
				<br>
				<div style="margin-left: 40px;">
					<a class="arrayTab" id="TabSelect">오마이짐 추천순</a><a class="arrayTab">이름
						순</a><a class="arrayTab">평점 순</a>
					<form style="float: right;">
						<select style="font-size: 0.9em;">
							<option>트레이너명</option>
							<option>트레이너ID</option>
						</select> <input type="text" placeholder="검색"
							style="height: 20px; width: 160px; margin-right: 25px;">
					</form>
				</div>
				<hr style="width: 1250px">
				<div id="trainnerList"
					style="overflow: auto; clear: both; margin-left: auto; margin-right: auto; width: 1250px; height: 500px;">
					<div
						style="margin: auto; padding: 10px; padding-left: 30px; padding-right: 30px; text-align: center;">
						<!-- 리스트 시작 -->
						<div class="trainer_Info" style="float: left;">
							<div class="trainnerImg">
								<img class="trainnerImg" width="100%" height="100%"
									src="../../resources/img/trainerJang.png">
							</div>
							<div class="trainnerTxt">
								<a class="trainerName">트레이너 대길</a> <a class="trainerId">chaseNoBig</a>
								<ul>
									<li><img width="20px" height="20px"
										src="../../resources/img_icon/ohmystar_pull.png"></li>
									<li><img width="20px" height="20px"
										src="../../resources/img_icon/ohmystar_pull.png"></li>
									<li><img width="20px" height="20px"
										src="../../resources/img_icon/ohmystar_pull.png"></li>
									<li><img width="20px" height="20px"
										src="../../resources/img_icon/ohmystar_pull.png"></li>
									<li><img width="20px" height="20px"
										src="../../resources/img_icon/ohmystar_pull.png"></li>
								</ul>
								<div class="trainerScore">5.0</div>
								<div class="tariner_comment">추노질하는 것보다 팔로워 관리하는게 훨씬 더
									힘들구만.</div>
								<div class="tariner_ability">#운동습관형성</div>
							</div>
						</div>

						<div class="trainer_Info" style="float: left;">
							<div class="trainnerImg">
								<img class="trainnerImg" width="100%" height="100%"
									src="../../resources/img/trainerJang2.png">
							</div>
							<div class="trainnerTxt">
								<a class="trainerName">트레이너 소길</a> <a class="trainerId">chaseNoSmall</a>
								<ul>
									<li><img width="20px" height="20px"
										src="../../resources/img_icon/ohmystar_pull.png"></li>
									<li><img width="20px" height="20px"
										src="../../resources/img_icon/ohmystar_pull.png"></li>
									<li><img width="20px" height="20px"
										src="../../resources/img_icon/ohmystar_pull.png"></li>
									<li><img width="20px" height="20px"
										src="../../resources/img_icon/ohmystar_half.png"></li>
									<li><img width="20px" height="20px"
										src="../../resources/img_icon/ohmystar_non.png"></li>
								</ul>
								<div class="trainerScore">3.6</div>
								<div class="tariner_comment">계란만으로 다이어트효과를 누려보세요!</div>
								<div class="tariner_ability">#식이요법</div>
							</div>
						</div>

						<div class="trainer_Info" style="float: left;">
							<div class="trainnerImg">
								<img class="trainnerImg" width="100%" height="100%"
									src="../../resources/img/trainer_jino.png">
							</div>
							<div class="trainnerTxt">
								<a class="trainerName">진오</a> <a class="trainerId">onji777</a>
								<ul>
									<li><img width="20px" height="20px"
										src="../../resources/img_icon/ohmystar_pull.png"></li>
									<li><img width="20px" height="20px"
										src="../../resources/img_icon/ohmystar_pull.png"></li>
									<li><img width="20px" height="20px"
										src="../../resources/img_icon/ohmystar_pull.png"></li>
									<li><img width="20px" height="20px"
										src="../../resources/img_icon/ohmystar_pull.png"></li>
									<li><img width="20px" height="20px"
										src="../../resources/img_icon/ohmystar_half.png"></li>
								</ul>
								<div class="trainerScore">4.6</div>
								<div class="tariner_comment">아침을 상쾌하게 해드립니다!</div>
								<div class="tariner_ability">#타바타</div>
							</div>
						</div>


						<div class="trainer_Info" style="float: left;">
							<div class="trainnerImg">
								<img class="trainnerImg" width="100%" height="100%"
									src="../../resources/img/trainer_kim.png">
							</div>
							<div class="trainnerTxt">
								<a class="trainerName">김진우</a> <a class="trainerId">wooJinK</a>
								<ul>
									<li><img width="20px" height="20px"
										src="../../resources/img_icon/ohmystar_pull.png"></li>
									<li><img width="20px" height="20px"
										src="../../resources/img_icon/ohmystar_pull.png"></li>
									<li><img width="20px" height="20px"
										src="../../resources/img_icon/ohmystar_pull.png"></li>
									<li><img width="20px" height="20px"
										src="../../resources/img_icon/ohmystar_pull.png"></li>
									<li><img width="20px" height="20px"
										src="../../resources/img_icon/ohmystar_pull.png"></li>
								</ul>
								<div class="trainerScore">5.0</div>
								<div class="tariner_comment">호랑이 장관의 독한 운동법!</div>
								<div class="tariner_ability">#체력관리 #다이어트</div>
							</div>
						</div>
						<!-- 리스트 끝 -->

					</div>
				</div>
			</div>
		</article>
	</section>
	<%@ include file="../../common/footer.jsp"%>
</body>
</html>