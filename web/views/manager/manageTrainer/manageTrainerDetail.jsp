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

        section>article {
            margin-top: 30px;
            margin-left: 30px;
            margin: 30px;
            display: inline-block;
            width: 1180px;
        }

        #menuTitleArea {
            /* display: inline; */
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

    <style type="text/css">
        .tg {
            
            border-collapse: collapse;
            border-spacing: 0;
        }

        .tg td {
            border-color: black;
            border-style: solid;
            border-width: 1px;
            font-family: "Noto Sans KR Medium";
            font-size: 20px;
            overflow: hidden;
            padding: 10px 5px;
            word-break: normal;
        }

        .tg th {
            border-color: black;
            border-style: solid;
            border-width: 1px;
            font-family: "Noto Sans KR Medium";
            font-size: 20px;
            font-weight: normal;
            overflow: hidden;
            padding: 10px 5px;
            word-break: normal;
        }

        .tg .tg-cly1 {
            text-align: center;
            vertical-align: middle
        }

        .tg .tg-0pky {
            border-color: inherit;
            text-align: center;
            vertical-align: top
        }

        .tg .tg-0lax {
            text-align: center;
            vertical-align: top;
            height: 60px;
        }
    </style>
   
</head>
<body>
  <%@ include file="../../common/managerNav.jsp"%>
    <section>
        <!--헤더 영역-->
        <article id="menuTitleArea">
            <p style="font-weight: bold; font-size: 1.5em; padding-top: 30px; padding-left: 30px;">트레이너 조회/수정</p><br>
           
        </article>
        <!--헤더 영역 종료-->

       
        <!--버튼 영역-->
        <article id="button-Area">
            <div style="float: right; margin-right: 100px;">
                <button onclick="" style="cursor: pointer; border: none; background-color: navy; color: white; height: 30px; width: 70px">계약서작성</button>
                <button onclick="" style="cursor: pointer; border: none; background-color: navy; color: white; height: 30px; width: 120px">임시비밀번호발급</button>
                <button onclick="" style="cursor: pointer; border: none; background-color: navy; color: white; height: 30px; width: 70px">edit</button>
            </div>
          
        </article>
        <!--버튼영역 종료-->

        <!--테이블 표시 영역-->
        <article id="tableArea">
            <div align="center">
                <table class="tg" style="undefined;table-layout: fixed; width: 1000px; height: 960px;">
                    <colgroup>
                        <col style="width: 65px">
                        <col style="width: 65px">
                        <col style="width: 65px">
                        <col style="width: 65px">
                        <col style="width: 85px">
                        <col style="width: 65px">
                        <col style="width: 65px">
                        <col style="width: 85px">
                        <col style="width: 85px">
                    </colgroup>
                    <thead>
                        <tr style="border-top: 4px solid gray;">
                            <th class="tg-0pky" colspan="2" style="background-color: rgb(172, 172, 172)">프로필</th>
                            <th class="tg-0pky" style="background-color: rgb(172, 172, 172)">아이디</th>
                            <th class="tg-0pky" colspan="3">j_noo11</th>
                            <th class="tg-cly1" style="background-color: rgb(172, 172, 172)">회원상태</th>
                            <th class="tg-0lax" colspan="2">임시트레이너</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="tg-0pky" colspan="2" rowspan="4"><img style="width: 200px; height: 240px;" src="img/jino.jpeg"></td>
                            <td class="tg-0pky" style="background-color: rgb(172, 172, 172)">닉네임</td>
                            <td class="tg-0pky" colspan="3">찐트</td>
                            <td class="tg-cly1" style="background-color: rgb(172, 172, 172)">연락처</td>
                            <td class="tg-0lax" colspan="2">010-6342-7777</td>
                        </tr>
                        <tr>
                            <td class="tg-0lax" style="background-color: rgb(172, 172, 172)">회원명</td>
                            <td class="tg-0lax" colspan="3">김진우</td>
                            <td class="tg-cly1" style="background-color: rgb(172, 172, 172)">가입일</td>
                            <td class="tg-0lax" colspan="2">2020/06/15</td>
                        </tr>
                        <tr>
                            <td class="tg-0lax" style="background-color: rgb(172, 172, 172)">이메일</td>
                            <td class="tg-0lax" colspan="6">j_noo1@h.or.kr</td>
                        </tr>
                        <tr>
                            <td class="tg-0lax" style="background-color: rgb(172, 172, 172)">주소</td>
                            <td class="tg-0lax" colspan="6">경기도 남양주시 부내동 1256-1</td>
                        </tr>
                        <tr>
                            <td class="tg-0lax" style="background-color: rgb(172, 172, 172)">학력</td>
                            <td class="tg-0lax" colspan="2">용인대체육교육학과<button onclick="" style="border: none; background-color: gray;color: white; width: 70px; height: 20px;">확인하기</button></td>
                            <td class="tg-0lax" style="background-color: rgb(172, 172, 172)">주요분야</td>
                            <td class="tg-0lax" colspan="2">재활PT/근력향상</td>
                            <td class="tg-cly1" style="background-color: rgb(172, 172, 172)">계좌정보</td>
                            <td class="tg-0lax" colspan="2">우리은행 1002-752-665441</td>
                        </tr>
                        <tr>
                            <td class="tg-0lax" colspan="3" style="background-color: rgb(172, 172, 172)">자격증/워크샵</td>
                            <td class="tg-0lax" colspan="2" style="background-color: rgb(172, 172, 172)">취득일</td>
                            <td class="tg-0lax" colspan="2" style="background-color: rgb(172, 172, 172)">발급기관</td>
                            <td class="tg-0lax" colspan="2" style="background-color: rgb(172, 172, 172)">증빙자료</td>
                        </tr>
                        <tr>
                            
                            <td class="tg-0lax" colspan="3" >생확체육지도사2급</td>
                            <td class="tg-0lax" colspan="2">2014.02.14</td>
                            <td class="tg-0lax" colspan="2">국민체육진흥공단</td>
                            <td class="tg-0lax" colspan="2"><button onclick="" style="border: none; background-color: gray;color: white; width: 70px; height: 20px;">확인하기</button></td>
                        </tr>
                        <tr>
                            
                            <td class="tg-0lax" colspan="3">휘트니스지도자</td>
                            <td class="tg-0lax" colspan="2">2018.07.30</td>
                            <td class="tg-0lax" colspan="2">사단법인 국제생활체육건강관리협회</td>
                            <td class="tg-0lax" colspan="2"><button onclick="" style="border: none; background-color: gray;color: white; width: 70px; height: 20px;">확인하기</button></td>
                        </tr>
                        <tr>
                 
                            <td class="tg-0lax" colspan="3">재활트레이너1급</td>
                            <td class="tg-0lax" colspan="2">2018.07.30</td>
                            <td class="tg-0lax" colspan="2">사단법인 국제생활체육건강관리협회</td>
                            <td class="tg-0lax" colspan="2"><button onclick="" style="border: none; background-color: gray;color: white; width: 70px; height: 20px;">확인하기</button></td>
                        </tr>
                        <tr>
                        
                            <td class="tg-0lax" colspan="3">스포츠건강트레이너1급</td>
                            <td class="tg-0lax" colspan="2">2018.07.30</td>
                            <td class="tg-0lax" colspan="2">사단법인 국제생활체육건강관리협회</td>
                            <td class="tg-0lax" colspan="2"><button onclick="" style="border: none; background-color: gray;color: white; width: 70px; height: 20px;">확인하기</button></td>
                        </tr>
                        <tr>
                            <td class="tg-0lax" colspan="3" style="background-color: rgb(172, 172, 172)">기관명</td>
                            <td class="tg-0lax" colspan="2" style="background-color: rgb(172, 172, 172)">직급</td>
                            <td class="tg-0lax" colspan="4" style="background-color: rgb(172, 172, 172)">근무기간</td>
                           
                        </tr>
                        <tr>
                            <td class="tg-0lax" rowspan="3" style="background-color: rgb(172, 172, 172)"><br><br><br>경력사항</td>
                            <td class="tg-0lax" colspan="2">KH휘트니스 강남1호점</td>
                            <td class="tg-0lax" colspan="2">트레이너</td>
                            <td class="tg-0lax" colspan="4">2014. 03. 27 ~ 2016. 09. 30</td>
                    
                        </tr>
                        <tr>
                           
                            <td class="tg-0lax" colspan="2">오지는휘트니스 청담점</td>
                            <td class="tg-0lax" colspan="2">트레이너</td>
                            <td class="tg-0lax" colspan="4">2016. 10. 01 ~ 2018. 05. 31</td>
    
                        </tr>
                        <tr>
                         
                            <td class="tg-0pky" colspan="2">놋네호텔휘트니스센터</td>
                            <td class="tg-0pky" colspan="2">트레이너</td>
                            <td class="tg-0lax" colspan="4">2018 .06. 01 ~</td>
       
                        </tr>
                        <tr style="height: 60px;">
                            <td class="tg-0pky" style="background-color: rgb(172, 172, 172)">메모</td>
                            <td class="tg-0pky" colspan="8"></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </article>
        <!--테이블 표시 영역 종료-->


    </section>
</body>
</html>