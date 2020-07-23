<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*, com.omg.jsp.matching.model.vo.*"%>
<% 
	ArrayList<MatchingRequest> matchingRequest = (ArrayList<MatchingRequest>) request.getAttribute("matchRequest");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<style>
body {
	font-family: "Noto Sans KR";
}

#titleArea div {
	border: 2px double gray;
	display: inline-block;
	width: 1000px;
	height: 40px;
	margin-left: 40px;
	font-size: 14px;
}

table#ApplyList {
	border-top: 2px solid orangered;
	border-bottom: 3px double black;
	border-collapse: collapse;
}

table#ApplyList tr th {
	border-bottom: 2px solid black;
	padding: 10px;
}

table#ApplyList tr td {
	text-align: center;
	border-bottom: 1px solid gray;
	font-size: 0.9em;
	padding: 2px;
}

#titleArea div td div.checkApply {
	margin-left: auto;
	margin-right: auto;
	border: none;
	border-radius: 25px;
	text-align: center;
	width: 80px;
	height: 20px;
	background: orangered;
	color: white;
	font-weight: bold;
	cursor: pointer;
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

textarea#followerComment {
	margin: 5px;
	width: 60%;
	height: 100%;
	resize: none;
	border: none;
	
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

div#rejectArea {
	margin-top: 10px;
	background: white;
	width: 300px;
	height: 100px;
	margin-left: auto;
	margin-right: auto;
	display: none;
}

#rejectBtn {
	margin-top: 25px;
	margin-left: 100px;
	width: 100px;
	height: 30px;
	border: none;
	background: navy;
	color: white;
	font-weight: bold;
	cursor: pointer;
}

#rejectComment{
	width:100%; 
	height: 100px; 
	resize: none; 
	border-radius: 5px;
}

a#goTalkBtn{
	padding: 5px;
	font-size: 0.9em; 
	width: 50px; 
	height: 50px; 
	border: 1px solid gray;
	border-radius: 10px;
	margin-bottom: 5px;
	background: rgb(214, 214, 214);
	cursor: pointer;
}
</style>
</head>
<body>
	<div class="matching_wrap" style="display: none;">
		<div class="dark_bg"
			onclick="jQuery('.matching_wrap').fadeOut('slow')"></div>
		<div class="matching_box">
			<div
				style="width: 100%; height: 30px; background: orangered; border-radius: 8px;">
				<div
					style="color: white; font-weight: bold; font-family: 'Noto Sans KR'; margin-left: 233px; padding-top: 5px;">매칭 관리</div>
				<img class="close" onclick="jQuery('.matching_wrap').fadeOut('slow')" src="../../resources/img_icon/closeIcon.png" width="20px" height="20px">
			</div>
			<div class="matching_content">
				<form>
				<div style="font-size: 1em; text-align: center;">
					<div style="margin-top: 10px; font-size: 1.2em; font-weight: bold;">
						신청내용
					</div>
					<div>
						<table class="applytable">
							<tbody>
								<tr>
									<th>신청인</th>
									<td><div id="applyname"></div></td>
									<th>신청인 ID</th>
									<td><div id="applyid"></div></td>
								</tr>
								<tr>
									<th>나이</th>
									<td><div id="age"></div></td>
									<th>희망운동부위</th>
									<td><div id="tpart"></div></td>
								</tr>
								<tr>
									<th>키</th>
									<td><div id="tall"></div></td>
									<th>몸무게</th>
									<td><div id="weight"></div></td>
								</tr>
								<tr>
									<td colspan="5"><textarea id="followerComment" readonly></textarea><a id="goTalkBtn" onclick="goMatchChat()">직접상담하기</a><br>
									
									</td>
								</tr>		
							</tbody>
						</table>
					</div>
				</div>
				<div style="margin-top: 15px; margin-left: 165px;">
					<button onclick="completeMatching($('#applyname').val());"
						style="width: 100px; height: 30px; border: none; cursor: pointer; background: orangered; color: white; font-weight: bold;">매칭승인</button>
					<a onclick="inputReject();"
						style="margin-left: 10px; padding: 6.5px; font-size: 0.8em; width: 100px; height: 30px; border: none; cursor: pointer; background: navy; color: white; font-weight: bold;">매칭거절</a>
				</div>
				<div id="rejectArea">
						<textarea id="rejectComment" placeholder="거절	사유를 상세히 입력해 주세요"></textarea>
						<input type="submit" id="rejectBtn" value="매칭거절 확정">
				</div>
				</form>
			</div>
		</div>
	</div>


	<%@ include file="../../common/trainerNav.jsp"%>

	<section style="width: 1300px;">
		<aside style="margin-left: -100px;">
			<!--OH마이피티 메뉴-->
			<%@ include file="trainerOhMyPtAside.jsp"%>
			<!--OH마이피티 메뉴 종료-->
		</aside>
		<article id="titleArea">
			<div>
				<h1 style="margin-top: 6px;">&nbsp;&nbsp;&nbsp;매칭신청 목록</h1>
			</div>

			<div
				style="margin-top: 10px; width: 1000px; height: 600px; border: 2px solid gray">
				<div
					style="margin-top: 25px; margin-left: 70px; width: 850px; height: 500px; border: 1px solid rgb(214, 214, 214); border-radius: 10px;">
					<table id="ApplyList" style="margin-top: 25px; margin-left: 70px; width: 700px; font-size: 1.2em; color: rgb(214, 214, 214);">
						<tr>
							<th>번호</th>
							<th>신청인ID</th>
							<th>신청일자</th>
							<th>상태</th>
						</tr>
						
						<% for(int i = 0; i < matchingRequest.size(); i++) { %>
							<tr>
								<td><%= matchingRequest.size() - i %></td>
								<td><%= matchingRequest.get(i).getFollowerId() %></td>
								<td><%= matchingRequest.get(i).getRequestDate() + " " + matchingRequest.get(i).getRequestTime() %></td>
								<td>
									<div class="checkApply" onclick="submitMatching('<%=matchingRequest.get(i).getFollowerId()%>');"><%= matchingRequest.get(i).getRequestType() %></div>
								</td>
							</tr>
						<% } %>
						<!-- <tr>
							<td>2</td>
							<td>hjh0621</td>
							<td>2020-07-12</td>
							<td><div class="checkApply" onclick="submitMatching();" >대기</div></td>
						</tr>
						<tr>
							<td>1</td>
							<td>onji677</td>
							<td>2020-07-11</td>
							<td><div class="checkApply" onclick="submitMatching();">거절</div></td>
						</tr> -->
					</table>
				</div>
			</div>

		</article>
	</section>
	
	<br><br><br><br><br><br><br><br><br>
	<script>

   		 $(".checkApply").each(function(index,item){
   		 	switch($(item).text()){
   		 	case '대기': $(item).css("background","navy"); break;
   		 	case '거절': $(item).css("background","gray"); break;
   		 	}
   		 })
   		 
   		function submitMatching(followerId){
            jQuery('.matching_wrap').fadeIn('slow');
            
            console.log(followerId);
            
            $.ajax({
            	url: "requestInfo.mc",
            	data: {
            		followerId: followerId
            	},
            	type: "get",
            	success: function(data) {
            		var result = data;
            		var now = new Date();
            		
            		var temp = result['memberAge'].substring(0,2);
            		if(temp.charAt(0) > 5 && temp.charAt(0) <= 9) {
            			var ageYear = "19" + temp;
            		} else {
            			var ageYear = "20" + temp;
            		}
            		
            		$("#applyid").text(result['followerId']);
            		$("#applyname").text(result['followerName']);
            		$("#age").text(now.getFullYear() - ageYear + 1);
            		$("#tpart").text(result['wishPart']);
            		$("#tall").text(result['height']);
            		$("#weight").text(result['weight']);
            		$("#followerComment").text(result['chatContent']);
            		
            	},
            	error: function(data) {
            		console.log("실패");
            	}
            });
            
            
        }
   		 
   		 function completeMatching(followerId) {
   			 var followerId = followerId;
   			 console.log(followerId);
   			 
   			 $.ajax({
   				 url: "approval.mc",
   				 data: {followerId: followerId},
   				 type: "get",
   				 success: function(data) {
   					 console.log("성공");
   					 //alert("승인이 완료되었습니다.");
   				 },
   				 error: function(data) {
   					 console.log("실패");
   				 }
   			 });
   		 }
   		 
   		function inputReject(){
   			$(".matching_box").css({"height":425,"top":"15%"});
   			$("#rejectArea").css("display","block");
   		}
   	
   	</script>
	<%@ include file="../../common/footer.jsp"%>
</body>
</html>