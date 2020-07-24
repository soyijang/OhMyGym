<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String msg = (String) request.getAttribute("msg"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body style="background-color: lightgray;">
	
	<div align="center" style="margin-top: 200px; border: 3px black;">
		<br><img src="/omg/resources/img/alert.png" style="width: 7%; height: 7%">
   	 	<h1 align="center">오마이짐 페이지 오류안내</h1>
    	<h3 align="center" style="color: gray;"><%= msg%></h3>
    	
    </div>
</body>
</html>