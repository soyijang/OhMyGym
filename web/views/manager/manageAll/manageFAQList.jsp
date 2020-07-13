<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
   <title>오마이짐 관리자 페이지</title>
    <style>
        html {
            width: 1440px;
            margin: 0;
        }

        * {
            margin: 0;
            padding: 0;
            font-family: "Noto Sans KR Medium";
            text-decoration: none;
        }

        body {
            width: 1440px;
            background-color: lightgray;
            margin-right: 0;
        }

        header {
            width: 1440px;
            height: 63px;
            margin-right: 0;
        }

        #top_background {
            position: absolute;
            left: 0;
            top: 0;
            display: inline;
            z-index: -100;
        }

        #logo {
            position: absolute;
            top: 13px;
            left: 13px;
        }

        header div {
            position: relative;
            /* left: 1000px; */
            font-size: 13px;
            color: white;
            top: 22px;
        }

        header div a {
            font: bold 13px "Noto Sans KR Thin";
            color: white;
        }

        nav {
            position: absolute;
            display: inline-block;
            top: 63px;
            font-size: 15px;
        }

        #nav_background {
            position: absolute;
            z-index: -100;
            top: 0;
            height: 100%;
            width: 200px;
        }

        nav ul {
            background-color: 000532;
            position: relative;
            font-weight: bold;
            color: white;
            /* left: 30px;*/
            top: 3px;
            list-style: none;
            width: 160px;
            padding-left: 25px;
        }

        nav li {
            color: black;
            font-weight: normal;
            margin: 8px;
        }

        nav a {
            color: white;
            font-size: 13px;
        }

        .menuGroup {
            display: inline-block;
            width: 200px;
            position: absolute;
        }

        details {
            cursor: pointer;
        }

        summary {
            outline: none;
        }

        section {
            position: absolute;
            display: inline-block;
            width: 1240px;
            height: 100%;
            left: 200px;
        }

        section {
            margin-top: 30px;
            margin-left: 30px;
            margin: 30px;
            display: inline-block;
            width: 1180px;
        }

        table {
            text-align: center;
          
            border-collapse: collapse;
        }

        tr {
        
            height: 20px;
        }

        th {
            font-size: 13px;
            height: 40px;
            border-bottom: 3px double gray;

            color: black;
            font-weight: bold;
        }

        td {
            font-family: "Noto Sans KR Regular ";
            font-size: 14px;
            height: 35px;
            border-bottom: 2px solid gray;
        }

        td>a {
            color: black;
            text-decoration: underline;
            font-size: 14px;
        }

        #menuTitleArea {
            /* display: inline; */
        }

        #right-Area {
            position: absolute;
            top: 80px;
            left: 300px;
            display: inline-block;
            width: 800px;
            height: 600px;
            border: 1px solid black;
        }

        #searchArea {
            display: inline-block;
            width: 400px;
            position: absolute;
            top: 60px;
            left: 860px;
            margin: 0;
        }

        #searchBtn {
            width: 50px;
            margin-left: 5px;
        }

        #alignmentArea {
            margin: 0;
            margin-top: 10;
            display: inline-block;
            position: relative;
            left: 958px;
            top: 25px;

        }

        #pagingArea {
            display: inline-block;
            margin: 0;
            text-align: center;

        }

        #pageButtonTemp {
            background: white;
            display: inline-block;
            width: 300px;
            height: 20px;
        }

        #infoBtn {
            border-style: none;
            background: orangered;
            width: 70px;
            color: white;
            height: 25px;
            cursor: pointer;
        }

        #riverBtn {
            border-style: none;
            background: navy;
            width: 70px;
            color: white;
            height: 25px;
            cursor: pointer;
        }

        #manyPeople {
            margin-left: 30;
        }
    </style>

    <!-- left-container -->
    <style>
        .left-container {
            display: inline-block;
            width: 290px;
            padding: 30px 30px 35px 30px;
            border: solid 1px black;
            box-sizing: border-box;
            background-color: white;
        }

        .left-container .class_category_container {
            font-size: 14px;
            color: #000
        }

        .left-container .title {
            font-size: 16px;
            font-weight: bold;
            padding-bottom: 12px;
            border-bottom: solid 2.5px #141414
        }

        .left-container .class_category_list li {
            padding: 14px 0 14px;
            border-bottom: solid 1px #ececec;
            border-collapse: collapse;
            list-style: none;
            cursor: pointer;
            color: #3b3b3b
        }

        .left-container .class_category_list li.on {
            color: #ff6f61
        }

        .left-container .class_category_list li:last-child {
            border-bottom: none;
            padding-bottom: 0
        }


    </style>

    <style>
        .answer {
            padding: 10;
            border-bottom: 2px solid black;
            border-top: 2px solid black;
         

        }
       
        .createBtn {
            background-color: navy;
            color: white;
            cursor: pointer;
        }
        .createBtn:hover {
            background-color: orangered;
            color: white;
        }
        .saveBtn {
            background-color: navy;
            color: white;
            cursor: pointer;
        }
        .saveBtn:hover {
            background-color: orangered;
            color: white;
        }
        .editBtn {
            background-color: navy;
            color: white;
            cursor: pointer;
        }
        .editBtn:hover {
            background-color: orangered;
            color: white;
        }
    </style>

</head>
<body>
 <%@ include file="../../common/managerNav.jsp"%>
    <section>
        <!--헤더 영역-->
        <article id="menuTitleArea">
            <p style="font-weight: bold; font-size: 1.5em; padding-top: 30px; padding-left: 30px;">자주묻는질문관리</p><br>

        </article>
        <!--헤더 영역 종료-->


        <!--// 왼쪽 메뉴 영역 -->
        <article id="left-area"></article>
        <div class="left-container">
            <div class="class_category_container">
                <div class="title">자주 묻는 질문</div>
                <ul class="class_category_list">
                    <li class="navi-item on">전체</li>
                    <li class="navi-item ">오마이짐이란?</li>
                    <li class="navi-item ">수강문의</li>
                    <li class="navi-item ">연기/환불</li>
                    <li class="navi-item ">결제/캐시</li>
                    <li class="navi-item ">회원정보</li>
                    <li class="navi-item ">기타</li>
                </ul>

            </div>
        </div>




        <!--right area-->
        <article id="right-Area">


            <div style="padding: 20;">
                <div style="border-bottom:2px solid black; margin: 10;">
                    <h2 >전체</h2>
                    <div class="allBtn" style="float: right; margin-top: -40px;">
                    <button onclick="edit()" class="editBtn" style="width: 60px; height: 30px;">수정</button>
                    <button onclick="" class="saveBtn" style="width: 60px; height: 30px;">저장</button>
                    <button onclick="location.href='createJaju'" class="createBtn" style="width: 60px; height: 30px;">생성</button>
                    </div>
                </div>
                
                <ul class="question" style="margin-left: 20; margin-top: 10;">Q. 결제수단을 변경하고 싶어요.
                    <li class="answer" style="font-size: 0.8em; margin-top: 10; margin-bottom: 10;">오마이짐은 시스템상 결제와 수강권 등록이 동시에 진행되고 있기 때문에, 
                            결제수단을 변경하시기 위해서는 반드시 이전 결제내역을 환불 및 취소처리 하신 후 
                            새롭게 신청을 진행해주셔야 해요.
                            따라서,  환불가능 기간에만 결제수단 변경이 가능하신 점 꼭 참고해주시기 바랄게요! :)</li>

                </ul>

                <ul class="question" style="margin-left: 20; margin-top: 10;">Q. 환불접수를 완료했어요. 앞으로 어떻게 진행되나요?
                    <li class="answer" style="font-size: 0.8em; margin-top: 10; margin-bottom: 10;">접수 완료하신 날짜 기준, 순차적으로 확인 후 3-5일 이내(*영업일 기준)에 환불처리가 완료됩니다.
                        처리 결과에 대해서는 메일 혹은 문자로 안내드릴테니 꼭 확인해주시기 바랄게요!</li>

                </ul>

                <ul class="question" style="margin-left: 20; margin-top: 10;">Q. 트레이너 피드백은 어떤 방법으로 받게 되나요?
                    <li class="answer" style="font-size: 0.8em; margin-top: 10; margin-bottom: 10;">트레이너 피드백은  오마이짐페이지 메뉴 중 ‘트레이닝룸'을 눌러 확인하실 수 있어요!
                        이메일 발송 및 파일 제공은 따로 이루어지지 않는다는 점, 참고 부탁드려요 :)</li>

                </ul>

                <ul class="question" style="margin-left: 20; margin-top: 10;">Q. 수강 중에 그만둬야 할 사정이 생기면 어떡하죠?
                    <li class="answer" style="font-size: 0.8em; margin-top: 10; margin-bottom: 10;">트레이닝 시작 2주차(14일차)까지는, 규정에 따라 남은 수강 기간에 한해 연기 및 환불이 가능합니다.
                        자세한 내용은  '연기 및 환불 규정'을 확인해주세요!</li>

                </ul>

                <ul class="question" style="margin-left: 20; margin-top: 10;">Q. 현금영수증/수강증이 필요해요.
                    <li class="answer" style="font-size: 0.8em; margin-top: 10; margin-bottom: 10;">[고객센터 > 1:1 문의하기]에서 [서류발급신청] 으로
                        문의 분류를 선택해 현금영수증 및 수강증 신청을 하실 수 있어요!</li>

                </ul>

                
            </div>
        </article>
        <!--테이블 표시 영역 종료-->


    </section>

</body>
</html>