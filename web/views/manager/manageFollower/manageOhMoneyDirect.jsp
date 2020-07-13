<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오마이짐 관리자 페이지</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <style>
        section {
            position: absolute;
            display:inline-block;
            width: 1240px;
            height: 100%;
            left: 200px;
        }
        section > article {
            margin-top: 30px;
            margin-left: 30px;
            margin: 30px;
            display: inline-block;
            width: 1180px;
        }
        #tableArea table {
            text-align: center;
            width: 1100px;
            border-collapse: collapse;
        }
        #tableArea table tr {
            width: 1000px;
            height: 20px;
        }
        #tableArea table th {
            font-size: 13px;
            height: 40px;
            border-bottom: 3px double gray;
            background: #000532;
            color: white;
            font-weight: normal;
        }
        #tableArea table td {
            font-family:"Noto Sans KR Regular ";
            font-size: 14px;
            height: 35px;
            border-bottom: 2px solid gray;
        }
        #tableArea table td a {
            color: black;
            text-decoration: underline;
            font-size: 14px;
        }
        #menuTitleArea {
            display: inline;
        }
        #tableArea {
            height: 450px;
        }
        #searchArea {
            display: inline-block;
            width: 400px;
            position: absolute;
            top: 60px;
            left: 812px;
            margin: 0;
        }
        #searchBtn {
            width: 50px;
            margin-left: 5px;
        }
        #alignmentArea {
            margin: 0;
            display: inline-block;
            position: absolute;
            left: 868px;
            top: 100px;
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
        .btn {
            border-style: none;
            width: 90px;
            height: 25px;
            color: white;
        }
        #infoBtn {
            background: #FF4F28;
        }
        #ohMoneyBtn {
            background: #1F0076;
        }
        #excelBtn {
            background: #0D6932;
            margin-right: 15px;
        }
        .login_wrap {
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
            filter: alpha(opacity=60);
            opacity: .6;
            -moz-opacity: .6
        }

        .login_box {
            position: relative;
            top: 15%;
            width: 635px;
            height: 550px;
            background: #fff;
            margin: 0 auto;
            border-radius: 8px;
            background: #fff;
            border: 1px solid #ccc
        }

        .login_box .close {
            /* position: absolute;
            right: 6px;
            top: 6px; */
            cursor: pointer
        }
        .amountBtn {
            width: 130px;
            height: 30px;
            font-weight: bold;
        }
        #amountArea {
            margin-top: 30px;
            text-align: center;
        }
        
    </style>
</head>
<body>
    <%@ include file="../../common/managerNav.jsp" %>
    <section>
        <!--메뉴타이틀 영역-->
        <article id="menuTitleArea">
            <p style="font-weight: bold; font-size: 1.5em; padding-top: 30px; padding-left: 30px;">OH머니 수기지급</p>
        </article>
        <!--메뉴타이틀 영역 종료-->

        <!--검색 영역-->
        <article id="searchArea">
            <select name="search" id="searchSelect">
                <option value="">팔로워ID</option>
                <option value="">팔로워 이름</option>
                <option value="">팔로워 닉네임</option>
                <option value="">팔로워 이메일</option>
                <option value="">팔로워 연락처</option>
            </select>
            <input type="search" width="50"><input type="submit" value="검색" id="searchBtn">
        </article>
        <!--검색 영역 종료-->

        <!--정렬 설정 영역-->
        <article id="alignmentArea">
            <button class="btn" id="excelBtn" onclick="">Excel 업로드</button>
            <select name="alignment" id="alignment">
                <option value="">회원번호 순</option>
                <option value="">아이디 순</option>
                <option value="">가입일 순</option>
            </select>
            <select name="viewRow" id="viewRow">
                <option value="10">10개씩 보기</option>
                <option value="20">20개씩 보기</option>
                <option value="30">30개씩 보기</option>
                <option value="40">40개씩 보기</option>
                <option value="50">50개씩 보기</option>
            </select>
        </article>
        <!--정렬영역 종료-->

        <!--테이블 표시 영역-->
        <article id="tableArea">
            <div align="center">
                <table>
                    <tr>
                        <th width="70px;">No</th>
                        <th width="100px">팔로워ID</th>
                        <th width="100px;">닉네임</th>
                        <th width="100px;">회원명</th>
                        <th width="200px;">이메일</th>
                        <th width="130px;">연락처</th>
                        <th width="70px;">등록여부</th>
                        <th width="100px;">가입일</th>
                        <th width="80px;">회원상태</th>
                        <th width="120px;">상세정보</th>
                        <th width="120px;">OH머니 지급</th>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>hlm1224</td>
                        <td>감자</td>
                        <td>이해림</td>
                        <td>hlm1225@naver.com</td>
                        <td>010-5139-3869</td>
                        <td>Y</td>
                        <td>2020-06-28</td>
                        <td>정상</td>
                        <td><button class="btn" id="infoBtn" onclick="">상세정보</button></a></td>
                        <td><button class="btn" id="ohMoneyBtn" onclick="jQuery('.login_wrap').fadeIn('slow');">OH머니지급</button></td>
                    </tr>
                </table>
            </div>
        </article>
        <!--테이블 표시 영역 종료-->

        <!--수기지급 팝업 영역-->
        <article id="omoneyDirectPaymentArea">
            <div class="login_wrap" style="display: none;">
                <div class="dark_bg" onclick="jQuery('.login_wrap').fadeOut('slow')"></div>
                <div class="login_box">
                    <div style="width: 100%; height: 30px; background: orangered; border-radius: 8px;">
                        <div style="color: white; font-weight: bold; font-family: 'Noto Sans KR'; margin-left: 270px; padding-top: 5px;">오머니 충전</div>
                        <div align="center" style="margin-top: 40px;">
                            <table width="600px" height="140px" style="border-top: 2px solid; border-bottom: 2px solid; border-collapse:collapse;">
                                <tr style="text-align: left;">
                                    <td width="200px" style="background: #F5F5F5;">&nbsp;현재 보유 OH머니</td>
                                    <td width="200px" style="background: #EAEAEA;">&nbsp;충전 할 OH머니</td>
                                    <td width="200px" style="background: #F5F5F5;">&nbsp;지급 후 OH머니</td>
                                </tr>
                                <tr style="text-align: right; font-size: 25px; font-weight: bold;">
                                    <td style="background: #F5F5F5;">원&nbsp;</td>
                                    <td style="background: #EAEAEA;">원&nbsp;</td>
                                    <td style="background: #F5F5F5;">원&nbsp;</td>
                                </tr>
                            </table>
                            <br>
                            <p style="text-align: left; margin-left: 20px; font-weight: bold; font-size: 17px;">수기지급사유</p>
                            <table width="600px"style="border-top: 2px solid; margin-top: 5px;">
                                <tr height="40px">
                                    <td><input type="radio" id="systemError" name="reason"><label for="systemError"> 시스템 에러&nbsp;&nbsp;&nbsp;&nbsp;</label></td>
                                    <td><input type="radio" id="event" name="reason"><label for="event">이벤트진행&nbsp;&nbsp;&nbsp;&nbsp;</label></td>
                                    <td><input type="radio" id="other" name="reason">&nbsp;<input type="text" for="other"></td>
                                </tr>
                            </table>
                            <br>
                            <p style="text-align: left; margin-left: 20px; font-weight: bold; font-size: 17px;">충전 금액 선택</p>
                            <table width="600px" style="border-top: 2px solid; margin-top: 5px; padding-left: 40px;">
                                <tr height="40px" align="left">
                                    <td><input type="radio" id="1000" name="amount"><label for="1000">  1000원</label></td>
                                    <td><input type="radio" id="3000" name="amount"><label for="3000">  3000원</label></td>
                                    <td><input type="radio" id="5000" name="amount"><label for="5000">  5000원</label></td>
                                    <td><input type="radio" id="10000" name="amount"><label for="10000"> 10000원</label></td>
                                </tr>
                                <tr height="40px" align="left">
                                    <td><input type="radio" id="50000" name="amount"><label for="50000"> 50000원</label></td>
                                    <td colspan="3"><input type="radio" id="otherMoney" name="amount">&nbsp;<input type="text" for="ohMoneyBtn"> 원</td>
                                </tr>
                            </table>
                        </div>
                        <div id="amountArea">
                            <button class="close amountBtn" onclick="jQuery('.login_wrap').fadeOut('slow')" src="img_icon/closeIcon.png">취소</button>
                            <button class="amountBtn" type="submit" style="margin-left: 10px; border-style: none; background: orangered;">확인</button>
                        </div>
                    </div>
                    <div class="login_content">
                    </div>
                </div>
            </div>
        </article>
        <!--수기지급 팝업 영역 종료-->

        <!--버튼 처리 영역(임시)-->
        <article id="pagingArea">
            <div id="pageButtonTemp">임시버튼영역</div>
        </article>
        <!--버튼 처리 영역(임시) 종료-->
    </section>
</body>
</html>