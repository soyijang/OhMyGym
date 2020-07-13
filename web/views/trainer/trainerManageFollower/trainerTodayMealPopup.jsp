<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="/omg/resources/css/daumcommon.css">
<link rel="stylesheet" type="text/css"
	href="/omg/resources/css/fmypageContainer.css">
	
	<style>
		.save {
			float: right;
			margin-right: 10px;
			margin-top: 10px;
			clear: both;
		}
	
	</style>

</head>
<body>

	<div class="left-container"
			style="width: 500px; margin:30px; text-align: center; background: lightgray">
				<P style="font-size: 20px; border-bottom: 1px solid gray; background: white;">트레이너의 관리</P>
			<br>
			<br>
			<div style="border: 1px solid gray;">
			
			<table>
				<tr>
					<th width="30px">4</th>
					<th width="500px" style="text-align: center;">오늘 저녁식단에 개선이 필요합니다.</th>
					<th><input type="date"></th>
				</tr>
			</table>
			<hr style="border-bottom-color: gray;">
			<div>
				<p style="text-align: left; margin: 10px;">
				<br><br>
						회원님 지나친 스트레스로 저녁에 치킨을 드셨군요...<br>
						오늘 저녁식단에 개선이 필요합니다.<br>
						회원님은 현재 다이어트중이시니 식단 조절이 필요합니다.<br><br>
				</p>
			
			</div>
			<hr style="border-bottom-color: gray;">
			<div>
			
				<div><input type="text" style="margin:10px; width: 300px;height: 70px;">
					<a href=""><img src="../../resources/img/Group 356save.png" class="save" style="width: 90px; height: 75px;"></a>
				</div>
			</div>
			
			</div>
			<br>
			<div style="text-align: right;">
				<a href='javascript:self.close();'>목록보기</a>
			</div>
			
		</div>

</body>
</html>