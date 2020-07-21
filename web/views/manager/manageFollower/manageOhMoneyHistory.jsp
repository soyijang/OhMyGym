<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.util.*" import="com.omg.jsp.ohmoney.model.vo.OhMoney"%>
<% ArrayList<OhMoney> list = (ArrayList<OhMoney>) request.getAttribute("ohMoneyList");%>
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
            <p style="font-weight: bold; font-size: 1.5em; padding-top: 30px; padding-left: 30px;">OH머니 전체내역</p>
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
        <article id="alignmentArea">
            <select name="alignment" id="alignment">
                <option value="trainingDate">No 순</option>
                <option value="matchingNumDesc">ID 순</option>
                <option value="matchingNumAsc">금액 순</option>
                <option value="enrollDateDesc">날짜 순</option>
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
                        <th width="100px;">팔로워ID</th>
                        <th width="50px">내역구분</th>
                        <th width="70px;">금액</th>
                        <th width="80px;">날짜</th>
                        <th width="80px;">시간</th>
                        <th width="70px;">관리자ID</th>
                        <th width="170px;">세부내용</th>
                        <th width="80px;">환급가능여부</th>
                        <th width="80px;">결제/취소 수단</th>
                        <th width="80px">상세정보</th>
                    </tr>
                    <% int listnum = list.size(); %>
                    <% for(int i = 0; i < list.size(); i++) {%>
	                    <tr>
	                        <td><%=listnum%></td>
	                        <td><%=list.get(i).getUserId()%></td>
	                        <td><%=list.get(i).getOhmoneyType()%></td>
	                        <td><%=list.get(i).getOhmoneyAmount()%></td>
	                        <td><%=list.get(i).getOhmoneyDate()%></td>
	                        <td><%=list.get(i).getOhmoneyTime()%></td>
	                        <td><%=list.get(i).getManagerId() %></td>
	                        <td><%=list.get(i).getContent() %></td>
	                        <td><%=list.get(i).getIsRefund() %></td>
	                        <td><%=list.get(i).getOhmoneyMean()%></td>
	                        <td><button class="btn" id="infoBtn" onclick="">상세정보</button></td>
	                    </tr>
                    <% listnum = listnum - 1; } %>
                </table>
            </div>
        </article>
        <!--테이블 표시 영역 종료-->

		<script>
		
		
		</script>
    </section>
</body>
</html>