<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.omg.jsp.trainerApplyGrade.model.vo.*, java.util.*"%>
<% ArrayList<Apply> list = (ArrayList<Apply>) request.getAttribute("applylist"); %>	
	
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
    <%@ include file="../../common/managerNav.jsp" %>
    <section>
        <!--헤더 영역-->
        <article id="menuTitleArea">
            <p style="font-weight: bold; font-size: 1.5em; padding-top: 30px; padding-left: 30px;">트레이너 승인요청관리</p>
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
            	<p align="left" style="margin-bottom: 10px; margin-left: 45px; font-size:medium;">※ 승인 시 사유란을 공백으로 반드시 변경<br>※ 거절 시 사유란에 거절사유 반드시 작성<br> </p>
               	<!-- 결과조회 -->
                <table>
                    <tr>
                        <th width="20px;">No</th>
                        <th width="20px;">신청코드</th>
                        <th width="60px;">신청 아이디</th>
                        <th width="60px;">신청일자</th>
                        <th width="60px;">담당자 아이디</th>
                        <th width="60px;">처리일자 </th>
                        <th width="60px;">요청상태</th>
                        <th width="100px;">승인거절사유 </th>
                        <th width="40px;">요청처리</th>
                    </tr>
	                <% int listnum = list.size(); %>
	                <% for(int i=0; i<list.size(); i++){ %>
	                
	                <form name="updateApplyManage" id="updateApplyManage" action="<%=request.getContextPath()%>/update.manager.apply.gd" method = "post">
				 	<tr>
						<td><%= listnum %></td>
						<td><%= list.get(i).getApplyManageCode() %></td>
						<td><%= list.get(i).getTrainerId() %></td>
						<td><%= list.get(i).getApplyDate() %></td>
						<td><%= list.get(i).getManagerId() %></td>
						<td><%= list.get(i).getReplyDate() %></td>
						<td><%= list.get(i).getApplyStatus() %></td>
						<td><textarea name="rejectReason" style="width: 200px; height: 25px; resize: none; "><%= list.get(i).getRejectReason() %></textarea></td>
						<td>
							<button onclick="updatethis(<%=i %>)" style="width: 60px; height: 30px;">승인</button>
							<button onclick="rejectthis(<%=i %>)" style="width: 60px; height: 30px;">거절</button>
						</td>
					</tr>
					
					<input type="hidden" name="applyManageCode" value="<%= list.get(i).getApplyManageCode() %>">
					<input type="hidden" name="applyTrainerId" value="<%= list.get(i).getTrainerId() %>">
					<input type="hidden" name="applyApplyDate" value="<%= list.get(i).getApplyDate() %>">
					<input type="hidden" name="applyReplyDate" value="<%= list.get(i).getReplyDate() %>">
					<input type="hidden" name="applyStatus" value="<%= list.get(i).getApplyStatus() %>">
					<input type="hidden" name="rejectYN" id="rejectYN<%=i %>" value="">
						
				 	</form>
				 	
					<% listnum -= 1;} %>

                </table>
            </div>
        </article>
    </section>
    
    <script type="text/javascript">
	
		function updatethis(idx) {
			
			var name = 'rejectYN'+ idx;
			document.getElementById(name).value = 'agree';
			console.log('rejectYN'+ idx);
		    var result = confirm("정식트레이너 승인처리가 완료되었습니다!");

		}
	
		function rejectthis(idx) {
			
			var name = 'rejectYN'+ idx;
			document.getElementById(name).value = 'reject';
			console.log("'rejectYN'+ idx");
		    var result = confirm("정식트레이너 거절처리가 완료되었습니다!");

		}
		
	</script>
    
</body>
</html>