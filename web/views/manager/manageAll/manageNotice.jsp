<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    section {
        width: 1220px;
        margin-left: 200px;
    }
    a {
        color: black;
    }
    a:hover {
        text-decoration: underline;
    }
    #searchArea {
        text-align: right;
    }
    #searchArea select {
        width: 70px;
        margin-right: 5px;
    }
    #searchArea input:first-child {
        width: 200px;
        margin-left: 10px;
    }
    #searchArea input:last-child {
        border: none;
        background: orangered;
        color: white;
        font-weight: 500;
        width: 70px;
        height: 22px;
        margin-right: 20px;
        margin-left: 15px;
    }
    #alignmentArea {
        text-align: right;
        margin-top: 10px;
    }
    #alignmentArea select {
        width: 120px;
    }
    #alignmentArea select:last-child {
        margin-right: 20px;
        margin-left: 10px;
    }
    #showNoticeList {
        width: 1220px;
    }
    #showNoticeList table {
        width: 1100px;
        margin: 0 auto;
        border-collapse: collapse;
        border-bottom: 5px double gray;
        text-align: center;
    }
    #showNoticeList th {
        height: 45px;
        font-size: 0.9em;
        border-bottom: 5px double gray;
    }
    #showNoticeList td {
        font-size: 0.85em;
        height: 40px;
        border-bottom: 1px solid gray;
    }
    #showNoticeList tr td:nth-child(3) {
        padding-left: 20px;
        text-align: left;
    }
    #showNoticeList tr td:nth-child(2) {
        background: rgb(189, 189, 189);
    }
    #inputNotice {
        margin-top: 10px;
    }
    #inputNotice button {
        margin-left: 60px;
        width: 80px;
        height: 25px;
        border: none;
        background: orangered;
        color: white;
        font-weight: 500;
    }
</style>
</head>
<body>
    <%@ include file="../../common/managerNav.jsp" %>

    <section>
        <!--헤더 영역-->
        <article id="menuTitleArea">
            <p style="font-weight: bold; font-size: 1.5em; padding-top: 30px; padding-left: 30px;">공지사항</p>
        </article>
        <!--헤더 영역 종료-->

        <!--검색영역-->
        <article id="searchArea">
            <form action="" method="">
                <select name="" id="">
                    <option value="">제목</option>
                </select>
                <input type="search">
                <input type="submit" value="검색">
            </form>
        </article>
        <!--검색영역 종료-->

        <!--정렬영역-->
        <article id="alignmentArea">
            <select name="" id="">
                <option value="">최신순</option>
                <!--정렬옵션 추가해주세용^^-->
            </select>
            <select name="" id="">
                <option value="">10개씩 보기</option>
                <option value="">20개씩 보기</option>
            </select>
        </article>
        <!--정렬영역 종료-->

        <br>

        <!--공지 목록 출력 영역-->
        <article id="showNoticeList">
            <table>
                <tr>
                    <th width="80px">No</th>
                    <th width="110px">구분</th>
                    <th>제목</th>
                    <th width="80px">조회수</th>
                    <th width="100px">게시일</th>
                    <th width="80px">공개상태</th>
                </tr>
                <tr>
                    <td>1</td>
                    <td>일반</td>
                    <td><a href="">제목test제목test제목test제목test제목test제목test제목test제목test제목test제목test</a></td>
                    <td>12315</td>
                    <td>2020-06-07</td>
                    <td>Y</td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>버그사항수정</td>
                    <td><a href="">제목test제목test제목test제목test제목test제목test제목test제목test제목test제목test</a></td>
                    <td>12315</td>
                    <td>2020-06-07</td>
                    <td>Y</td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>일반</td>
                    <td><a href="">제목test제목test제목test제목test제목test제목test제목test제목test제목test제목test</a></td>
                    <td>12315</td>
                    <td>2020-06-07</td>
                    <td>Y</td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>일반</td>
                    <td><a href="">제목test제목test제목test제목test제목test제목test제목test제목test제목test제목test</a></td>
                    <td>12315</td>
                    <td>2020-06-07</td>
                    <td>Y</td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>일반</td>
                    <td><a href="">제목test제목test제목test제목test제목test제목test제목test제목test제목test제목test</a></td>
                    <td>12315</td>
                    <td>2020-06-07</td>
                    <td>Y</td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>일반</td>
                    <td><a href="">제목test제목test제목test제목test제목test제목test제목test제목test제목test제목test</a></td>
                    <td>12315</td>
                    <td>2020-06-07</td>
                    <td>Y</td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>일반</td>
                    <td><a href="">제목test제목test제목test제목test제목test제목test제목test제목test제목test제목test</a></td>
                    <td>12315</td>
                    <td>2020-06-07</td>
                    <td>Y</td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>일반</td>
                    <td><a href="">제목test제목test제목test제목test제목test제목test제목test제목test제목test제목test</a></td>
                    <td>12315</td>
                    <td>2020-06-07</td>
                    <td>Y</td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>일반</td>
                    <td><a href="">제목test제목test제목test제목test제목test제목test제목test제목test제목test제목test</a></td>
                    <td>12315</td>
                    <td>2020-06-07</td>
                    <td>Y</td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>일반</td>
                    <td><a href="">제목test제목test제목test제목test제목test제목test제목test제목test제목test제목test</a></td>
                    <td>12315</td>
                    <td>2020-06-07</td>
                    <td>Y</td>
                </tr>
            </table>
        </article>
        <!--공지 목록 출력 영역 종료-->

        <!--공지사항 작성버튼-->
        <article id="inputNotice">
            <button>글 작성하기</button>
        </article>
        <!-- 공지사항 작성버튼 영역 종료 -->
    </section>
</body>
</html>