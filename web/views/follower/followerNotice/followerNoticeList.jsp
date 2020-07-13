<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    * {
        font-family: "Noto Sans KR";
    }
    section {
        width: 900px;
        height: 700px;
        /* border: 2px solid red; */
        float: left;
        margin-left: 30px;
    }
    #searchArea {
        text-align: right;
    }
    #searchBtn {
        text-align: center;
        background: orangered;
        color: white;
        border: none;
        width: 50px;
        height: 23px;
        margin-left: 10px;
    }
    #searchArea select {
        width: 70px;
        border: 1px solid gray;
    }
    #searchArea input[type="search"] {
        border: 1px solid gray;
        height: 23px;
    }
    #showNoticeList table {
        width: 900px;
        text-align: center;
        border-collapse:collapse;
        border-bottom: 5px double gray;
    }
    #showNoticeList tr td:nth-child(3) {
        text-align: left;
    }
    #showNoticeList td {
        font-size: 0.9em;
    }
    #showNoticeList img {
        width: 50px;
        height: 40px;
        vertical-align: middle;
    }
    #showNoticeList th {
        height: 40px;
        border-bottom: 5px double gray;
    }
    #showNoticeList td {
        height: 25px;
        border-bottom: 1px solid gray;
    }
    #showNoticeList tr td:nth-child(3) {
        padding-left: 10px;
    }
</style>
</head>
<body>
    <%@ include file="../../common/followerNav.jsp" %>

    <aside>
        <%@ include file="followerNoticeAside.jsp" %>
    </aside>
    <section>
        <!--헤더 영역-->
        <article id="menuTitleArea">
            <div>
                <h1 style="margin-top: 8px; font-size: 1.5em;">&nbsp;&nbsp;&nbsp;공지사항</h1>
            </div>
        </article>
        <!--헤더 영역 종료-->

        <!--검색 영역-->
        <article id="searchArea">
            <select name="search" id="searchSelect">
                <option value="title">제목</option>
                <option value="content">내용</option>
            </select>
            <input type="search" width="50"><input type="submit" value="검색" id="searchBtn">
        </article>
        <!--검색 영역 종료-->

        <br>    

        <!--리스트 출력 영역-->
        <article id="showNoticeList">
            <table>
                <tr>
                    <th width="50px">No</th>
                    <th width="110px">분류</th>
                    <th>제목</th>
                    <th width="60px">첨부파일</th>
                    <th width="100px">등록일</th>
                </tr>
                <tr>
                    <td>1</td>
                    <td>버그사항개선</td>
                    <td><a href="">testtesttesttesttesttesttesttesttest</a></td>
                    <td><img src="../../resources/img/noticeFile.png" alt=""></td>
                    <td>2020-06-18</td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>버그사항개선</td>
                    <td><a href="">testtesttesttesttesttesttesttesttest</a></td>
                    <td><img src="../../resources/img/noticeFile.png" alt=""></td>
                    <td>2020-06-18</td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>버그사항개선</td>
                    <td><a href="">testtesttesttesttesttesttesttesttest</a></td>
                    <td><img src="../../resources/img/noticeFile.png" alt=""></td>
                    <td>2020-06-18</td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>버그사항개선</td>
                    <td><a href="">testtesttesttesttesttesttesttesttest</a></td>
                    <td><img src="../../resources/img/noticeFile.png" alt=""></td>
                    <td>2020-06-18</td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>버그사항개선</td>
                    <td><a href="">testtesttesttesttesttesttesttesttest</a></td>
                    <td><img src="../../resources/img/noticeFile.png" alt=""></td>
                    <td>2020-06-18</td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>버그사항개선</td>
                    <td><a href="">testtesttesttesttesttesttesttesttest</a></td>
                    <td><img src="../../resources/img/noticeFile.png" alt=""></td>
                    <td>2020-06-18</td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>버그사항개선</td>
                    <td><a href="">testtesttesttesttesttesttesttesttest</a></td>
                    <td><img src="../../resources/img/noticeFile.png" alt=""></td>
                    <td>2020-06-18</td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>버그사항개선</td>
                    <td><a href="">testtesttesttesttesttesttesttesttest</a></td>
                    <td><img src="../../resources/img/noticeFile.png" alt=""></td>
                    <td>2020-06-18</td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>버그사항개선</td>
                    <td><a href="">testtesttesttesttesttesttesttesttest</a></td>
                    <td><img src="../../resources/img/noticeFile.png" alt=""></td>
                    <td>2020-06-18</td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>버그사항개선</td>
                    <td><a href="">testtesttesttesttesttesttesttesttest</a></td>
                    <td><img src="../../resources/img/noticeFile.png" alt=""></td>
                    <td>2020-06-18</td>
                </tr>
            </table>
        </article>
    </section>

    <br style="clear: both;"><br><br><br>
    
    <footer>
    	<%@ include file="../../common/footer.jsp" %>
    </footer>
</body>
</html>