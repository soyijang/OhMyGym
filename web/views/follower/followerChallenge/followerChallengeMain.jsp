<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<style>
	/*사이드 메뉴바 */
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
    
    
    
    
		/* 이 아래부터 보여지는 창*/
    #title {
        position: absolute;
        left: 380px;
        top: -20px;
        font-size: 30px;
    }

    .chg_div {
        position: absolute;
        left: 380px;
    }
    #chg_div_1{
        top: 150px;
    }
    #chg_div_2{
        top: 500px;
    }
    #chg_div_3{
        top: 850px;
    }
    
    .line{
        position: absolute;
        size: 1;
        width: 1100px;
        background-color: black;
        left: 330px;
    }
    .chg_n{
        position: absolute;
        left: 380px;
        font-family: Noto Sans SC;
    }
    #chg_ing{
        top: 50px;
    }
    #chg_going{
        top: 400px;
    }
    #chg_end{
        top: 750px;
    }
    #line_1{
        top: 50px;
    }
    #line_2{
        top: 400px;
    }
    #line_3{
        top: 750px;
    }
    .font_1{
        font-size: 13px;
    }
    .black_img{
        filter: grayscale(100%)
    }
</style>
<body>
	<%@ include file="../../common/followerNav.jsp"%>
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
    <div style="position: absolute; top:180px; width: 100%;">
        <h1 id="title">챌린지</h1>
        <hr class="line" id="line_1"></hr>
        <h3 class="chg_n" id="chg_ing">진행중인 챌린지</h3>

        <div style="float: left;"  class="chg_div" id="chg_div_1">
            <div style="float: left; margin-right: 50px;" >
                <img src="../../../resources/challengeImg/image 56.png" >
                <div>체지방 DOWN 근육량 UP!</div>
                <br>
                <div class="font_1" style="float: left;">모집기간:&nbsp;&nbsp;&nbsp;</div>
                <div class="font_1" style="color: orangered;">~7월11일</div>
                <div class="font_1" style="float: left;">참가인원:&nbsp;&nbsp;&nbsp;</div>
                <div class="font_1" style="color: orangered;">1442명</div>
                <div style="font-weight: bold;">무료</div>
                <div class="font_1" style="font-size: 10px; color: silver;" >참가일로부터 28일간 진행</div>
            </div>
            <div style="float: left; margin-right: 50px;">
                <a href="chg_click.jsp"><img src="../../resources/challengeImg/image 58.png"></a>
                <div>내 몸에 수분을 보충하자!</div>
                <br>
                <div class="font_1" style="float: left;">모집기간:&nbsp;&nbsp;&nbsp;</div>
                <div class="font_1" style="color: orangered;">~7월13일</div>
                <div class="font_1" style="float: left;">참가인원:&nbsp;&nbsp;&nbsp;</div>
                <div class="font_1" style="color: orangered;">144명</div>
                <div style="font-weight: bold;">~35,000원</div>
                <div class="font_1" style="font-size: 10px; color: silver;" >참가일로부터 28일간 진행</div>
            </div>
            <div style="float: left; margin-right: 50px;">
                <img src="../../resources/challengeImg/image 57.png">
                <div>타바타로 근육을 태워바~</div>
                <br>
                <div class="font_1" style="float: left;">모집기간:&nbsp;&nbsp;&nbsp;</div>
                <div class="font_1" style="color: orangered;">~8월25일</div>
                <div class="font_1" style="float: left;">참가인원:&nbsp;&nbsp;&nbsp;</div>
                <div class="font_1" style="color: orangered;">20명</div>
                <div style="font-weight: bold;">~55,000원</div>
                <div class="font_1" style="font-size: 10px; color: silver;" >참가일로부터 28일간 진행</div>
            </div>
        </div>

        <hr class="line" id="line_2"></hr>
        <h3 class="chg_n" id="chg_going">참가중인 챌린지</h3>
        <div style="float: left;"  class="chg_div" id="chg_div_2">
            <div style="float: left; margin-right: 50px;">
                <img src="../../resources/challengeImg/image 58.png">
                <div>내 몸에 수분을 보충하자!</div>
                <br>
                <div class="font_1" style="float: left;">모집기간:&nbsp;&nbsp;&nbsp;</div>
                <div class="font_1" style="color: orangered;">~7월13일</div>
                <div class="font_1" style="float: left;">참가인원:&nbsp;&nbsp;&nbsp;</div>
                <div class="font_1" style="color: orangered;">144명</div>
                <div style="font-weight: bold;">~35,000원</div>
                <div class="font_1" style="font-size: 10px; color: silver;" >참가일로부터 28일간 진행</div>
            </div>
        </div>
        <hr class="line" id="line_3"></hr>
        <h3 class="chg_n" id="chg_end">종료된 챌린지</h3>
        <div style="float: left;"  class="chg_div" id="chg_div_3">
            <div style="float: left; margin-right: 50px;">
                <img class="black_img" src="../../resources/challengeImg/image 56.png">
                <div>체지방 DOWN 근육량 UP!</div>
                <br>
                <div class="font_1" style="float: left;">모집기간:&nbsp;&nbsp;&nbsp;</div>
                <div class="font_1" style="color: orangered;">~7월11일</div>
                <div class="font_1" style="float: left;">참가인원:&nbsp;&nbsp;&nbsp;</div>
                <div class="font_1" style="color: orangered;">총인원</div>
                <div style="font-weight: bold;">무료</div>
                <div class="font_1" style="font-size: 10px; color: silver;" >참가일로부터 28일간 진행</div>
            </div>
        </div>
    </div>
    </section>
    <!-- footer -->
    <div style="position: absolute; top:1400px; left:150px;">
    <%@ include file="../../common/footer.jsp" %>
    </div>
</body>
</html>