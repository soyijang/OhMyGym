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
            left: 812px;
            margin: 0;
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

        #contentc {
            margin: 15;
        }
    </style>
</head>
<body>
  <%@ include file="../../common/managerNav.jsp"%>
    <section>
        <!--헤더 영역-->
        <article id="menuTitleArea">
            <p style="font-weight: bold; font-size: 1.5em; padding-top: 30px; padding-left: 30px;">시스템 개발 요청</p>
        </article>
        <!--헤더 영역 종료-->

       
        <!--테이블 표시 영역-->
        <article id="tableArea">
            <div align="center">
                <table>
                    <tr>
                        <td style="background-color: palevioletred;">항목구분</td>
                        <td colspan="2"><input type="radio" id=contentc value="1" name=contentc checked="">수강문의
                            <input type="radio" id=contentc name=contentc value="2">연기/환불
                            <input type="radio" id=contentc name=contentc value="3">결제/캐시
                            <input type="radio" id=contentc name=contentc value="4">회원정보
                            <input type="radio" id=contentc name=contentc value="5">기타</td>
                    </tr>
                    <tr>
                        <td style="background-color: palevioletred; width: 200px;">사용자명</td>
                        <td><a style="text-decoration: none; float: left; margin-left: 70;">김진오</a></td>
                    </tr>
                    <tr>
                        <td style="background-color: palevioletred;">제목</td>
                        <td><a style="text-decoration: none; float: left; margin-left: 70;">결제가 안됩니다</a></td>
                    </tr>
                    <tr>
                        <td style="background-color: palevioletred;">내용상세</td>
                        <td><a style="text-decoration: none; float: left; margin-left: 70;">결제가 안됩니다. 해결해주세요 엉엉</a></td>
                    </tr>
                    <tr>
                        <td style="background-color: palevioletred;">문의일자</td>
                        <td><a style="text-decoration: none; float: left; margin-left: 70;">2020-07-07</a></td>
                    </tr>
                    <tr>
                        <td style="background-color: palevioletred;">답변하기</td>
                        <td><textarea placeholder="내용을 입력해주세요" cols="125" rows="10" style="resize: none; margin-top: 20; margin-bottom: 20;"></textarea></td>
                        
                    </tr>
                    
                    
                </table>
                 <!--테이블 표시 영역 종료-->
                    <!--버튼 처리 영역(임시)-->
                    <br>
                <button onclick="" style="float: right; margin-right: 40; background-color: orangered; color: white; border: none; height: 30px; width: 100px;">저장</button>
                  <!--버튼 처리 영역(임시) 종료-->
            </div>
        </article>
       

       
      
     
    </section>
</body>
</html>