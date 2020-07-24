<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.omg.jsp.trainerSalary.model.vo.*, java.util.*"%>
<% ArrayList<Salary> list = (ArrayList<Salary>) request.getAttribute("salarylist"); %>	
    
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
            left: 820px;
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
    <%@ include file="../../common/managerNav.jsp" %>
    <section>
        <!--헤더 영역-->
        <article id="menuTitleArea">
            <p style="font-weight: bold; font-size: 1.5em; padding-top: 30px; padding-left: 30px;">비용지급관리</p>
        </article>
        <!--헤더 영역 종료-->

        <!--검색 영역-->
        <article id="searchArea">
            <select name="search" id="searchSelect">
                <option value="trainerId">트레이너ID</option>
                <option value="trainerName">회원명</option>
                <option value="matchingNumber">이메일</option>
                <option value="trainingRoomNum">연락처</option>
                <option value="trainingRoomNum">총 금액</option>
                <option value="trainingRoomNum">회당 수업료</option>
                <option value="trainingRoomNum">지급여부</option>
            </select>
            <input type="search" width="50"><input type="submit" value="검색" id="searchBtn">
        </article>
        <!--검색 영역 종료-->
        <!--정렬 설정 영역-->
        <article id="alignmentArea">
			<button class="btn" id="monthBtn" onclick="">내역서 일괄다운로드</button>
            <select name="alignment" id="alignment">
                <option value="trainingDate">No 순</option>
                <option value="matchingNumDesc">ID 순</option>
                <option value="matchingNumAsc">금액 순</option>
                <option value="enrollDateDesc">날짜 순</option>
                <option value="enrollDateDesc">지급여부</option>
                <option value="enrollDateDesc">이의신청여부</option>
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
                        <th width="30px;">선택</th>
                        <th width="30px;">No</th>
                        <th width="40px;">관리코드</th>
                        <th width="60px;">트레이너ID</th>
                        <th width="50px;">회원 등급</th>
                        <th width="60px;">회당 수업료</th>
                        <th width="30px;">지급월</th>
                        <th width="50px;">수업횟수</th>
                        <th width="60px;">총 금액</th>
                        <th width="60px;">세액(3.3%)</th>
                        <th width="60px;">최종금액</th>
                        <th width="40px">지급여부</th>
                        <th width="50px">회원상세정보</th>
                        <th width="50px">정산내역서</th>
                        <th width="50px">비용지급확인</th>
                    </tr>
                    
                    <% int listnum = list.size(); %>
	                <% for(int i=0; i<list.size(); i++){ %>
                    
                    <form name="updateSalaryManage" id="updateSalaryManage" action="<%=request.getContextPath()%>/update.manager.salary.gd" method = "post">
				 	<tr>
				 	
				 	<!-- 밥먹고와서 총액, 세액 JSP로계산해야함  -->
				 	<%
				 	double totalFee = list.get(i).getLevelFee() * list.get(i).getTrainingTimes();
				 	double tax = list.get(i).getLevelFee() * list.get(i).getTrainingTimes() * 33/1000 ;
				 	double finalFee = totalFee - tax ;
				 	%>
				 	
                        <td><input type="checkbox"></td>
                        <td><%= listnum %></td>
                        <td><%= list.get(i).getSalaryManageCode() %></td>
                        <td><%= list.get(i).getTrainerId() %></td>
                        <td><%= list.get(i).getLevelName() %></td>
                        <td><%= list.get(i).getLevelFee() %>원</td>
                        <td><%= list.get(i).getSalaryMonth() %>월</td>
                        <td><%= list.get(i).getTrainingTimes() %>회</td>
                        <td><%= totalFee %>원</td>
                        <td><%= tax %>원</td>
                        <td><%= finalFee %>원</td>
                        <td><%= list.get(i).getPayYN() %></td>
                        <td><div onclick="">상세정보</div></td><!-- 트레이너 상세정보로 이동 -->
	                    <td><div onclick="">다운로드</div><!-- 정산내역서 엑셀로 다운 -->
                        <td><button onclick="ok()">비용지급확인</button></td>
	                    </td>
                    </tr>
                    
                    <input type="hidden" name="salaryManageCode" value="<%= list.get(i).getSalaryManageCode() %>">
                    
                    </form>
                    <% listnum -= 1;} %>
                    
                </table>
            </div>
        </article>
    </section>
    
     <script type="text/javascript">
	
		function ok() {
			alert('비용지급처리가 완료되었습니다!');
		}
		
	</script>
    
    
</body>
</html>