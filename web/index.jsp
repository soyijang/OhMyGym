<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="/omg/resources/css/sideBtn.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <style>
    html {
        scroll-behavior: smooth;
    }

    body{
        margin:0px;
        padding:0px;
        overflow:auto;
        overflow-x: hidden;
    }

    hr {
        background-color: rgba(214, 214, 214, 0.15);
    }

    /*스타일적용*/
    table.solution_top_table{margin-left: 150px; padding-top:107px; width:960px}
    .solution_image{width:140px;height:20px}
    .solution_title{font-size:30px;padding-top:22px;line-height:30px}
    .background_image_section{background-position:center center;background-size:cover}

    /*오마이짐 소개판*/

    section{
        font-family: Noto Sans SC;
    }

    table.main_top_table {
        width: 1400px; 
        height: 400px; 
        text-align: center;
    }

    table.main_top_table tr td#main_intro_text h4{
        margin-left: 90px;
    }


    table.main_top_table tr td#main_intro_text a{
        margin-top: -150px;
        margin-left: 90px;
        font-size: 3em;
        font-weight: 900;
    }

    #meal_solution
    {
        background-color:#ddddd3;
     }
    #meal_solution div.background_image_section
    {
        width: 100%;
        height:750px;
        background-image:url(resources/img/background_img1.png);
        background-attachment: fixed;
        color: white;
    }
    #trainning_solution
    {
        background-color:#ddddd3;
    }
    #trainning_solution div.background_image_section
    {
        height:750px;
        background-image:url(resources/img/background_img2.png);
        background-attachment: fixed;
        color: white;
    }

    td.table_description{
        font-size: 1.25em;
    }

    div#visitQuestion{
        width: 700px; 
        height: 600px; 
        margin-left: auto; 
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
        width: 2000px;
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

    /*-----*/

  </style>
</head>
<body>
	<%@ include file="views/common/nonNav.jsp"%>
	<section>
		<div class="wing_nav right">
			<ul class="list">
				<li class="inquire" id="inquire"><a href=""><strong
						class="animated fadeInLeft txt">가입하기</strong></a></li>
				<li class="remoteagnt" id="remote_cs_li"><a href="javascript:;"
					id=""><strong class="animated fadeInLeft txt">자주묻는질문</strong></a></li>
			</ul>
			<a href="#" class="topbtn" style="display: none;"><span>TOP</span></a>
		</div>

		<div id="main_solution">
			<div class="backgroundvideo" oncontextmenu="return false"
				style="position: absolute; z-index: -1; right: 0px; top: 105px">
				<video muted autoplay loop>
					<source src="resources/video/main2.mp4" type="video/mp4" style="width: 100%;">
				</video>
			</div>
			<div class="background_image_section">
				<table class="main_top_table" style="height: 1000px; width: 500px;">
					<tbody>
						<tr>
							<td colspan="4" rowspan="1" id="main_intro_text"><h4>
									운동과 식단 그리고 내 몸의 상태 까지<br> 나에게 딱 맞는<br>
								</h4> <a>OH! MY GYM</a></td>
							<!--홈트이미지-->
							<td rowspan="4"></td>
							<!-- <img src="img/background_MainImg1.png" width="500px" height="600px" style="margin-left: 120px;"></td> -->
						</tr>
						<tr>
							<td style="padding-right: 40px; padding-left: 40px;">
								<!--1번 아이콘 -->
								<img src="resources/img_icon/gym.png" style="height: 180px; width: 300px;"><br>
								<a class="main_intro_name"
								style="width: 240px; font-size: 1.35em; font-weight: bold;">맞춤형
									퍼스널 트레이닝</a><br>
							<a style="font-weight: 600; color: #5a5a5a;">트레이너와 상담하여<br>
									내몸에 딱 맞는 PT 받기!
							</a> <!-- rgba(255, 106, 0, 1) -->
							</td>
							<td style="padding-right: 80px;">
								<!--2번 아이콘 -->
								<img src="resources/img_icon/rice.png"
								style="height: 180px; width: 190px;"><br> <a
								class="main_intro_name"
								style="font-size: 1.35em; font-weight: bold;">오늘의 밥그릇</a><br>
							<a style="font-weight: 600; color: #5a5a5a;">하루한끼 꼼꼼히 기록하여 <br>식단관리
									받기
							</a>
							</td>
							<td style="">
								<!--2번 아이콘 -->
								<img src="resources/img_icon/relationship.png"
								style="height: 150px; width: 150px;"> <br>
							<a class="main_intro_name"
								style="font-size: 1.35em; font-weight: bold;">체험해보세요</a><br>
							<a style="font-weight: 600; color: #5a5a5a;">물론 공짜입니다!<br></a>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<div
			style="padding-top: 45px; width: 100%; height: 150px; background: navy; text-align: center;">
			<a style="font-size: 1.2em; font-weight: normal; color: white;">OH
				MY GYM</a><br> <a
				style="font-size: 3em; font-weight: bold; color: white;">ONLINE
				PERSONAL TRAINNING</a><br> <a
				style="font-weight: bold; color: white;">온라인 PT</a>
		</div>
		<div id="trainning_solution" style="float: none;">
			<div class="background_image_section" id="AdFirst">
				<div class="trainning_solution_text"
					style="width: 1440px; height: 750px; overflow-x: hidden; overflow-y: hidden; margin-left: 50px;">
					<div id="LongTextBox" style="width: 5000px; height: 750px;">
						<div class="trainning_solution_text_in"
							style="float: left; width: 1500px; height: 750px;">
							<table class="solution_top_table">
								<tbody>
									<tr>
										<td class="table_title solution_title_top" id="AdHead">OH
											MY GYM<br> 트레이닝
										</td>
									</tr>
									<tr>
										<td class="table_title solution_title" id="AdBody"
											style="font-size: 2.75em; vertical-align: middle; font-weight: 900;">내몸에
											딱 맞는<br>
										<br> 맞춤형 트레이닝
										</td>
									</tr>
								</tbody>
							</table>
						</div>

						<div class="trainning_solution_text_in"
							style="float: left; width: 1500px; height: 750px; margin-top: -50px;">

							<table class="solution_top_table"
								style="width: auto; margin-top: 60px;">
								<tbody>
									<tr>
										<td class="table_title solution_title_top" id="AdHead">OH
											MY GYM<br> 트레이닝
										</td>
									</tr>
									<tr>
										<td class="table_title solution_title"
											style="font-size: 2.75em; vertical-align: middle; font-weight: 900;">체계적인
											회원 관리 시스템</td>
									</tr>
									<tr>
										<td class="table_description"><br>팔로워 한분한분 트레이너가
											꼼꼼하게 관리해 드리고 있습니다!<br>오마이짐을 통해 체계적인 PT를 받아보세요!</td>
									</tr>
								</tbody>
							</table>
							<img src="resources/img/Trainning1.png"
								style="width: 600px; height: 320px; padding-top: 50px; padding-left: 150px;">
						</div>

						<div class="trainning_solution_text_in"
							style="float: left; width: 1500px; height: 750px; margin-top: -50px;">
							<table class="solution_top_table"
								style="width: auto; margin-top: 60px;">
								<tbody>
									<tr>
										<td class="table_title solution_title_top" id="AdHead">OH
											MY GYM<br> 트레이닝
										</td>
									</tr>
									<tr>
										<td class="table_title solution_title"
											style="font-size: 2.75em; vertical-align: middle; font-weight: 900;">편리한
											트레이닝 컨텐츠 관리 시스템</td>
									</tr>
									<tr>
										<td class="table_description"><br>트레이닝 컨텐츠들을 블로그처럼
											편리하게 관리하실 수 있습니다! <br> 오마이짐의 트레이닝 시스템을 이용해 보세요.</td>
									</tr>
								</tbody>
							</table>
							<img src="resources/img/Trainning2.png"
								style="width: 600px; height: 320px; padding-top: 50px; padding-left: 150px;">
						</div>
					</div>
				</div>
				</tbody>
				</table>
				<img onclick="train_clickNext();" class="contentNext_btn"
					src="resources/img_icon/next.png" width="70px" height="90px"
					style="position: absolute; left: 1250px; top: 1750px;"> <img
					onclick="train_clickBack();" class="contentNext_btn"
					src="resources/img_icon/back.png" width="70px" height="90px"
					style="position: absolute; left: 1150px; top: 1750px;">
			</div>
		</div>

		<div
			style="padding-top: 45px; width: 100%; height: 150px; background: rgb(255, 68, 0); text-align: center;">
			<a style="font-size: 1.2em; font-weight: normal; color: white;">OH
				MY GYM</a><br> <a
				style="font-size: 3em; font-weight: bold; color: white;">TODAY'S
				MEAL</a><br> <a style="font-weight: bold; color: white;">오늘의
				밥그릇</a>
		</div>

		<div id="meal_solution">
			<div class="background_image_section">
				<div class="meal_solution_text"
					style="width: 1440px; height: 750px; overflow-x: hidden; overflow-y: hidden; margin-left: 50px;">
					<div id="LongTextBox" style="width: 5000px; height: 750px;">

						<div class="meal_solution_text_in"
							style="float: left; width: 1500px; height: 750px;">
							<table class="solution_top_table">
								<tbody>
									<tr>
										<td>OH MY GYM<br> 오늘의 밥그릇
										</td>
									</tr>
									<tr>
										<td class="table_title solution_title"
											style="font-size: 2.75em; vertical-align: middle; font-weight: 900;">매일저녁
											회식때문에<br>
										<br> 건강이 걱정되시나요?
										</td>
									</tr>
									<tr>
										<td class="table_description"><br>트레이너가 제공해주는 맞춤형
											식단관리 오늘의 밥그릇을 만나보세요!</td>
									</tr>

								</tbody>
							</table>
						</div>

						<div class="meal_solution_text_in"
							style="float: left; width: 1500px; height: 750px; margin-top: -50px;">
							<img src="resources/img/bapStar.png"
								style="float: left; width: 400px; height: 420px; padding-top: 190px; padding-left: 110px;">
							<table class="solution_top_table"
								style="float: left; width: auto; margin-top: 150px;">
								<tbody>
									<tr>
										<td class="table_title solution_title"
											style="font-size: 2.75em; vertical-align: middle; font-weight: 900;">한눈에
											보이는 하루 칼로리 양</td>
									</tr>
									<tr>
										<td class="table_description"><br>식단 입력만으로 하루 얼마나
											먹었는지 확인하고 식단을 조절하세요!</td>
									</tr>
								</tbody>
							</table>
						</div>

						<div class="meal_solution_text_in"
							style="float: left; width: 1500px; height: 750px; margin-top: -50px;">
							<img src="resources/img/bapStar2.png"
								style="float: left; width: 310px; height: 420px; padding-top: 190px; padding-left: 110px;">
							<table class="solution_top_table"
								style="float: left; width: auto; margin-top: 150px;">
								<tbody>
									<tr>
										<td class="table_title solution_title"
											style="font-size: 2.75em; vertical-align: middle; font-weight: 900;">간편하게
											검색으로 식단입력!</td>
									</tr>
									<tr>
										<td class="table_description"><br>어떤것을 드셨는지 검색하면
											다나옵니다! <br>검색하고 클릭 몇번으로 식단을 입력하고 관리받아요</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
		<tr>
			<td>
				<!-- <button onclick="meal_clickNext();" class="goto_all_class_button" id="solution1" style="position: absolute; left:1250px; top: 2400px; color:white;"></button>
                 --> <img onclick="meal_clickNext();"
				class="contentNext_btn" src="resources/img_icon/next.png" width="70px"
				height="90px" style="position: absolute; left: 1250px; top: 2750px;">
				<img onclick="meal_clickBack();" class="contentNext_btn"
				src="resources/img_icon/back.png" width="70px" height="90px"
				style="position: absolute; left: 1150px; top: 2750px;">
			</td>
		</tr>
		<script>
            var mealPos = 0;
            function meal_clickNext(){
                if(mealPos >= 0 && mealPos < 4){
                    if(mealPos < 2) mealPos = mealPos + 1;
                    $('.meal_solution_text').animate({scrollLeft : 1500 * mealPos}, 500);
                }
            }
            function meal_clickBack(){
                if(mealPos > 0 && mealPos < 4){
                    if(mealPos > 0) mealPos = mealPos - 1;
                    $('.meal_solution_text').animate({scrollLeft : 1500 * mealPos}, 500);
                }
            }

            var trainPos = 0;
            function train_clickNext(){
                if(trainPos >= 0 && trainPos < 4){
                    if(trainPos < 2) trainPos = trainPos + 1;
                    $('.trainning_solution_text').animate({scrollLeft : 1500 * trainPos}, 500);
                }
            }
            function train_clickBack(){
                if(trainPos > 0 && trainPos < 4){
                    if(trainPos > 0) trainPos = trainPos - 1;
                    $('.trainning_solution_text').animate({scrollLeft : 1500 * trainPos}, 500);
                }
            }
        </script>
		<div>
			<div id="visitQuestion">
				<div id="visitQuestionIn" class="questionBox">
					<form>
						<div id="quesionMain">
							<div id="part1" class="questionPart" style="float: left;">
								<label class="questionTitle">성별을 알려주세요</label><br>
								<div style="margin-top: 20px; font-size: 1.2em; color: white;">
									<input type="radio" value="M" id="male" name="gender"><label
										for="male"> 남자</label><br> <input type="radio" value="F"
										id="female" name="gender"><label for="female">
										여자</label><br>
								</div>
							</div>
							<div id="part2" class="questionPart" style="float: left;">
								<label class="questionTitle">가장 집중적으로 운동하고싶은 부위를 골라주세요</label><br>
								<div
									style="margin-top: 20px; text-align: left; padding-left: 110px; color: white; font-size: 1.2em;">
									<input type="checkbox" id="arm" name="part" value="arm">
									<label for="arm">팔/다리</label> &nbsp;<br> <input
										type="checkbox" id="chest" name="part" value="chest">
									<label for="chest">가슴 </label> &nbsp;<br> <input
										type="checkbox" id="stomach" name="part" value="stomach">
									<label for="stomach">배 </label> &nbsp;<br> <input
										type="checkbox" id="hip" name="part" value="hip"> <label
										for="hip">엉덩이 </label> &nbsp;<br>
								</div>
							</div>
							<div id="part3" class="questionPart" style="float: left;">
								<label class="questionTitle">주간 운동양이<br> 얼마나 되시나요?
								</label><br>
								<div
									style="margin-top: 20px; text-align: left; padding-left: 90px; color: white; font-size: 1.2em;">
									<input type="radio" id="work1" " name="workweek" value="1">
									<label for="work1">1시간 미만</label> &nbsp;<br> <input
										type="radio" id="work2" name="workweek" value="2"> <label
										for="work2">1시간 ~ 2시간 </label> &nbsp;<br> <input
										type="radio" id="work3" name="workweek" value="3"> <label
										for="work3">3시간 ~ 7시간</label> &nbsp;<br> <input
										type="radio" id="work4" name="workweek" value="4"> <label
										for="work4">7시간 이상</label> &nbsp;<br>
								</div>
							</div>
						</div>
					</form>
				</div>
				<img onclick="quest_clickNext();" class="contentNext_btn_quest"
					src="resources/img_icon/next.png" width="70px" height="90px"
					style="position: absolute; left: 68%; top: 3440px;"> 
				<img onclick="quest_clickBack();" class="contentNext_btn_quest"
					src="resources/img_icon/back.png" width="70px" height="90px"
					style="position: absolute; left: 27%; top: 3440px;">
			</div>
		</div>
		<script>
        var questPos = 0;
        function quest_clickNext(){
            if(questPos >= 0 && questPos < 4){
                if(questPos < 3) questPos = questPos + 1;
                $('.questionBox').animate({scrollLeft : 390 * questPos}, 500);
            }
        }
        function quest_clickBack(){
            if(questPos > 0 && questPos < 4){
                if(questPos > 0) questPos = questPos - 1;
                $('.questionBox').animate({scrollLeft : 390 * questPos}, 500);
            }
        }

    </script>
	</section>


	<br>
	<br>
	<!-- 문자인증 테스트 서블릿
	<form id="testform" action="<%=request.getContextPath()%>/sendmail.me"
		method="post">
		<div onclick="bonin();"
			style="margin-left: 10px; border: 1px solid black; width: 80px;">본인인증</div>
	</form>
	<script>
    	function bonin(){
			$("#testform").submit();
    	}
    	
    </script> -->



	<%@ include file="views/common/footer.jsp"%>

</body>
</html>