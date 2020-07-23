<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.omg.jsp.notice.model.vo.Notice, com.omg.jsp.member.model.vo.*"%>
	<% 
		Notice notice = (Notice) request.getAttribute("notice");
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
table {
	border:1px solid gray;
	margin-left: auto;
	text-align: center;
	background: #efefef;
}
td {
	border-bottom: 1px solid gray;
}
caption {
	margin-left: 50%;
}
#text {
	margin-left: 10%;
}
legend { 
	margin-left: 3%;
}
 #searchArea {
    display: inline-block;
    width: 400px;
    position: absolute;
    top: 130px;
    left: 1180px;
    margin: 0;
        }
 #btn1 {
 	width: 80px;
 	height: 30px;
 	background: #1F0076;
 	color: white;
 	border: 0px;
 	
 }

</style>
</head>
<body>

	    <%@ include file="../../common/managerNav.jsp" %> 

	<!--content-->

	<h2 style="margin-left: 250px; margin-top: 40px; font: bold;">공지사항</h2>
	<br>

	<br><br>

	<table>
	<tr>
		<td width="300px" height="50px" style="text-align: left; background:#e3e3e3;"><a id="text">항복구분</a></td>
		<td width="850px" height="50px"><legend align="left"><%=notice.getBoardCategory() %></legend></td>
	</tr>
	<tr>
		<td width="300px" height="80px" style="text-align: left; background:#e3e3e3;"><a id="text">게시일</a></td>
		<td width="850px" height="80px"><legend align="left"><%=notice.getWritedate() %></legend></td>
	</tr>
	<tr>
		<td width="300px" height="50px" style="text-align: left; background:#e3e3e3;"><a id="text">공개상태</a></td>
		<td width="850px" height="50px"><legend align="left"><%=notice.getStatus() %></legend></td>
	</tr>
	
	<tr>
		<td width="300px" height="80px" style="text-align: left; background:#e3e3e3;"><a id="text">제목</a></td>
		<td width="850px" height="90px"><legend align="left">
		<textarea rows="3px" cols="120px" style="resize: none;"><%=notice.getBoardTitle()%></textarea></td>
		</legend>
	</tr>
	<tr>
		<td width="300px" height="100px" style="text-align: left; background:#d1d1d1;"><a id="text">내용작성</a></td>
		<td width="850px" height="100px"><legend align="left">
		<textarea rows="20px" cols="120px" style="resize: none;"><%=notice.getBoardContent()%>
		
		</textarea> </legend>
		</td>
	
	</tr>
	<tr>
		<td width="300px" height="80px" style="text-align: left; background:#e3e3e3;"><a id="text">첨부파일</a></td>
		<td width="850px" height="80px"><legend align="left"><input type="file"></legend></td>
	
	</tr>
	</table>
	<p style="margin-left: 20%;">※ 이미지는 png, jpg 확장자파일만 업로드 가능하며, 최대 100MB 까지만 업로드 가능합니다.</p>

	<div style="text-align: right;">
		<button id="btn1" onclick="history.back(-1)">취소</button>
		&nbsp;&nbsp;&nbsp;
		<%-- <%if(loginUser != null && loginUser.getMemberId().equals("admin01")) {%> --%>
		<button id="btn1" onclick="location.href='<%=request.getContextPath()%>/update.no?num=<%=notice.getBoardNum()%>'">수정</button>
		<%-- <%} %> --%>
	</div>



</body>
</html>