<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.omg.jsp.member.model.vo.*, java.util.*, com.omg.jsp.qna.model.vo.*"%>
<%ArrayList<QNA> list = (ArrayList<QNA>) request.getAttribute("list"); %>
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
            border-bottom: 4px double black;
            background-color: navy;
            color: white;
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
            /* display: inline; */
        }
        #tableArea {
            height: 450px;
        }
        #searchArea {
            display: inline-block;
            width: 400px;
            position: absolute;
            top: 60px;
            left: 860px;
            margin: 0;
        }
        #searchBtn {
            width: 70px;
            height: 25px;
            margin-left: 5px;
            border-style: none;
            background: orangered;
            color: white;
            cursor: pointer;
            
        }
        #alignmentArea {
            margin: 0;
            margin-top: 10;
            display: inline-block;
            position: relative;
            left: 958px;
            top: 25px;

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
        #answerBtn {
            border-style: none;
            background: orangered;
            width: 70px;
            color: white;
            height:25px;
            cursor: pointer;
        }
        #editBtn {
            border-style: none;
            background: navy;
            width: 70px;
            color: white;
            height:25px;
            cursor: pointer;
        }
        #manyPeople {
            margin-left: 30;
        }
    </style>
</head>
<body>
  <%@ include file="../../common/managerNav.jsp"%>
    <section>
        <!--헤더 영역-->
        <article id="menuTitleArea">
            <p style="font-weight: bold; font-size: 1.5em; padding-top: 30px; padding-left: 30px;">직접묻는질문</p><br>
          
        </article>
        <!--헤더 영역 종료-->

        <!--검색 영역-->
        <article id="searchArea">
            <select name="search" id="searchSelect"  style="height: 25px;">
                <option value="followerName">회원명</option>
                <option value="trainerName">날짜</option>
                <option value="matchingNumber">금액</option>
                <option value="trainingRoomNum">관리자ID</option>
                <option value="trainingRoomNum">세부내용</option>
                <option value="trainingRoomNum">환급가능여부</option>
                <option value="trainingRoomNum">결제/취소 수단</option>
            </select>
            <input type="search" width="50" style="height: 25px;"><input type="submit" value="검색" id="searchBtn">
        </article>
        <!--검색 영역 종료-->

        <!--정렬 설정 영역-->
        <article id="alignmentArea">
            <select name="alignment" id="alignment">
                <option value="numberAsc">No 순</option>
                <option value="idAsc">ID 순</option>
                <option value="enrollDateDesc">가입일 느린 순</option>
                <option value="nameAsc">이름순</option>
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
        <%--  <form id="fofofo" action="<%= request.getContextPath()%>/QNADetail" method="post">  --%>
            <div align="center">
            <input type="hidden" name="managerId" value="<%=  loginManager.getManagerId() %>">
                <table>
                    <tr>
                        <th width="70px;">No</th>
                        <th width="100px">카테고리</th>
                        <th width="500px;">제목</th>
                        <th width="70px;">작성자</th>
                        <th width="70px;">작성일</th>
                        <th width="70px;">답변상태</th>
                    </tr>
                   
                    <% for(QNA q : list) { %>
				<tr>
				<%-- <input type="hidden" name="manageCode" value="<%=  q.getManageCode() %>"> --%>
					<td><%= q.getManageCode() %></td>
					<td><%= q.getCategory() %></td>
					<td><%= q.getQuestionTitle() %></td>
					<td><%= q.getMemberId() %></td>
					<td><%= q.getDate() %></td>
					<% if(q.getQnaYn().equals("N")){ %>
            		<td><button onclick="detail('<%= q.getManageCode() %>', '<%= loginManager.getManagerId() %>')" style="background-color:orangered; color:white; border:none; width:70px; height:25px;">답변하기</button></td>
         			<% } else {%>
         			<td><button onclick="next" style="background-color:gray; color:white; border:none width:70px; height:25px;" >답변하기</button></td>
					
					<%-- onclick="detail('<%= q.getManageCode() %>')"  --%>
				</tr>
				<%} } %>

                </table>
            </div>
        </article>
        <!--  </form> -->
        <!--테이블 표시 영역 종료-->

       
    </section>
   <!--  <script>
    function next(){
            $("#fofofo").submit();
        
            
         }
    </script> -->
    
    <script>
    
    function detail(manageCode, managerId) {
    	location.href = "<%= request.getContextPath()%>/QNADetail?manageCode="+manageCode;
    }
    </script>  
</body>
</html>