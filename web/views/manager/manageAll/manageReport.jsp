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
            left: 950px;
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
        
        #monthBtn{
            border-style: none;
            background: orangered;
            width: 120px;
            color: white;
            height:25px;
            cursor: pointer;
        }
        
        #askAboutMoney{
            border-style: none;
            background: gray;
            width: 120px;
            color: white;
            height:25px;
            cursor: pointer;
            
            margin: 0;
            display: inline-block;
            position: absolute;
            left: 70px;
            top: 100px;
        }
    </style>
</head>
<body>
    <%@ include file="/views/common/managerNav.jsp" %>
    <section>
        <!--헤더 영역-->
        <article id="menuTitleArea">
            <p style="font-weight: bold; font-size: 1.5em; padding-top: 30px; padding-left: 30px;">신고내역관리</p>
        </article>
        <!--헤더 영역 종료-->

        <!--검색 영역-->
        <article id="searchArea">
            <select name="search" id="searchSelect">
                <option value="trainerName">신고자</option>
                <option value="matchingNumber">신고내용</option>
            </select>
            <input type="search" width="50"><input type="submit" value="검색" id="searchBtn">
        </article>
        <!--검색 영역 종료-->
        <!--정렬 설정 영역-->
        <article id="alignmentArea">
            <select name="alignment" id="alignment">
                <option value="trainingDate">홍보성/영리목적</option>
                <option value="matchingNumDesc">음란성/선정성</option>
                <option value="matchingNumAsc">욕설/비방</option>
                <option value="enrollDateDesc">도배</option>
                <option value="enrollDateDesc">기타</option>
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
                    <tr >
                        <th width="30px;">No</th>
                        <th width="100px;">카테고리</th>
                        <th width="200px">신고내용</th>
                        <th width="80px;">신고자ID</th>
                        <th width="80px;">신고일</th>
                        <th width="80px;">처리현황</th>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>홍보성/영리목적</td>
                        <td><a href="manageReportDetail.jsp">그룹소통방에 홍보성 글이 업로드 되어있습니다.</a></td>
                        <td>soi0205</td>
                        <td>2020-7-12</td>
                        <td>N</td>
                    </tr>
                </table>
            </div>
        </article>
    </section>
</body>
</html>