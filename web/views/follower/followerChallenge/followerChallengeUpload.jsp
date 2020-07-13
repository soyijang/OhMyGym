<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<title>Insert title here</title>
</head>
<style>
nav#side_nav {
	font-family: Noto Sans SC;
	position: absolute;
	width: 178px;
	height: 724px;
	left: 150px;
}

nav#side_nav div.side_container {
	border: solid 1px rgb(103, 103, 103);
	width: 150px;
	height: 800px;
	border-radius: 9px;
	box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
}

nav ul {
	list-style: none;
}

nav {
	color: rgb(117, 117, 117)
}
/* 메인 입니다.*/
#main_ab {
	position: absolute;
	left: 400px;
}

#title {
	position: absolute;
	top: -20px;
	left: 35px;
	font-size: 30px;
}

.line {
	position: absolute;
	size: 1;
	width: 1100px;
	background-color: black;
}

#line_1 {
	top: 35px;
}

#line_2 {
	top: 400px;
}

#div_1 {
	position: absolute;
	top: 90px;
}

#div_2 {
	position: absolute;
	left: 300px;
	width: 800px;
	text-align: center;
	font-family: Noto Sans KR;
	font-style: normal;
	font-weight: 300;
	font-size: 30px;
	line-height: 43px;
}

#orange {
	color: orangered;
}

#term {
	font-family: Noto Sans KR;
	font-style: normal;
	font-weight: 300;
	font-size: 18px;
	line-height: 22px;
	padding-top: 20px;
	color: gray;
}

#title_2 {
	position: absolute;
	top: 360px;
	left: 50px;
	font-family: Noto Sans KR;
	font-size: 30px;
	width: 150px;
}

/* #div_3 {
	position: absolute;
	top: 420px;
	left: 30px;
}
#uploadBox{
	position: absolute;
	left: 100px;
	border: 2px solid #FF3800;
	box-sizing: border-box;
	color: white;
	font-weight: bold;
	width: 80px;
	text-align: center;
	background: #FF6337;
	cursor: pointer;
} */
#example{
	position: absolute;
	top: 450px;
	width: 100px;
}
</style>
<body>
	<%@ include file="../../common/followerNav.jsp"%>
	<!-- 상단 include -->

	<nav id="side_nav">
		<div class="side_container">
			<ul class="side_menu">
				<li><a
					style="font-size: 20px; font-weight: bold; margin-left: -10px;">OH!마이짐</a>
					<hr style="margin-left: -25px; border: 1.5px solid;"></li>
				<li><a
					style="font-size: 14px; font-weight: normal; color: orangered;">챌린지</a>
					<hr></li>
				<li><a class="select"
					style="font-size: 14px; font-weight: normal;">그룹소통방</a>
					<hr></li>
				<li><a style="font-size: 14px; font-weight: normal;">트레이닝 룸</a>
					<hr></li>
			</ul>
		</div>
	</nav>
	<div id="main_ab">
		<h1 id="title">챌린지</h1>
		<hr class="line" id="line_1"></hr>
		<div id="div_1">
			<img src="../../resources/challengeImg/image 58.png"
				style="height: 180px; width: 270px; position: absolute; left: 25px;">
			<div id="div_2">
				<div style="font-weight: bold; padding-bottom: 10px">내몸에 수분을
					보충하자!</div>
				<div>
					참가자분들은 매일&nbsp;<a id="orange">새벽6시 전</a>까지 인증샷을 남겨주세요!<br> <a
						id="orange">인증샷</a>을 남겨주지 않으면 <a id="orange">탈락</a>이 됩니다.꼭 주의 해주세요
					<div id="term">본 챌린지는 6월28일~7월25일 진행됩니다.</div>
				</div>
			</div>
		</div>
		<div>
			<div id="title_2">인증샷</div>
			<hr class="line" id="line_2"></hr>
			
			<!-- 업로드 사진 테이블에 추가 -->
<!-- 			<div id="div_3">
				<div style="float: left;">6월19일</div>
				<input type="file" accept="img/*" required multiple>
				<div id="uploadBox">업로드</div>
			</div> -->
			<div>
			
<script type="text/javascript">
        $(document).ready(function(){
            // 옵션추가 버튼 클릭시
            $("#addItemBtn").click(function(){
                //파일 선택란을 보여준다.
                $("tr#item1").show();
                // tr태그의 마지막 번째를 구해 id="item"의 형태로 만들어 lastItemNo에 대입
                var lastItemNo = $("#example tr:last").attr("id").replace("item", "");
                //새로 추가 할 경우 두번째 tr 값을 복사하여 newitem변수에 대입
                var newitem = $("#example tr:eq(1)").clone();
                //아이템 추가시 id="item" 값에 넘버를 추가해 준다.               
                newitem.attr("id","item"+(parseInt(lastItemNo)+1));
                
                if(lastItemNo==7){
                //그리고 해당 아이템은 5개 이상 생성할수 없도록 제한
                    alert("7개 이상 파일 추가 하실 수 없습니다.");
                }else{
                $("#example").append(newitem);
                }
            });
        });        
</script>

				<table id="example">
					<tr>
						<td>
							<button id="addItemBtn">파일업로드</button>
						</td>
					</tr>
					<tr id="item1" style="">
						<td> <input type="file">
						</td>
					</tr>
				</table>
			</div>
		</div>
	</div>


	<!-- footer -->
	<div style="position: absolute; top: 1400px; left: 150px;">
		<%@ include file="../../common/footer.jsp"%>
	</div>
</body>
</html>