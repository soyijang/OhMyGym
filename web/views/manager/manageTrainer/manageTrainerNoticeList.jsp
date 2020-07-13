<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오마이짐 관리자 페이지</title>
    <style>
       
        table {
            text-align: center;
            width: 1200px;
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

        #tableArea {
            height: 450px;
            margin-left: 220px;
            margin-top: 70px;
        }
        #infoBtn1 {
            border-style: none;
            background: orangered;
            width: 80px;
            color: white;
            height:25px;
            cursor: pointer;
        }
        #infoBtn2 {
            border-style: none;
            background: #000532;
            width: 80px;
            color: white;
            height:25px;
            cursor: pointer;
        }
        #menuTitleArea {
            display: inline;
            margin-top: 50px;
        }
        #tableArea {
            height: 450px;
        }
        #searchArea {
            display: inline-block;
            width: 400px;
            position: absolute;
            top: 90px;
            left: 1183px;
            margin: 0;
        }
        #alignmentArea {
            margin: 0;
            display: inline-block;
            position: absolute;
            left: 1220px;
            top: 130px;
        }
        #write {
        	background: #ff3800;
        	color: white;
        	text-align: left;
        	margin: 250px;
        	width: 100px;
        	height: 30px;
        	font-size: 15px;
        	text-align: center;
        	border: 0px;
        	
        }

    </style>
</head>
<body>
  
     <%@ include file="../../common/managerNav.jsp"%>
     
      <!--헤더 영역-->
        <article id="menuTitleArea">
            <p style="font-weight: bold; font-size: 1.5em; padding-top: 30px; padding-left: 250px;">식단페이지 관리</p>
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
                        <th width="100px;">구분</th>
                        <th width="200px">게시글명</th>
                        <th width="80px;">조회수</th>
                        <th width="100px;">게시일</th>
                        <th width="100px;">공개상태</th>
                        <th width="100px;">수정하기</th>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>이용약관변경</td>
                        <td>오마이짐 회원 이용약관 변경안내</td>
                        <td>787</td>
                        <td><input type="date"></td>
                        <td>공개</td>
                        <td><button class="btn" id="infoBtn1" onclick="">수정하기</button></td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>이용약관변경</td>
                        <td>오마이짐 회원 이용약관 변경안내</td>
                        <td>787</td>
                        <td><input type="date"></td>
                        <td>공개</td>
                        <td><button class="btn" id="infoBtn1" onclick="">수정하기</button></td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>이용약관변경</td>
                        <td>오마이짐 회원 이용약관 변경안내</td>
                        <td>787</td>
                        <td><input type="date"></td>
                        <td>공개</td>
                        <td><button class="btn" id="infoBtn1" onclick="">수정하기</button></td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>이용약관변경</td>
                        <td>오마이짐 회원 이용약관 변경안내</td>
                        <td>787</td>
                        <td><input type="date"></td>
                        <td>공개</td>
                        <td><button class="btn" id="infoBtn1" onclick="">수정하기</button></td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>이용약관변경</td>
                        <td>오마이짐 회원 이용약관 변경안내</td>
                        <td>787</td>
                        <td><input type="date"></td>
                        <td>공개</td>
                        <td><button class="btn" id="infoBtn1" onclick="">수정하기</button></td>
                    </tr>
                    
                </table>
            </div>
        </article>
        <!--테이블 표시 영역 종료-->
        <article>
        	<div>
        		<button id="write">글쓰기</button>
        	</div>
        </article>

</body>
</html>