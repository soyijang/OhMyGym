<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오마이짐 관리자 페이지</title>
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
        #searchBtn {
            width: 50px;
            margin-left: 5px;
        }
        #alignmentArea {
            margin: 0;
            display: inline-block;
            position: absolute;
            left: 958px;
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
    </style>
</head>
<body>
    <%@ include file="../../common/managerNav.jsp" %>
    <section>
        <!--헤더 영역-->
        <article id="menuTitleArea">
            <p style="font-weight: bold; font-size: 1.5em; padding-top: 30px; padding-left: 30px;">트레이닝 진행 이력 관리</p>
        </article>
        <!--헤더 영역 종료-->

        <!--검색 영역-->
        <article id="searchArea">
            <select name="search" id="searchSelect">
                <option value="followerName">팔로워ID</option>
                <option value="trainerName">트레이너ID</option>
                <option value="matchingNumber">매칭번호</option>
                <option value="trainingRoomNum">트레이닝룸번호</option>
            </select>
            <input type="search" width="50"><input type="submit" value="검색" id="searchBtn">
        </article>
        <!--검색 영역 종료-->

        <!--정렬 설정 영역-->
        <article id="alignmentArea">
            <select name="alignment" id="alignment">
                <option value="trainingDate">출석인정 시간 순</option>
                <option value="matchingNumDesc">매칭번호 높은 순</option>
                <option value="matchingNumAsc">매칭번호 낮은 순</option>
                <option value="enrollDateDesc">가입일 느린 순</option>
                <option value="enrollDateAsc">가입일 빠른 순</option>
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
                        <th width="100px;">매칭번호</th>
                        <th width="100px">트레이너ID</th>
                        <th width="100px">팔로워ID</th>
                        <th width="80px;">진행회차</th>
                        <th width="150px;">출석인정날짜</th>
                        <th width="150px;">출석인정시간</th>
                        <th width="150px;">트레이닝룸관리번호</th>
                        <th width="150px;">팔로워영상관리번호</th>
                        <th width="150px;">피드백룸답글관리번호</th>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td><a href="">hlm1224</a></td>
                        <td><a href="">hlm1224</a></td>
                        <td>1</td>
                        <td>2020-08-21</td>
                        <td>18:56:23</td>
                        <td><a href="">654654</a></td>
                        <td><a href="">124235</a></td>
                        <td><a href="">567778</a></td>
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