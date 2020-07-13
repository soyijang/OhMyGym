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
 
            color: black;
            font-weight: bold;
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
    </style>
</head>
<body>
	<%@ include file="../../common/managerNav.jsp" %>
    <section>
        <!--헤더 영역-->
        <article id="menuTitleArea">
            <p style="font-weight: bold; font-size: 1.5em; padding-top: 30px; padding-left: 30px;">챌린지 목록 관리</p>
        </article>
        <!--헤더 영역 종료-->

        <!--검색 영역-->
        <article id="searchArea">
            <select name="search" id="searchSelect">
                <option value="followerName">팔로워ID</option>
                <option value="trainerName">날짜</option>
                <option value="matchingNumber">금액</option>
                <option value="trainingRoomNum">관리자ID</option>
                <option value="trainingRoomNum">세부내용</option>
                <option value="trainingRoomNum">환급가능여부</option>
                <option value="trainingRoomNum">결제/취소 수단</option>
            </select>
            <input type="search" width="50"><input type="submit" value="검색" id="searchBtn">
        </article>
        <!--검색 영역 종료-->

        <!--정렬 설정 영역-->
        	<h2>검색
        	<a style="color:orangered; font-weight: bold;">120</a>
        	개/전체<a style="color:orangered; font-weight: bold">120</a>개</h2>        	        	
        	
        	<button style="background: orangered; color: white; position: absolute; left: 900px; top: 100px;">글 작성하기</button>
        <article id="alignmentArea">
            <select name="alignment" id="alignment">
                <option value="trainingDate">좋아요 순</option>
                <option value="matchingNumDesc">조회수 순</option>
                <option value="matchingNumAsc">카테고리 순</option>
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
                        <th width="100px;">카테고리</th>
                        <th width="200px">제목</th>
                        <th width="70px;">작성자</th>
                        <th width="70px;">작성일</th>
                        <th width="80px;">조회수</th>
                        <th width="80px;">좋아요</th>
                        <th width="80px;">북마크</th>
                    </tr>
                    <tbody>
                    <tr>
                        <td>1</td>
                        <td>식단 정보</td>
                        <td>기름진음식,마음껏 먹어도 된다구요?저탄고지의 진실</td>
                        <td>챌린지담당자</td>
                        <td>2020/06/19</td>
                        <td>10,597</td>
                        <td>412</td>
                        <td>2,254</td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>운동 정보</td>
                        <td>기름진음식,마음껏 먹어도 된다구요?저탄고지의 진실</td>
                        <td>챌린지담당자</td>
                        <td>2020/06/19</td>
                        <td>10,597</td>
                        <td>412</td>
                        <td>2,254</td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td>건강 정보</td>
                         <td>기름진음식,마음껏 먹어도 된다구요?저탄고지의 진실</td>
                        <td>챌린지담당자</td>
                        <td>2020/06/19</td>
                        <td>10,597</td>
                        <td>412</td>
                        <td>2,254</td>
                    </tr>
                    <tr>
                        <td>4</td>
                        <td>식단 정보</td>
                        <td>기름진음식,마음껏 먹어도 된다구요?저탄고지의 진실</td>
                        <td>챌린지담당자</td>
                        <td>2020/06/19</td>
                        <td>10,597</td>
                        <td>412</td>
                        <td>2,254</td>
                    </tr>
                    <tr>
                        <td>5</td>
                        <td>건강 정보</td>
                        <td>기름진음식,마음껏 먹어도 된다구요?저탄고지의 진실</td>
                        <td>챌린지담당자</td>
                        <td>2020/06/19</td>
                        <td>10,597</td>
                        <td>412</td>
                        <td>2,254</td>
                    </tr>
                    </tbody>
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