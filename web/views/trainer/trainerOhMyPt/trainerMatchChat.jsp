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

div#follower_Match_Main {
	margin-left: 50px;
	margin-top: 15px;
	margin-bottom: 25px;
	width: 1300px;
	height: 800px;
	border-radius: 10px;
}

a#trainerName {
	margin-left: 100px;
	font-size: 1.2em;
	font-weight: normal;
}

div.trainer_profile {
	margin-right: 50px;
	width: 250px;
	height: 500px;
	border: 2px solid orangered;
	float: left;
	border-radius: 10px;
	text-align: center;
}

div.trainer_content {
	width: 800px;
	margin-bottom: 25px;
}

th {
	font-size: 15px;
	height: 40px;
	border-top: 3px solid gray;
	border-bottom: 3px solid gray;
	color: rgb(103, 103, 103);
	font-weight: normal;
}

td {
	font-family: "Noto Sans KR Regular ";
	font-size: 12px;
	height: 35px;
	border-bottom: 2px solid rgb(179, 179, 179);
}

div.tabComment {
	font-size: 0.7em;
	font-weight: bold;
	color: rgb(181, 181, 181)
}

div.review {
	margin-top: 15px;
	margin-left: 45px;
	width: 625px;
	height: 120px;
	border: 1px solid black;
}

button#doMatching {
	border-radius: 50px;
	border: none;
	background: orangered;
	color: white;
	font-weight: bold;
	margin-left: 310px;
	font-size: 1.6em;
	padding: 15px;
}

button#doMatching:hover {
	background: rgb(196, 52, 0);
	cursor: pointer;
}

button#doMatching:focus {
	outline: none;
}

div.profile_ability {
	font-size: 0.9em;
	border-radius: 25px;
	background: orangered;
	color: white;
	font-weight: bold;
	margin-left: 20px;
	margin-right: 20px;
	margin-bottom: 25px;
}

div.profile_star ul {
	list-style: none;
	margin-left: 19px;
}

div.profile_star ul li {
	float: left;
	margin-left: 5px;
}

.matching_wrap {
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

.matching_box {
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

.matching_box .close {
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

div#talk_input {
	margin-top: 5px;
	margin-left: 10px;
	width: 400px;
	height: 80px;
	border: 1px solid black;
	border-radius: 10px;
	background: white;
}

div#talk_input textarea {
	margin: 1px;
	padding: 10px;
	width: 100%;
	height: 75%;
	border-radius: 25px;
	border: none;
	resize: none;
	background: none;
}

textarea.talk_follower_text {
	margin-bottom: 5px;
	margin-left: 15px;
	border: 1px solid rgb(125, 125, 125);
	width: 300px;
	height: 50px;
	border-radius: 25px;
	background: white;
	width: 300px;
	padding: 6px;
	border-radius: 25px;
	resize: none;
	cursor: default;
}

textarea.talk_trainer_text {
	margin-bottom: 5px;
	margin-left: 180px;
	border: 1px solid rgb(125, 125, 125);
	width: 300px;
	height: 50px;
	border-radius: 25px;
	background: rgba(255, 255, 255, 0.47);
	width: 300px;
	padding: 6px;
	border-radius: 25px;
	resize: none;
	cursor: default;
}

div.talk_follower {
	margin-left: 20px;
	margin-bottom: 5px;
	font-size: 0.5em;
}

div.talk_trainer {
	margin-left: 430px;
	margin-bottom: 5px;
	font-size: 0.5em;
}

button#returnList{
	width: 110px;
	height: 25px;
	border-radius: 10px;
	color: white;
	background: navy;
	cursor: pointer;
}

button#returnList:focus{
	outline: none;
}

button#sendMsg{
	border:1px solid black; 
	border-radius: 10px; 
	margin-top: 10px; 
	margin-left: 5px; 
	width: 70px; 
	height: 70px;
	font-weight: bold;
	box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
}

</style>
</head>
<body>
	<%@ include file="../../common/trainerNav.jsp"%>
	<section style="width: 1300px;">
		<aside style="margin-left: -100px;">
			<!--OH마이피티 메뉴-->
			<%@ include file="trainerOhMyPtAside.jsp"%>
			<!--OH마이피티 메뉴 종료-->
		</aside>
	</section>
	
	<section>
		<article>
			<div id="follower_Match_Main">
				<div id="mainName" style="margin-top: 15px; margin-left: 250px; font-size: 1.8em; font-weight: bold;">
					<a id="followerName">한진희</a> 직접상담 <button id="returnList">매칭신청 목록으로</button>
				</div>
				<br>
				<br>
					<div id="tarinerWait" style="margin-left: 50px; float: left; width: 800px;">
						<div class="trainer_content" style="font-weight: bold; font-size: 1.6em; clear: both;">
							<div id="chattingDiv"
								style="overflow-y: auto; overflow-x: hidden; padding: 5px; margin-left: 200px; width: 500px; height: 500px; border: 1px solid rgb(179, 179, 179); border-radius: 10px; background: rgba(227, 227, 227, 0.47);">
								<div class="talk_follower">팔로워</div>
								<textarea class="talk_follower_text" readonly>안녕하세요 이 시간대에 가능하신가요?</textarea>
								<div class="talk_trainer">트레이너</div>
								<textarea class="talk_trainer_text" readonly>아니요</textarea>
							</div>
							<div
								style="padding: 5px; margin-left: 200px; width: 500px; height: 90px; border: 1px solid rgb(179, 179, 179); border-radius: 10px; background: rgba(227, 227, 227, 0.47);">
								<div id="talk_input" style="float: left;">
									<textarea id="message"></textarea>
								</div>
								<button id="sendMsg">전송</button>
							</div>
						</div>
					</div>
				</div>
		</article>
	</section>
	<script>
        updateChat()
        function updateChat(){
            $("#chattingDiv").scrollTop( $("#chattingDiv").prop('scrollHeight'));

            $(".talk_follower_text").each(function(index,item){
               $(item).height(1).height( $(item).prop('scrollHeight'));
               $(item).css("height", $(item).height());
            })

            $(".talk_trainer_text").each(function(index,item){
               $(item).height(1).height( $(item).prop('scrollHeight'));
               $(item).css("height", $(item).height());
            })
        }
    </script>

	<%@ include file="../../common/footer.jsp"%>
</body>
</html>