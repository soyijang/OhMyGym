<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<%
	ArrayList<HashMap<String, Object>> list = (ArrayList<HashMap<String, Object>>) request.getAttribute("list");
%>	
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
	/* margin-top: -15px; */
	font-weight: bold;
	font-size: 0.9em;
	height: 22px;
}

a.trainerName {
	font-size: 1em;
	font-weight: bold;
}

a.trainerId {
	display: none;
}

div.tariner_comment {
	height: 45px;
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
	<script>
		var profileManageCode;
	
		function profileload(userId){   
		     $.ajax({
				 url : "/omg/loadProfile.all",
			     type : 'post',
			     data : {
			          	userId : userId
				       },
				       success : function(data) {
				          profileManageCode = data.fileManageName;
				          console.log(profileManageCode);
				          $("."+userId).attr("src", "<%=request.getContextPath()%>/resources/test/"+profileManageCode); 
				 		},
				 		error : function(){
							profileManageCode = "";
				 		}
		     })
		}		
		profileload();
	
	</script>
	
	
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
					<div style="margin: auto; padding: 10px; padding-left: 30px; padding-right: 30px; text-align: center;">
						<!-- 리스트 시작 -->
						<%for(int i = 0; i < list.size() - 1; i++) {
							HashMap<String, Object> hmap = list.get(i); %>
							<script>profileload("<%= hmap.get("trainerId") %>")</script>
							<div class="trainer_Info" style="float: left;">
								<input type="hidden" value="<%= hmap.get("trainerId") %>">
								<div class="trainnerImg">
									<img class="<%= hmap.get("trainerId") %>" width="100%" height="100%" style="border-radius: 15px;">
								</div>
								<div class="trainnerTxt">
									<a class="trainerName"><%= hmap.get("trainerName") %></a>
									<div class="trainerScore" style="text-align: center;">
										<img width="18px" height="18px" src="/omg/resources/img_icon/ohmystar_pull.png" style="vertical-align: middle;">&nbsp;&nbsp;
										<%= list.get(list.size() - 1).get(hmap.get("trainerId")) %>
									</div>
									<div class="tariner_comment"><%= hmap.get("trainerComment") %></div>
									<div class="tariner_ability">#<%= hmap.get("mainField") %></div>
									<div class="tariner_subAbility">#<%= hmap.get("subField") %></div>
								</div>
							</div>
							
						<% } %>

						<!-- <div class="trainer_Info" style="float: left;">
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
						<!-- 리스트 끝 -->

					</div>
				</div>
			</div>
		</article>
	</section>
	
	<script>
	$(function() {
		$(".trainer_Info").click(function() {
			//var num = $(this).children().childred().eq(0).val();
			var num = $(this).find("input").val();
			console.log(num);
			
			location.href="<%= request.getContextPath()%>/selectOne.mc?num=" + num;
		});
	});
	</script>
	
	
	
	<%@ include file="../../common/footer.jsp"%>
</body>
</html>