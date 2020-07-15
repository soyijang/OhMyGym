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

    #title {
        position: absolute;
        left: 380px;
        top: -20px;
        font-size: 30px;
    }

    .line {
        position: absolute;
        size: 1;
        width: 1100px;
        background-color: black;
        left: 330px;
    }

    #line_1 {
        top: 50px;
    }

    /* 메인 */
    #main_front {
        position: absolute;
        width: 1070px;
        left: 330px;
        top: 80px;

        background: rgba(196, 196, 196, 0.35);
    }

    .white_box {
        width: 1050px;
        background: #FFFFFF;
        margin: 10px;
    }

    #box_1 {
        height: 400px;
    }

    #box_2 {
        height: 300px;
    }

    #box_3 {
        height: 300px;
    }

    #chg_img {
        display: block;
        margin: 0px auto;
        height: 200px;
        width: 400px;
    }

    #box_2_Contents {
        font-size: 10px;
        font-weight: bold;
    }

    .orange_color {
        font-weight: bold;
        color: orangered;
    }

    #orange_color_sc {
        margin-left: 10px;
        margin-top: 10px;
        font-size: 20px;
    }

    #box_2_Contents {
        color: darkgray;
        margin-left: 10px;
    }

    .parent {
        display: flex;
        width: 1050px;
        height: 250px;
        text-align: center;
    }

    .child1 {
        flex: 3;
        margin: 50px;
    }

    .child2 {
        flex: 0.01;
        background-color: whitesmoke;
    }

    #orange_size {
        font-size: 40px;
    }

    .box_2_bold {
        font-weight: bold;
    }

    .font_all {
        font-family: Noto Sans KR;
        font-style: normal;
        font-weight: 300;
        font-size: 20px;
        line-height: 29px;
        font-size: 15px;
        width: 600px;
    }

    #table_dis {
        margin: 20px;
    }

    table {
        border-collapse: separate;
        border-spacing: 0 10px;
    }

    #box_4_msg {
        margin-left: 10px;

        font-family: Noto Sans KR;
        font-style: normal;
        font-weight: 300;
        font-size: 25px;
        line-height: 36px;
        display: flex;
        align-items: center;
        letter-spacing: -0.105em;
    }


    #real_main {
        background-color: white;
        height: 1600px;
    }

    #event_click {

        margin: 25px;
        margin-left: 300px;
        width: 439px;
        height: 60px;
        left: 593px;
        top: 1300px;

        background: #FF6337;
        border: 2px solid #FF3800;
        box-sizing: border-box;
	
		cursor: pointer;
    }

    #font_join {

        text-align: center;

        font-family: Noto Sans SC;
        font-style: normal;
        font-weight: bold;
        font-size: 35px;
        line-height: 51px;
        /* identical to box height */

        font-variant: small-caps;

        color: #FFFFFF;
    }
.overlay {
  display: none;
  z-index: 1000;
  position: fixed;
  width: 100%; height: 100%;
  left: 0; top: 0;
  background-color: rgba(0,0,0, 0.4);
  overflow-x: hidden;
}
.whitePop{
	background-color: white;
	width: 700px;
	height: 700px;
	margin: auto;
	margin-top: 100px;
}
.silverBox1{
	position: relative;
	width: 600px;
	height: 600px;
	background-color: rgba(196, 196, 196, 0.15);
	margin: auto;
	top: 50px;
}
.whiteBox{
	width: 550px;
	height: 100px;
	background-color: white;
	margin: auto;
}
#btnLast{
	position: relative;
    background: orangered;
    border: 0px;
    color: white;
    font-size: 77px;
    width: 500px;
    left: 44px;
    top: 20px
}
.one{
	float: right;
    font-size: 25px;
    font-weight: bold;
    position: relative;
    top: -20px;
}
.one2{
    float: right;
    font-size: 25px;
    font-weight: bold;
    position: relative;
    top: 25px;
}
</style>
<body>
 <nav id="side_nav">
        <div class="side_container">
            <ul class="side_menu">
                <li>
                    <a style="font-size: 20px; font-weight: bold; margin-left: -10px;">OH!마이짐</a>
                    <hr style="margin-left: -25px; border: 1.5px solid;">
                </li>
                <li>
                    <a style="font-size: 14px; font-weight:normal; color: orangered;">챌린지</a>
                    <hr>
                </li>
                <li>
                    <a class="select" style="font-size: 14px; font-weight:normal;">그룹소통방</a>
                    <hr>
                </li>
                <li>
                    <a style="font-size: 14px; font-weight:normal;">트레이닝 룸</a>
                    <hr>
                </li>
            </ul>
        </div>
    </nav>
    <section>
        <div>
            <h1 id="title">챌린지</h1>
            <hr class="line" id="line_1">
        </div>
        <div id="real_main">
            <div id="main_front">
                <div class="white_box" id="box_1">
                    <!-- 첫번째 div 완료-->
                    <br>
                    <br>
                    <h2 style="text-align: center;">내 몸에 수분을 보충하자!</h2>
                    <img src="../../../resources/challengeImg/image 58.png" id="chg_img">
                </div>
                <div class="white_box" id="box_2">
                    <!-- 두번째 div 진행중-->
                    <div class="orange_color" id="orange_color_sc">챌린지 참여자 정보</div>
                    <div id="box_2_Contents">모집인원이 해당 수 이상일 경우 모집 종료일이 조기마감 될 수 있습니다.</div>
                    <div class="parent">
                        <div class="child1">
                            <img src="../../resources/challengeImg/image 03.png" style="height: 50px;">
                            <div class="orange_color" id="orange_size">144명</div>
                            <div class="box_2_bold">참가인원</div>
                        </div>
                        <div class="child2">
                            <div id="line_2"></div>
                        </div>
                        <div class="child1">
                            <br>
                            <div class="orange_color" id="orange_size" style="margin-top: 30px;">500명</div>
                            <div class="box_2_bold">총 모집인원</div>
                        </div>
                    </div>
                </div>
                <div class="white_box" id="box_3">
                    <!--세번째 박스-->
                    <div class="orange_color" id="orange_color_sc">챌린지 정보</div>
                    <div id="table_center">
                        <table id="table_dis" style="margin-left: auto; margin-right: auto;">
                            <tr>
                                <td><img src="../../resources/challengeImg/image 04.png"></td>
                                <td class="font_all">&nbsp;&nbsp;모집 시작일</td>
                                <td>2020.07.01</td>
                            </tr>
                            <tr>
                                <td><img src="../../resources/challengeImg/image 05.png"></td>
                                <td class="font_all">&nbsp;&nbsp;모집 종료일</td>
                                <td>2020.07.06</td>
                            </tr>
                            <tr>
                                <td><img src="../../resources/challengeImg/image 03.png"></td>
                                <td class="font_all">&nbsp;&nbsp;모집 인원</td>
                                <td>500명</td>
                            </tr>
                            <tr>
                                <td><img src="../../resources/challengeImg/image 06.png"></td>
                                <td class="font_all">&nbsp;&nbsp;챌린지 종료일</td>
                                <td>2020.07.07</td>
                            </tr>
                            <tr>
                                <td><img src="../../resources/challengeImg/image 01.png"></td>
                                <td class="font_all">&nbsp;&nbsp;포인트 지급</td>
                                <td>2020.07.21</td>
                            </tr>
                        </table>
                    </div>
                </div>
                <div class="white_box" id="box_4">
                    <!-- 네번째 박스-->
                    <div class="orange_color" id="orange_color_sc">챌린지 설명</div>
                    <div id="box_4_msg">내용
                    </div>
                </div>
                <div>
                        <div id="event_click">
                            <div id="font_join">참가하기</div>
                        </div>
                </div>
            </div>
        </div>
    </section>
    <script>
$(function() {
  $("#font_join").click(function() {
    $(".overlay").show();
  });
});
</script>
<!-- 참가하기 버튼 클릭이후 나오는 div 팝업창 -->
<div class="overlay">
	<div class="whitePop">
		<div class="silverBox1">
			<div style="color: orangered; font-weight: bold; font-size: 35px;">결제 상품</div>
			<div class="whiteBox">
				<img src="../../../resources/challengeImg/image 02.png" style="float: left; margin-left: 100px;">
				<div style="font-size: 20px; position:relative; left: 50px; top:10px;">OMG 챌린지 서비스</div>
			</div>
			<div style="font-weight: bold; font-size: 35px;">금액입력</div>
			<div class="whiteBox" id="wbox1">
				<div style="width: 350px; height: 50px; position: relative; left: 50px; font-size: 30px; font-weight: bold;"></div>
				<div class="one">원</div>
			</div>
			<div style="color: orangered; font-weight: bold; font-size: 35px;">최종 결제 정보</div>
			<div class="whiteBox" id="wbox2">
				<input type="number" style="width: 350px; height: 50px; position: relative; left: 50px; font-size: 30px; font-weight: bold; ">
				<div class="one2">원</div>			
			</div>
			<div>
				<input type="submit" value="결제하기" id="btnLast">
			</div>
		</div>
		<div class="silverBox2"></div>
	</div>
</div>

</body>
</html>