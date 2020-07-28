<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.omg.jsp.notice.model.vo.*"%>
    <%
    Notice notice = (Notice) request.getAttribute("notice");
    %>
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
    #postMark{
    	margin-left: 850px;
    }
   
</style>
</head>
<body>
    <%@ include file="../../common/followerNav.jsp" %>

    <aside>
        <%@ include file="followerNoticeAside.jsp" %>
    </aside>q
    <section>
        <!--헤더 영역-->
        <article id="menuTitleArea">
        <div><img id="postMark" src="/omg/resources/img/bookmark 1bookmark.png" onclick="postMark();"></div>
            <div>
                <h1 style="margin-top: 8px; font-size: 1.5em;">&nbsp;&nbsp;&nbsp;공지사항</h1>
                
            </div>
        </article>
        <!--헤더 영역 종료-->

        <br>

        <!--공지사항 출력영역-->
        <article>
            <table id="showNotice">
                <tr>
                    <th>제목</th>
                    <td><%=notice.getBoardTitle()%></td>
                </tr>
                <tr>
                    <th>작성일</th>
                    <td><%=notice.getWritedate()%>&nbsp;&nbsp;&nbsp;[<%=notice.getWriteTime()%>]</td>
                </tr>
                <tr>
                	 <th>조회수</th>
                    <td><%=notice.getViewCount() %></td>
                </tr>
                <tr>
                    <th style="border-bottom: 5px double gray;">첨부파일</th>
                    <td style="border-bottom: 5px double gray;"></td>
                </tr>
                <tr>
                    <td colspan="4" style="padding: 20px; height: 320px; border: 1px solid gray;">
                    <%=notice.getBoardContent()%>
                    </td>
                </tr>
            </table>
            
            <div align="right">
                <button onclick="bookMark(<%=notice.getManagerId()%>);">북마크</button>
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