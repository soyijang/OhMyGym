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
		#eatsearch {
			width: 420px;
			height: 40px;
			background: lightgray;
			border-radius: 20px;
			border: none;
			margin: 10px;
			text-align: left;
		}
		#food {
			padding: 10px;
		}
		#food td {
			border-bottom: 1px solid lightgray;
		}
		#selec {
			border: 1px solid gary;
			box-shadow: 0 2px 2px 0 rgba(0,0,0,0.2), 0 2px 2px 0 rgba(0,0,0,0.15);
			width: 100px;
			height: 40px;
			border-radius: 5px;
		}
		#selecbutton{
			text-align: center;
			margin-top: 20px;
		}
		
	
	</style>

</head>
<body>

	<div class="left-container"
			style="width: 500px; margin:30px; text-align: left; background: white;">
				<P style="font-size: 20px; border-bottom: 1px solid gray; background: white;">식단 검색하기</P>
				<input type="search" name="search" id="eatsearch" placeholder="&nbsp;&nbsp;&nbsp;먹은 음식 검색">
				
			<div style="border: 1px solid gray;">
			<table id="food">
				<tr>
					<td width="150px" height="50px" style="text-align: center;">떡만두국</td>
					<td width="250px" style="text-align: center;">519 Kcal(1인분)</td>
					<td><input type="checkbox"></tds>
				</tr>
				<tr>
					<td width="150px"  height="50px" style="text-align: center;">밥</td>
					<td width="250px" style="text-align: center;">300 Kcal(1인분)</td>
					<td><input type="checkbox"></tds>
				</tr>
				<tr>
					<td width="150px" height="50px" style="text-align: center;">잡곡밥</td>
					<td width="250px" style="text-align: center;">352 Kcal(1인분)</td>
					<td><input type="checkbox"></tds>
				</tr>
				<tr>
					<td width="150px" height="50px" style="text-align: center;">햇반</td>
					<td width="250px" style="text-align: center;">280 Kcal(1인분)</td>
					<td><input type="checkbox"></tds>
				</tr>
				
			</table>
			
			<br>
			<div style="text-align: right;">
				
			</div>
			<P style="border-bottom: 1px solid lightgray; background: white;">
			&nbsp;&nbsp;<mark style="background: white; color: orangered;">선택한 식단</mark></P>
				
			<table id="food">
				<tr>
					<td width="150px" height="50px" style="text-align: center;">떡만두국</td>
					<td width="250px" style="text-align: center;">519 Kcal(1인분)</td>
					<td><input type="checkbox"></tds>
				</tr>
				</table>
				<br><br>
		</div>
		<div id="selecbutton">
		<a href='javascript:self.close();'><button id="selec">선택 완료</button></a>
		</div>
</body>
</html>