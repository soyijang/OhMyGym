<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" 
	import="java.util.*, com.omg.jsp.trainerCeritificate.model.vo.*, com.omg.jsp.trainerCareer.model.vo.*, com.omg.jsp.trainerCeritificate.model.vo.*
	, com.omg.jsp.trainerEducation.model.vo.*, com.omg.jsp.trainerReview.model.vo.*"%>
<% 
	HashMap<String, Object> hmap = (HashMap<String, Object>) request.getAttribute("information"); 
	ArrayList<String> trainerInfo = (ArrayList<String>) hmap.get("trainerInfo");
	ArrayList<TrainerCeritificate> ceritificateList = (ArrayList<TrainerCeritificate>) hmap.get("ceritificate");
	ArrayList<TrainerEducation> educationList = (ArrayList<TrainerEducation>) hmap.get("education");
	ArrayList<TrainerCareer> tcrList = (ArrayList<TrainerCareer>) hmap.get("career");
	ArrayList<TrainerReview> trList = (ArrayList<TrainerReview>) hmap.get("review");
%>
<!DOCTYPE html>
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

* {
	font-family: "Noto Sans KR";
}

div#follower_Match_Main {
	margin-left: 50px;
	margin-top: 15px;
	margin-bottom: 25px;
	width: 1300px;
	height: 1700px;
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
	margin: 0 auto;
	width: 300px;
	height: 300px;
	border: 1px solid black;
	border-radius: 40px;
	border-color: lightgray;
	float: left;
}
div.review:first-child {
	margin-left: 75px;
}
div.review:nth-child(2) {
	margin-left: 50px;
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
/* 	margin-bottom: 25px; */
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
div.tariner_subAbility {
	margin-top: 10px;
	font-size: 0.9em;
	border-radius: 25px;
	background: gray;
	color: white;
	font-weight: bold;
	margin-left: 20px;
	margin-right: 20px;
}

</style>
</head>
<body>
	<%@ include file="../../common/followerNav.jsp"%>

	<div class="matching_wrap" style="display: none;">
		<div class="dark_bg"
			onclick="jQuery('.matching_wrap').fadeOut('slow')"></div>
		<div class="matching_box">
			<div
				style="width: 100%; height: 30px; background: orangered; border-radius: 8px;">
				<div
					style="color: white; font-weight: bold; font-family: 'Noto Sans KR'; margin-left: 200px; padding-top: 5px;">트레이너
					매칭신청</div>
				<img class="close"
					onclick="jQuery('.matching_wrap').fadeOut('slow')"
					src="../../resources/img_icon/closeIcon.png" width="20px"
					height="20px">
			</div>
			<div class="matching_content">
				<div style="font-size: 1em; text-align: center;">
					<div style="margin-top: 10px; font-size: 0.9em;">
						오마이짐은 트레이너들이 팔로워님이 원하시는 시간 및 요일에 맞춰서 <br> <a
							style="color: orangered; font-weight: bold;">매주 2회 </a>PT동영상을
						제공하며 개별 코칭을 해드립니다!
					</div>
					<div
						style="margin-top: 10px; font-size: 0.9em; font-weight: bold; margin-bottom: 10px;">희망하시는
						요일 및 시간대를 입력해주세요</div>
					<textarea style="width: 300px; height: 55px; resize: none;"
						placeholder="예시) 수, 금 오후 8시~9시"></textarea>

					<div style="font-size: 0.8em; font-weight: bold; color: red;">특정
						사유가 있는경우 트레이너측에서 매칭을 거절할 수 있습니다. 이점 유의해주세요</div>
				</div>
				<div style="margin-top: 15px; margin-left: 165px;">
					<button onclick="completeMatching();"
						style="width: 100px; height: 30px; border: none; cursor: pointer; background: orangered; color: white; font-weight: bold;">매칭신청하기</button>
					<a onclick="jQuery('.matching_wrap').fadeOut('slow')"
						style="margin-left: 10px; padding: 6.5px; font-size: 0.8em; width: 100px; height: 30px; border: none; cursor: pointer; background: navy; color: white; font-weight: bold;">신청취소</a>
				</div>
			</div>
		</div>
	</div>


	<section>
		<article>
			<div id="follower_Match_Main">
				<div id="mainName"
					style="margin-top: 15px; margin-left: 40px; font-size: 1.8em; font-weight: bold;">트레이너
					상세보기</div>
				<br>
				<br>
				<div style="margin-left: 80px;">
					<div class="trainer_profile">
						<div class="profile_img"
							style="margin: auto; margin-bottom: 30px; margin-top: 50px; width: 140px; height: 140px; border-radius: 70%; overflow: hidden;">
							<img class="trainnerImg" width="100%" height="100%" src="../../resources/img/trainerJang.png">
						</div>
						<div class="profile_Name" style="font-size: 1.5em;"><%= trainerInfo.get(0) %></div>
						<div class="profile_Id"><%= trainerInfo.get(1) %></div>
						<div class="profile_score" style="clear: both; font-weight: bold; font-size: 1.2em; color: orangered; margin-bottom: 30px;">
							<img width="18px" height="18px" src="/omg/resources/img_icon/ohmystar_pull.png" style="vertical-align: middle;">&nbsp;&nbsp;
							<%	double gradeAvg = 0;
								double temp = 0;
								if(trList.size() > 0){
									for(int i = 0; i < trList.size(); i++) {
										temp += trList.get(i).getGrade();
									}
									gradeAvg = temp / trList.size();
								} else { 
									gradeAvg = 0;
								} %>
							<div style=" display: inline-block; "><%= gradeAvg %></div>		
						</div>

						<div class="profile_comment">
							<textarea
								style="font-size: 0.95em; text-align:center; font-weight: bold; border: none; resize: none; width: 200px; height: 70px; overflow: hidden"><%= trainerInfo.get(2) %></textarea>
						</div>
						<div class="profile_ability">#<%= trainerInfo.get(3) %></div>
						<div class="tariner_subAbility">#<%= trainerInfo.get(4) %></div>

					</div>
					<div id="trainerDetail" style="float: left; width: 800px;">
						<div class="trainer_content" style="clear: both;">
							<div style="text-align: center; clear: both; width: 800px; border: 1px solid rgb(179, 179, 179); border-radius: 10px;">
								<div style="margin-top: 25px; font-size: 1.4em; font-weight: bold;">보유자격증</div>
								<div class="tabComment">트레이너가 보유한 자격증을 확인하세요!</div>
								<div style="margin-top: 30px;">
									<table style="margin-left: 25px; width: 750px; border-collapse: collapse; margin-bottom: 25px;">
										<tbody>
											<tr>
												<th>자격증</th>
												<th>발급기관</th>
												<th>발급일자</th>
											</tr>
											
											<% if(ceritificateList.size() > 0) {
												for(int i = 0; i < ceritificateList.size(); i++) { %>
													<tr>
														<td><%= ceritificateList.get(i).getCertiName() %></td>
														<td><%= ceritificateList.get(i).getCertiInstitution() %></td>
														<td><%= ceritificateList.get(i).getCertiDate() %></td>
													</tr>
												<% } 
												} else { %>
													<tr>
														<td colspan="3">등록된 자격증 정보가 없습니다.</td>
													</tr>
												<% } %>
										</tbody>
									</table>
								</div>
							</div>
							
							<div style="margin-top: 25px; text-align: center; clear: both; width: 800px; border: 1px solid rgb(179, 179, 179); border-radius: 10px;">
								<div style="margin-top: 25px; font-size: 1.4em; font-weight: bold;">학력</div>
								<div class="tabComment">트레이너의 학력을 확인하세요!</div>
								<div style="margin-top: 30px;">
									<table style="margin-left: 25px; width: 750px; border-collapse: collapse; margin-bottom: 25px;">
										<tbody>
											<tr>
												<th>학교명</th>
												<!-- <th>학과</th> -->
												<th>입학일</th>
												<th>상태</th>
											</tr>
											<% if(educationList.size() > 0) {
												for(int i = 0; i < educationList.size(); i++) { %>
													<tr>
														<td><%= educationList.get(i).getEduName() %></td>
														<td><%= educationList.get(i).getEduEnrollDate() %></td>
														<td><%= educationList.get(i).getEduState() %></td>
													</tr>
												<% } 
											 } else { %>
											 		<tr>
														<td colspan="3">등록된 학력 정보가 없습니다.</td>
													</tr>
											 <% } %>

										</tbody>
									</table>
								</div>
							</div>

						<div style="margin-top: 25px; text-align: center; clear: both; width: 800px; border: 1px solid rgb(179, 179, 179); border-radius: 10px;">
								<div style="margin-top: 25px; font-size: 1.4em; font-weight: bold;">경력사항</div>
								<div class="tabComment">트레이너의 화려한 경력을 확인하세요!</div>
								<div style="margin-top: 30px;">
									<table style="margin-left: 25px; width: 750px; border-collapse: collapse; margin-bottom: 25px;">
										<tbody>
											<tr>
												<th>기관명</th>
												<th>직급</th>
												<th>근무시작일</th>
												<th>근무종료일</th>
											</tr>
											<% if(tcrList.size() > 0) {
												for(int i = 0; i < tcrList.size(); i++) { %>
													<tr>
														<td><%= tcrList.get(i).getCompName() %></td>
														<td><%= tcrList.get(i).getCareerLevel() %></td>
														<td><%= tcrList.get(i).getEnterDate() %></td>
														<td><%= tcrList.get(i).getResignDate() %></td>
													</tr>
												<% } 
											} else {%>
													<tr>
														<td colspan="4">등록된 경력 정보가 없습니다.</td>
													</tr>
											<% } %>

										</tbody>
									</table>
								</div>
							</div>
							<br>
							<div class="trainer_content">
								<div
									style="text-align: center; clear: both; width: 800px; height: 400px; border: 1px solid rgb(179, 179, 179); border-radius: 10px;">
									<div
										style="margin-top: 25px; font-size: 1.4em; font-weight: bold;">트레이너
										후기보기</div>
									<div class="tabComment">트레이너와 매칭했던 팔로워들의 후기를 읽어보세요!</div>
									<div style="width: 800px; height: 350px; margin-top: 10px;">
										<%
										if(trList.size() > 1) {
											for(int i = 0; i < 2; i++) { %>
												<div class="review">
													<div style="font-weight: bold; font-size: 1.15em; padding-top: 10px; padding-left: 25px; padding-right: 25px; text-align: left;">
														<% String followerId = trList.get(i).getFollowerId();
															for(int j = 0; j < followerId.length(); j++) { 
																if(j < 3) {%>
																	<%=followerId.charAt(j)%>
																<% } else {%>
																	<%="*"%>
																<% } %>
															<% } %>
													</div>
													<div style="color: orangered; font-weight: 600; text-align: right; vertical-align: middle; padding-right: 15px;">
														<img width="18px" height="18px" src="/omg/resources/img_icon/ohmystar_pull.png" style="top:4px;">&nbsp;&nbsp;
														<%= trList.get(i).getGrade() %>
													</div>
													<div style="padding: 20px; text-align: left;">
														<%= trList.get(i).getRatingContent() %>
													</div>
												</div>
											<% } 
										} else {%>
											등록된 후기가 아직 없습니다.
										<% } %>
									</div>
								</div>
							</div>

							<div class="trainer_content">
								<button id="doMatching" onclick="submitMatching();">매칭신청하기</button>
							</div>

						</div>
					</div>
					<div id="tarinerWait"
						style="float: left; width: 800px; display: none;">
						<div class="trainer_content"
							style="font-weight: bold; font-size: 1.6em; clear: both;">
							트레이너 매칭 신청이 완료되었습니다!<br> <a
								style="font-size: 0.5em; font-weight: bold; color: rgb(167, 167, 167)">트레이너와
								메세지를 통해 시간조율이 가능합니다. 트레이너에게 메세지를 보내보세요!</a><br>
							<br>
							<div id="chattingDiv"
								style="overflow-y: auto; overflow-x: hidden; padding: 5px; margin-left: 200px; width: 500px; height: 500px; border: 1px solid rgb(179, 179, 179); border-radius: 10px; background: rgba(227, 227, 227, 0.47);">
								<div class="talk_follower">팔로워</div>
								<textarea class="talk_follower_text" readonly>안녕하세요 이 시간대에 가능하신가요?안녕하세요 이 시간대에 가능하신가요?안녕하세요 이 시간대에 가능하신가요?안녕하세요 이 시간대에 가능하신가요?안녕하세요 이 시간대에 가능하신가요?</textarea>
								<div class="talk_trainer">트레이너</div>
								<textarea class="talk_trainer_text" readonly>아니요</textarea>
								<div class="talk_follower">팔로워</div>
								<textarea class="talk_follower_text" readonly>그럼언제되나요그럼언제되나요그럼언제되나요그럼언제되나요그럼언제되나요그럼언제되나요그럼언제되나요그럼언제되나요</textarea>
								<div class="talk_trainer">트레이너</div>
								<textarea class="talk_trainer_text" readonly>너랑은안해요너랑은안해요너랑은안해요너랑은안해요너랑은안해요너랑은안해요너랑은안해요너랑은안해요너랑은안해요너랑은안해요너랑은안해요너랑은안해요너랑은안해요</textarea>
							</div>
							<div
								style="padding: 5px; margin-left: 200px; width: 500px; height: 90px; border: 1px solid rgb(179, 179, 179); border-radius: 10px; background: rgba(227, 227, 227, 0.47);">
								<div id="talk_input" style="float: left;">
									<textarea id="message"></textarea>
								</div>
								<button id="sendMsg"
									style="margin-top: 10px; margin-left: 5px; width: 70px; height: 70px;">전송</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</article>
	</section>
	<script>
        function completeMatching(){
            $('html').scrollTop(0);
            jQuery('.matching_wrap').fadeOut('fast');

            var mainTab = document.getElementById("mainName");

            mainTab.innerText = "트레이너 매칭대기";

            $("#trainerDetail").css("display","none");
            $("#follower_Match_Main").css("height",900);
            $("#tarinerWait").css("display","block");
            updateChat();
        }

        function submitMatching(){
            jQuery('.matching_wrap').fadeIn('slow');
        }

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