<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오마이짐 관리자 페이지</title>
    <style>
    #title{
    	margin-left: 250px;
    	margin-top: 60px;
    }
    #information{
    	margin-left: 250px;
    	border: 1px solid black;
    	text-align: center;
    }
    th, td {
    	text-align: center;
    	padding: 20px;
    	border: thin solid black;
    }
    thead {
            background:gray;
        }
    tbody {
            background:white;
        }
   
    </style>
</head>
<body>

    <%@ include file="../../common/managerNav.jsp"%>
    
    <!-- 헤더영역 -->
    <article id="title"><h2>식단페이지 관리</h2></article><br><br>
    <!-- 해더 종료 -->
    
    <div id="informationtable">
    	<table id="information">
    		<thead>
    		<tr>
    			<th colspan="2" width="400px">회원정보</th>
    			<th colspan="2" width="400px">담당트레이너 정보</th>
    			<th colspan="2" width="400px">프로그램정보</th>
    		</tr>
    		</thead>
    		<tr>
    			<td width="150px" style="background: gray">회원번호</td>
    			<td width="250px">116</td>
    			<td width="150px" style="background: gray">트레이너번호</td>
    			<td width="250px">16</td>
    			<td width="150px" style="background: gray">시작일/종료일</td>
    			<td width="250px">
    				<input type="date"><a>&nbsp;&nbsp;~&nbsp;&nbsp;</a>
    			</td>
    		
    		</tr>
    		<tr>
    			<td width="150px" style="background: gray">아이디</td>
    			<td width="250px">jin-14</td>
    			<td width="150px" style="background: gray">아이디</td>
    			<td width="250px">k_mmd</td>
    			<td width="150px" style="background: gray">관리요일(시간)</td>
    			<td width="250px">
    				<input type="date"><a>&nbsp;&nbsp;~&nbsp;&nbsp;</a>
    			</td>
    		
    		</tr>
    		<tr>
    			<td width="150px" style="background: gray">회원명</td>
    			<td width="250px">김진오</td>
    			<td width="150px" style="background: gray">트레이너명</td>
    			<td width="250px">김진우</td>
    			<td width="150px" style="background: gray">회차</td>
    			<td width="250px">1/8</td>
    		
    		</tr>
    		
    	</table>
    	
    	 <article id="title"><h2>식단관리 정보</h2></article><br><br>
    	 
    	 <table id="information">
    	 <tbody>
    	 	<tr>
    	 			<td width="200px" style="background: gray">날짜</td>
    	 			<td width="200px"><input type="date"></td>
    	 			<td width="200px" style="background: gray">분류</td>
    	 			<td width="200px">저녁</td>
    	 			<td width="200px" style="background: gray">회차</td>
    	 			<td width="200px">1/8</td>
    	 	
    	 	</tr>
    	 	<tr>
    	 			<td height="200px" style="background: gray">식단입력내용</td>
    	 			<td colspan="5"><input type="date"></td>
    	 	</tr>
    	 	<tr>
    	 		<td style="background: gray">트레이너 확인여부</td>
    	 		<td colspan="2">Y</td>
    	 		<td style="background: gray">코멘트입력시간</td>
    	 		<td colspan="2"><input type="date"></td>
    	 	</tr>
    	 	<tr>
    	 		<td style="background: gray">트레이너코멘트</td>
    	 		<td colspan="5"></td>
    	 	</tr>
    	 	
    	 	</tbody>
    	 </table>
    
    </div>
    
    
       
</body>
</html>






