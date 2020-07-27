<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, com.omg.jsp.followerHealth.model.vo.*, com.omg.jsp.member.model.vo.*"%>
<% 
	request.setCharacterEncoding("UTF-8");

	String memberId = (String) request.getAttribute("memberId");
%>
<%-- <% Member loginUser = (Member) session.getAttribute("loginUser");%> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- question -->
<style>
div#visitQuestion{
        width: 700px; 
        height: 600px; 
        margin-left: -80px; 
        margin-right: auto; 
        margin-top: 100px; 
        margin-bottom: 100px; 
        border-radius: 9px; 
        background: navy;
    }
    div.questionBox{
        margin-left: auto;
        margin-right: auto;
        padding-top: 40px;
        width: 400px;
        height: 600px;
        overflow: hidden;
        }

    div#quesionMain{
        width: 4200px;
        margin-top: 100px;
    }

    div.questionPart{
        width: 350px;
        height: 500px;
        text-align: center;
        margin: 19px
    }

    label.questionTitle{
        font-size: 1.75em;
        font-weight: bold;
        color: white;
    }
    
   #height, #weight, #motive, #goal, #bodyUneasy {
   		height: 20px;
   		width: 180px;
   		background-color: navy;
   		color: white;
   		border: 2px solid white;
   		
   }

</style>
</head>
<body>
	<div>
	<%@ include file="../../common/nonNav.jsp"%>
	
	<%-- , <%= request.getContextPath() %>InsertHealthNow --%>
			<div>
			
			 <div id="visitQuestion">
				<div id="visitQuestionIn" class="questionBox">
					 <form id="questionForm" action="<%= request.getContextPath() %>/InsertHealthNow" method="post" > 
						<input type="hidden" value="<%= memberId %>" name="memberId">
						<script>
							console.log("dkkdkdk");
							console.log("<%=memberId%>");
						</script>
						<div id="quesionMain">
						<input type="hidden" name="plag" value="1">
							<div id="part1" class="questionPart" style="float: left;">
								<label class="questionTitle">키를 알려주세요</label><br>
								<div style="margin-top: 20px; font-size: 1.2em; color: white;">
									<input type="text" value="" id="height" name="height" placeholder="cm단위로 입력해주세요">
								</div>
							</div>
							<div id="part2" class="questionPart" style="float: left;">
								<label class="questionTitle">몸무게를 알려주세요</label><br>
								<div style="margin-top: 20px; font-size: 1.2em; color: white;">
									<input type="text" value="" id="weight" name="weight" placeholder="kg단위로 입력해주세요">
								</div>
							</div>
							<div id="part3" class="questionPart" style="float: left;">
								<label class="questionTitle">가장 집중적으로 운동하고싶은 부위를 골라주세요</label><br>
								<div
									style="margin-top: 20px; text-align: left; padding-left: 110px; color: white; font-size: 1.2em;">
									<input type="checkbox" id="arm" name="focus" value="arm">
									<label for="arm">팔/다리</label> &nbsp;<br> 
									<input
										type="checkbox" id="chest" name="focus" value="chest">
									<label for="chest">가슴 </label> &nbsp;<br> 
									<input
										type="checkbox" id="stomach" name="focus" value="stomach">
									<label for="stomach">배 </label> &nbsp;<br> 
									<input
										type="checkbox" id="hip" name="focus" value="hip"> <label
										for="hip">엉덩이 </label> &nbsp;<br>
								</div>
							</div>
							<div id="part4" class="questionPart" style="float: left;">
								<label class="questionTitle">주간 운동량이<br> 얼마나 되시나요?
								</label><br>
								<div
									style="margin-top: 20px; text-align: left; padding-left: 90px; color: white; font-size: 1.2em;">
									<input type="radio" id="exercise1" name="exercise" value="1시간 미만">
									<label for="work1">1시간 미만</label> &nbsp;<br> <input
										type="radio" id="exercise2" name="exercise" value="1시간~2시"> <label
										for="work2">1시간 ~ 2시간 </label> &nbsp;<br> <input
										type="radio" id="exercise3" name="exercise" value="3시간~7시간"> <label
										for="work3">3시간 ~ 7시간</label> &nbsp;<br> <input
										type="radio" id="exercise4" name="exercise" value="7시간이상"> <label
										for="work4">7시간 이상</label> &nbsp;<br>
								</div>
							</div>
							<div id="part5" class="questionPart" style="float: left;">
								<label class="questionTitle">가장 커다란 동기부여가<br>되는것은 무엇인가요?
								</label><br>
								<div
									style="margin-top: 20px; text-align: left; padding-left: 90px; color: white; font-size: 1.2em; width: 500px; height: 20px">
									<input type="text" id="motive" name="motive" value="" placeholder="ex)다이어트 자극 사진을 봤을 때">
									
								</div>
							</div>
							<div id="part6" class="questionPart" style="float: left;">
								<label class="questionTitle">운동하는데 <br>신체적 어려움이 있으신가요?
								</label><br>
								<div
									style="margin-top: 20px; text-align: left; padding-left: 90px; color: white; font-size: 1.2em;">
									<input type="text" id="bodyUneasy" name="bodyUneasy" value="" placeholder="ex)허리디스크">
									
								</div>
							</div>
							<div id="part7" class="questionPart" style="float: left;">
								<label class="questionTitle">운동하는데 <br>목표가 어떻게 되시나요?
								</label><br>
								<div
									style="margin-top: 20px; text-align: left; padding-left: 90px; color: white; font-size: 1.2em;">
									<input type="text" id="goal" name="goal" value="" placeholder="ex)10kg감량">
									
								</div>
							</div>
							<div id="part8" class="questionPart" style="float: left;">
								<label class="questionTitle">현재 활동수준은 어떠신가요?
								</label><br>
								<div
									style="margin-top: 20px; text-align: left; padding-left: 90px; color: white; font-size: 1.2em;">
									<input type="radio" id="active1"  name="active" value="매우활동적">
									<label for="work1">매우활동적</label> &nbsp;<br>
									 <input
										type="radio" id="active2" name="active" value="다소활동적"> <label
										for="work2">다소활동적</label> &nbsp;<br> 
									<input
										type="radio" id="active3" name="active" value="조금활동적"> <label
										for="work3">조금활동적</label> &nbsp;<br> 
									<input
										type="radio" id="active4" name="active" value="활동적이지않음"> <label
										for="work4">활동적이지않음</label> &nbsp;<br>
										
								</div>
							</div>
							<div id="part9" class="questionPart" style="float: left;">
								<label class="questionTitle">수면시간은 어떻게 되시나요?</label><br>
								<div style="margin-top: 20px; font-size: 1.2em; color: white;">
									<input type="number" value="" id="sleep" name="sleep">
								</div>
							</div>
							<div>
								<span></span>
							</div>
						</div>
						
					</form> 
				</div>
				<img onclick="quest_clickNext();" class="contentNext_btn_quest"
					src="/omg/resources/img_icon/next.png" width="70px" height="90px"
					style="position: absolute; left: 70%; top: 1000px; border: 1px solid black;"> 
				<img onclick="quest_clickBack();" class="contentNext_btn_quest"
					src="/omg/resources/img_icon/back.png" width="70px" height="90px"
					style="position: absolute; left: 30%; top: 1000px; border: 1px solid black;">
			</div>
			
			<div>
				<button onclick="finish()">가입하기</button>
			</div>
		</div>
		<script>
        var questPos = 0;
        function quest_clickNext(){
            if(questPos >= 0 && questPos < 10){
                if(questPos < 9) questPos = questPos + 1;
                $('.questionBox').animate({scrollLeft : 390 * questPos}, 500);
            }
        }
        function quest_clickBack(){
            if(questPos > 0 && questPos < 10){
                if(questPos > 0) questPos = questPos - 1;
                $('.questionBox').animate({scrollLeft : 390 * questPos}, 500);
            }
        }
        
        function finish() {
        	$("#questionForm").submit();
        	
        	
        	
        }
        

    </script> 
	
	
	
	
	<div style="position: absolute; top: 1500px;">
		<%@ include file="../../common/footer.jsp"%>

	</div>
	</div>
</body>
</html>