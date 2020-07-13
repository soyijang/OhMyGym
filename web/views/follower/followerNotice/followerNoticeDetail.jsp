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
        float: left;
        margin-left: 30px;
    }
    #showNotice {
        width: 900px;
        border-top: 5px double gray;
        border-bottom: 5px double gray;
        border-collapse: collapse;
    }
    #showNotice th {
        width: 130px;
    }
    #showNotice td {
        height: 30px;
        padding: 3px;
    }
    section button{
        margin-top: 10px;
        width: 70px;
        height: 30px;
        color: white;
        background: orangered;
        font-weight: 500;
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

        <br><br>

        <!--공지사항 출력영역-->
        <article>
            <table id="showNotice">
                <tr>
                    <th>제목</th>
                    <td>제목test제목test제목test제목test제목test제목test제목test제목test</td>
                </tr>
                <tr>
                    <th>작성일</th>
                    <td>2020-06-08</td>
                </tr>
                <tr>
                    <th style="border-bottom: 5px double gray;">첨부파일</th>
                    <td style="border-bottom: 5px double gray;">첨부파일명</td>
                </tr>
                <tr>
                    <td colspan="4" style="padding: 20px;">
                        공지내용<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>

                    </td>
                </tr>
            </table>
            <div align="right">
                <button onclick="history.back(-1)">목록으로</button>
            </div>
        </article>
    </section>

    <br style="clear: both;"><br><br><br>
    
    <footer>
    	<%@ include file="../../common/footer.jsp" %>
    </footer>
</body>
</html>