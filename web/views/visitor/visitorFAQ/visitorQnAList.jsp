<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <!-- nav -->
    <style>
        .NavLink {
            padding-top: 30px;
            width: 120px;
            height: 40px;
        }

        .container_top {
            display: block;
            color: rgb(105, 111, 116);
            font-size: 0.8em;
            font-family: Noto Sans SC;
            font-weight: 900;
            line-height: 1.25em;
            margin-right: 100px;
        }

        .container_top ul li {
            list-style: none;
            float: right;
            margin-left: 20px;
            margin-right: 10px;
        }

        nav {
            display: block;
            color: rgb(117, 117, 117);
            font-size: 0.8em;
            font-family: Noto Sans SC;
            font-weight: bold;
            line-height: 1.25em;
        }

        nav ul {
            list-style: none;
        }

        .container #page_NAME {
            margin-top: 1px;
            margin-left: 50px;
            float: left;
        }

        .container #header_bottom_sidemenu {
            margin-right: 140px;
        }

        ul.sideMenu li {
            width: 120px;
        }

        ul.sideMenu li:hover {
            background-color: orangered;
            color: white;
            transition: all ease 0.25s 0s;
        }

        ul.sideMenu li:hover div {
            color: white;
            transition: all ease 0.25s 0s;
        }

        ul.sideMenu ul {
            display: none;
            margin-left: -1400px;
        }

        ul.sideMenu li ul li {
            width: 2400px;
        }

        ul.sideMenu li ul li a {
            margin-left: 30px;
        }

        ul.sideMenu li:hover>ul {
            padding-top: 20px;
            height: 25px;
            text-align: center;
            float: left;
            background: rgba(255, 69, 0, 1);
            transition: all ease 0.25s 0s;
            display: block;
        }

        ul.sideMenu li:hover>ul li a:hover {
            background: rgb(179, 21, 0);
            transition: all ease 0.25s 0s;
        }

        .container {
            width: 1520px;
            height: 70px;
            border-top: solid 2px orangered;
            border-bottom: solid 2px orangered;
            margin-top: 11px;
        }

        #navigateID ul li {
            list-style: none;
            color: rgb(63, 63, 63);
            float: right;
            text-align: center;
            font-weight: bolder;
            font-size: 14px;
            margin-top: -13px;
        }

        ul#header_bottom_sidemenu li ul li {
            color: white;
            text-align: center;
            margin-left: 200px;
            margin-top: -4px;
        }
    </style>
    <!-- footer -->
    <style>
        footer {
            position: relative;
            top: 1700px;
            background-color: rgb(#F8F8F8);
            font-family: Noto Sans SC;
            font-size: 11px;
            font-weight: 400;
            margin-left: 150px;
            margin-right: 150px;
            left: 0;

        }

        p {
            color: rgb(116, 116, 116);
        }

        img.footer_logo {
            margin-right: 100px;
        }

        img.footer-icon {
            margin-right: 0px;
        }
    </style>
    <!-- left-container -->
    <style>
        .left-container {
            display: inline-block;
            width: 290px;
            padding: 30px 30px 35px 30px;
            border: solid 1px #dadada;
            box-sizing: border-box
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

    <title>1:1 Q&amp;A | OH MY GYM</title>

    <style>
        @charset "UTF-8";



        /*contents area*/
        .wrap {
            clear: both;
            position: relative;
            width: 100%;
        }





        /* SCROLLBAR Chrome Safari*/
        #brand_list_print::-webkit-scrollbar {
            width: 7px;
        }

        #brand_list_print::-webkit-scrollbar-track {
            background: #fff;
        }

        #brand_list_print::-webkit-scrollbar-thumb {
            height: 50px;
            width: 50px;
        }


        /*cs*/
        .cs_area {
            border-top: 1px solid #ddd;
            padding-top: 15px;
        }

        .cs_contents {
            border: 1px solid #ddd;
            padding: 10px 10px 0 10px;
            font-size: 12px;
            line-height: 20px;
            margin: 15px 0 0 0;
        }

        .cs_time {
            line-height: 35px;
            text-align: center;
            border: 1px solid #ddd;
            background: #f3f3f3;
            font-size: 12px;
            margin-top: -1px;
        }

        .cs_numb {
            font-size: 20px;
            margin-bottom: 10px;
        }

        .cs_info {
            color: #b2b2b2;
            padding: 5px 0 10px 0;
        }

        .cs_info.first {
            border-bottom: 1px solid #ddd;
        }

        .cs_info .link_type {
            color: #000;
        }

        .cs_contents .txt_num_cs {
            color: #666;
        }

        .box_cs_left {
            line-height: 21px;
            margin: 15px;
        }

        .txt_tel_left {
            font: 24px 'Musinsa';
            margin-bottom: 15px;
        }

        .txt_tel_left .fa.fa-phone {
            margin-top: 5px;
        }

        .txt_csinfo_left {
            font-weight: bold;
            color: #000;
        }

        .box_info_left {
            margin-top: 10px;
            padding-top: 10px;
            border-top: 1px solid #ddd;
        }

        .box_info_left a {
            color: #000;
            font-weight: bold;
            text-decoration: underline;
        }

        .box_bottom_left {
            margin: 15px;
        }

        .box_bottom_left:after {
            clear: both;
            display: block;
            content: "";
        }

        .box_bottom_left li a {
            width: 62px;
        }



        /*right*/
        .right_area {
            position: absolute;
            left: 0px;
            top: 100px;
            right: 0;
            min-width: 1289px;
            border-left: 1px solid #ddd;
        }

        /* table */
        table {
            text-align: center;
            width: 900px;
            border-collapse: collapse;
        }

        tr {
            width: 900px;
            height: 20px;
        }

        th {
            font-size: 13px;
            height: 40px;
            border-bottom: 4px double black;

            color: black;
            font-weight: bold;
        }

        td {
            font-family: "Noto Sans KR Regular ";
            
            height: 35px;
            
        }

        td>a {
            color: black;
            text-decoration: underline;
          
        }

        /* table end */
    </style>


    <style>
        .container-cs-counsel {
            position: absolute;
            left: 400px;
            top: 200px;
            right: 0;
            min-width: 1289px;
            border-left: 1px solid #ddd;
        }
        #detail-table {
            float: left;
            margin-left: 0;
            width: 900px;
            display: none;

        }
    </style>
    


</head>
<body>
 <!--  <nav id="navigateID">
        <div class="container" style="vertical-align: middle;">
            <ul class="header_bottom_menu" id="header_bottom">
                <li id="page_NAME"><a href="">
                        <div id="logo"><img src="img/OHmyGymLogo.png"></div>
                    </a></li>
                <ul id="header_bottom_sidemenu" class="sideMenu">
                    <li>
                        <a>
                            <div class="NavLink">공지/이벤트</div>
                        </a>
                        <ul>
                            <li><a>이벤트</a>&nbsp;&nbsp;&nbsp;<a>공지사항</a></li>
                        </ul>
                    </li>
                    <li>
                        <a>
                            <div class="NavLink">문의하기</div>
                        </a>
                        <ul>
                            <li><a>자주묻는질문</a>&nbsp;&nbsp;&nbsp;<a>직접문의하기</a></li>
                        </ul>
                    </li>
                    <li>
                        <a>
                            <div class="NavLink">사용후기</div>
                        </a>
                        <ul>
                            <li><a>팔로워후기</a>&nbsp;&nbsp;&nbsp;<a>트레이너후기</a></li>
                        </ul>
                    </li>
                    <li>
                        <a>
                            <div class="NavLink">소개</div>
                        </a>
                        <ul>
                            <li><a>오마이짐이란?</a>&nbsp;&nbsp;&nbsp;<a>결제안내</a></li>
                        </ul>
                    </li>
                    </li>
                </ul>
            </ul>
        </div>
    </nav> -->
     <%@ include file="../../common/followerNav.jsp" %>
    <section>


        <!-- wrap -->
        <div class="wrap">


            <div class="left_area">



            </div>


        </div>
        <!--// 왼쪽 메뉴 영역 -->
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
        <!-- 오른쪽 콘텐츠 영역 -->
        <div class="right_area container-cs-counsel">
            <!-- 컨텐츠 영역 -->
            <!-- 상단 로케이션 -->
            <div class="pagenation">
                <div class="nav_sub"><a href="/">OH MY GYM</a><span class="icon_entity">&gt;</span><a
                        href="/app/cs">고객센터</a><span class="icon_entity">&gt;</span><span>1:1 Q&amp;A</span></div>
            </div>
            <!-- //상단 로케이션 -->
            <!-- 타이틀 -->
            <div class="right_contents">
                <h2 class="title-page">1:1 문의</h2>
            </div>
            <!-- //타이틀 -->
            <!-- CS Center 탭버튼 -->
            <div class="cs_center_tap">
                <ul>
                    <li class="hover_effect_none">
                        <span class="title">Tel. 010-9974-8184</span>
                        <span>평일 9:00~18:00(점심 12:00~13:00)</span>
                    </li>
                    <li class="active">
                        <a href="/app/cs/counsel">
                            <span class="title">1:1 Q&amp;A</span>
                            <span>질문 전 FAQ(자주 묻는 질문)을 먼저 확인해 주세요.</span>
                        </a>
                    </li>
                    <li class="">
                        <a href="/app/cs/faq">
                            <span class="title">FAQ</span>
                            <span>자주 묻는 질문</span>
                        </a>
                    </li>
                </ul>
            </div>
            <!-- //CS Center 탭버튼 -->
            <form name="f1" id="f1" method="post" action="/app/cs/counsel_save">
                <input type="hidden" name="qna_board_no" value="">
                <input type="hidden" name="cmd" value="add">
                <!--			<input type="hidden" name="pay_type" value="" />-->
                <!--			<input type="hidden" name="d_pay_state" value="" />-->
                <input type="hidden" name="opener" value="N">
                <!--			<input type="hidden" name="ord_opt_no" value="" />-->
                <input type="hidden" name="faq_view_yn" value="N">
                <input type="hidden" name="image_yn" value="N">
                <input type="hidden" name="period">

                <!-- 고객센터 콘텐츠 -->
                <div class="right_contents">
                    <!--테이블 표시 영역-->
                    <article id="tableArea">
                        <div align="center">
                            <table style="float: left;">
                                <tr>
                                    <th>선택</th>
                                    <th width="70px;">No</th>
                                    <th width="70px">카테고리</th>
                                    <th width="500px;">제목</th>
                                    <th width="70px;">작성일</th>
                                    <th width="70px;">답변상태</th>
                                </tr>


                                <tr>
                                    <td><input type="radio"></td>
                                    <td>1</td>
                                    <td>결제관련</td>
                                    <td>
                                        <p style="color: black; cursor: pointer;"onclick="detail()">결제가 이상합니다</p>
                                    </td>
                                    <td>2020-06-29</td>
                                    <td style="color: orangered;">답변대기</td>
                                </tr>

                            </table>
                            <div id="detail"></div>
                            <table id="detail-table">
                                <tr>
                                    <td style="text-align: center; background-color: rgb(255, 107, 107); width: 900px;">내용</td>
                                </tr>
                                <tr style="float: left; margin-left: 20; margin-top: 15px; border: none; font-weight: bold; font-size: 1.2em;">
                                    <td>Q. 결제가 이상합니다</td>
                                </tr>
                                <tr style="float: left; margin-left: 20; margin-top: 15px;">
                                    <td>결제가 이상합니다 해결해주세요 히히<br><br></td>
                                </tr>
                                <br><br>
                                <tr style="float: left; margin-left: 20; margin-top: 15px; border: none; font-weight: bold; font-size: 1.2em;">
                                    <td>A. 안녕하세요 OH MY GYM입니다!</td>
                                </tr>
                                <tr style="float: left; margin-left: 20; margin-top: 15px;">
                                    <td style="text-align: left;">회원님 결제에 문제가 있으셨군요!<br>
                                    확인한 결과 문제가 발견되어 조치해드렸습니다!<br>
                                오늘도 건강한 하루 보내십셔!</td>
                                </tr>
                                
                              



                            </table>
                        </div>


                </div>

                </article>
                <!--테이블 표시 영역 종료-->
                <div style="float: right; margin-right: 400px; margin-top: 100px; ">
                    <button onclick=""
                        style="background-color: orangered; color: white; width: 70px; height: 25px; border: none;">글쓰기</button>
                    <button onclick=""
                        style="background-color: orangered; color: white; width: 70px; height: 25px; border: none;">선택삭제</button>
                </div>

        </div>

        </div>

        <!--// 컨텐츠 영역 -->
        </form>



    </section>
    <%@ include file="../../common/footer.jsp" %>


    </div>
    <!--// 오른쪽 콘텐츠 영역 -->



    </div>
    <script>
        function detail() {
           $("#detail-table").css("display","block");
        }
    </script>


</body>
</html>