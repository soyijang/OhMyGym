<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="../../common/followerNav.jsp"%>
	<section>
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
									<td><div id="applyname">한진희</div></td>
									<th>신청인 ID</th>
									<td><div id="applyid">hjh9406</div></td>
								</tr>
								<tr>
									<th>나이</th>
									<td><div id="age">27</div></td>
									<th>희망운동부위</th>
									<td><div id="tpart">배</div></td>
								</tr>
								<tr>
									<th>키</th>
									<td><div id="tall">174cm</div></td>
									<th>몸무게</th>
									<td><div id="weight">66kg</div></td>
								</tr>
								<tr>
									<td colspan="5"><textarea id="followerComment" readonly>화, 목 오후 7시 이후에  트레이닝 받고 싶습니다.</textarea><a id="goTalkBtn">직접상담하기</a><br>
									
									</td>
								</tr>		
							</tbody>
						</table>
					</div>
				</div>
				<div style="margin-top: 15px; margin-left: 165px;">
					<button onclick="completeMatching();"
						style="width: 100px; height: 30px; border: none; cursor: pointer; background: orangered; color: white; font-weight: bold;">매칭승인</button>
					<a onclick="inputReject();"
						style="margin-left: 10px; padding: 6.5px; font-size: 0.8em; width: 100px; height: 30px; border: none; cursor: pointer; background: navy; color: white; font-weight: bold;">매칭거절</a>
				</div>
				<div id="rejectArea">
						<textarea id="rejectComment" placeholder="거절사유를 상세히 입력해 주세요"></textarea>
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
							<th>신청인</th>
							<th>신청일자</th>
							<th>상태</th>
						</tr>
						<tr>
							<td>2</td>
							<td>hjh0621</td>
							<td>한진희</td>
							<td>2020-07-12</td>
							<td><div class="checkApply" onclick="submitMatching();" >대기</div></td>
						</tr>
						<tr>
							<td>1</td>
							<td>onji677</td>
							<td>김진오</td>
							<td>2020-07-11</td>
							<td><div class="checkApply" onclick="submitMatching();">거절</div></td>
						</tr>
					</table>
				</div>
			</div>

		</article>
	</section>
	<script>

   		 $(".checkApply").each(function(index,item){
   		 	switch($(item).text()){
   		 	case '대기': $(item).css("background","navy");
   		 	}
   		 })
   		 
   		function submitMatching(){
            jQuery('.matching_wrap').fadeIn('slow');
        }
   		 
   		function inputReject(){
   			$(".matching_box").css({"height":425,"top":"15%"});
   			$("#rejectArea").css("display","block");
   		}
   	
   	</script>
	
	</section>
	<%@ include file="../../common/footer.jsp"%>
</body>
</html>