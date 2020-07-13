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
            top : 0;
            display: inline;
            z-index: -100;
        }
        #logo {
            position: absolute;
            top: 13px;
            left: 13px;
        }
        header div{
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
        table {
            text-align: center;
            width: 1100px;
            border-collapse: collapse;
        }
        tr {
            width: 1000px;
            height: 20px;
        }
        th {
            font-size: 13px;
            height: 40px;
            border-bottom: 3px double gray;
            background: #000532;
            color: white;
            font-weight: normal;
        }
        td {
            font-family:"Noto Sans KR Regular ";
            font-size: 14px;
            height: 35px;
            border-bottom: 2px solid gray;
        }
        td > a {
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
            left: 950px;
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
            left: 1007px;
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
        #infoBtn {
            border-style: none;
            background: orangered;
            width: 80px;
            color: white;
            height:25px;
            cursor: pointer;
        }
        #alignmentArea1{
        	width: 150px;
        	height: 50px;
        	margin: 0;
  
        }
    </style>
</head>
<body>
    <%@ include file="../../common/managerNav.jsp"%>
    <section>
        <!--헤더 영역-->
        <article id="menuTitleArea">
            <p style="font-weight: bold; font-size: 1.5em; padding-top: 30px; padding-left: 30px;">식단페이지 관리</p>
        </article>
        <!--헤더 영역 종료-->

        <!--검색 영역-->
        <article id="searchArea">
            <select name="search" id="searchSelect">
                <option value="followerName">회원명</option>
                <option value="followerId">아이디</option>
                <option value="followerNickName">닉네임</option>
                <option value="Num">글번호</option>
            </select>
            <input type="search" width="50"><input type="submit" value="검색" id="searchBtn">
        </article>
        <!--검색 영역 종료-->

        <!--정렬 설정 영역-->
      
        <article id="alignmentArea">
       
            <select name="alignment" id="alignment">
   
                <option value="trainingDate">가입일 느린 순</option>
                <option value="matchingNumDesc">ID 순</option>

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
                        <th width="30px;">No</th>
                        <th width="100px;">아이디</th>
                        <th width="50px">닉네임</th>
                        <th width="70px;">회원명</th>
                        <th width="80px;">이메일</th>
                        <th width="100px;">연락처</th>
                        <th width="60px;">담당트레이너</th>
                        <th width="80px;">트레이너명</th>
                        <th width="100px">식단관리페이지 이동하기</th>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>hlm1225</td>
                        <td>킹윤킹</td>
                        <td>김윤지</td>
                        <td>king123@gmail.com</td>
                        <td>010-1234-1235</td>
                        <td>oewa_</td>
                        <td>장소이</td>
                        <td><button class="btn" id="infoBtn" onclick="">이동하기</button></a></td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>hlm1225</td>
                        <td>킹윤킹</td>
                        <td>김윤지</td>
                        <td>king123@gmail.com</td>
                        <td>010-1234-1235</td>
                        <td>oewa_</td>
                        <td>장소이</td>
                        <td><button class="btn" id="infoBtn" onclick="">이동하기</button></a></td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>hlm1225</td>
                        <td>킹윤킹</td>
                        <td>김윤지</td>
                        <td>king123@gmail.com</td>
                        <td>010-1234-1235</td>
                        <td>oewa_</td>
                        <td>장소이</td>
                        <td><button class="btn" id="infoBtn" onclick="">이동하기</button></a></td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>hlm1225</td>
                        <td>킹윤킹</td>
                        <td>김윤지</td>
                        <td>king123@gmail.com</td>
                        <td>010-1234-1235</td>
                        <td>oewa_</td>
                        <td>장소이</td>
                        <td><button class="btn" id="infoBtn" onclick="">이동하기</button></a></td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>hlm1225</td>
                        <td>킹윤킹</td>
                        <td>김윤지</td>
                        <td>king123@gmail.com</td>
                        <td>010-1234-1235</td>
                        <td>oewa_</td>
                        <td>장소이</td>
                        <td><button class="btn" id="infoBtn" onclick="">이동하기</button></a></td>
                    </tr>
                    
                </table>
            </div>
        </article>
        <!--테이블 표시 영역 종료-->

        <!--버튼 처리 영역(임시)-->
        <article id="pagingArea">
            <div id="pageButtonTemp">임시버튼영역</div>
        </article>
        <!--버튼 처리 영역(임시) 종료-->
    </section>
</body>
</html>