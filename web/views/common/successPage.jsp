<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String successCode = (String) request.getAttribute("successCode"); %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<script>
		(function() {
			var successCode = "<%= successCode %>";
			
			var successMessage = "";
			var movePath = "";
			
			switch(successCode) {
			case "insertMember" : 
				successMessage = "회원 가입이 성공하셨습니다."
				movePath = "<%= request.getContextPath() %>";
				break;
			}
			
			alert(successMessage);
			
			location.href = movePath;
		})
		
	</script>

</body>
</html>