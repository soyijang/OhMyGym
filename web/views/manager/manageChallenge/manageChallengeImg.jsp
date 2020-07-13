<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<title>Insert title here</title>
</head>
<Style>
	#main {
		position: absolute;
		top: 150px;
		left: 300px;
	}
	.back {
		background: darkgray;
		font-weight: bold;
		padding: 10px;
	}
	#tables{
		border-top: 2px solid black;
		width: 1000px;
		border-bottom: 1px solid gray;
	}
	#trs {
		border-bottom: 1px solid gray;
		width: 1000px;
	}
		#title{
		font-size: 25px;
		font-weight: bold;
	}
	              #box2{
        	border: 1px solid orangered;
        	width: 90px;
        	color: white;
        	background: orangered;
        	font-weight: bold;
        	
        	position: absolute;
        	left: 200px;
        	top: 5px;
        	
        	cursor: pointer;
        }
        
        /* 인증샷 style*/
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
.line {
	position: absolute;
	size: 1;
	width: 1100px;
	background-color: black;
}
#checkBox{
	position: absolute;
	left: 300px;
}
#outbutton{
        	border: 1px solid orangered;
        	width: 70px;
        	color: white;
        	background: orangered;
        	font-weight: bold;
        	
        	position: absolute;
        	top: 370px;
        	left: 180px;
			
			cursor: pointer;
}
</Style>
<body>
	<%@ include file="../../common/managerNav.jsp" %>
	<div id="main">
		<div id="title">챌린지 목록관리</div>
		<div id="box2" onclick="">참여자 목록</div>
			<table id="tables">
				<tr id="trs">
					<td class="back">진행현황</td>
					<td>진행중</td>
					<td class="back">담당자</td>
					<td>챌린지 담당자</td>
				</tr>
				<tr id="trs">
					<td class="back">제목</td>
					<td>물 마시기 챌린지!</td>
					<td class="back">진행현황</td>
					<td>진행중</td>
				</tr>
				<tr id="trs">
					<td class="back">기간</td>
					<td>2020-06-15 ~ 2020-06-30</td>
					<td class="back">참여자</td>
					<td>3,203</td>
				</tr>
			</table>
		</div>
		
		<!-- 인증샷 div -->
		<div id="checkBox">
			<div id="title_2">인증샷</div>
			<div id="outbutton">실격처리</div>
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

</body>
</html>
