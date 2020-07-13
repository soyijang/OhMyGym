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

	button {
		width: 130px;
		height: 40px;
		font-size: 18px;
		border: 1px solid lightgray;
		margin-top: 20px;
		margin-left: 30px;
		cursor: pointer;
		
	}
	#breakfast {
		background: #FF3800;
		color: white;
	}
	#detailfood {
		width: 1150px;
		padding: 30px;
	}
	#detailfood td {
		border: 1px solid gray;
	}
	thead {
		height: 100px;
		width: 700px;
		background: lightgray;
	}
	tbody,tfoot  td {
		text-align: center;
	}
	#delete,#upload {
		background: #FF3800;
		color: white;
		border: none;
		border-radius: 10px;		
		width: 80px;
	}
	

</style>
</head>
<body>
	<br>
	<br>
	<%@ include file="../../common/followerNav.jsp"%>


	<div class="left-container">
		<div class="class_category_container">
			<div class="title">건강관리</div>
			<ul class="class_category_list" style="height: 630px;">
				<li class="navi-item ">건강정보</li>
				<li class="navi-item ">밥스타그램</li>
			</ul>
		</div>
	</div>

	<div class="left-container" style="width: 1080px; margin-left: 30px;">
		<div class="class_category_container">
			<div class="title">세부 식단관리</div>
		</div>
	</div>
	<br><br><br>

	<div>
		<button id="breakfast" onclick="">아침</button>
		<button id="lunch" onclick="">점심</button>
		<button id="dinner" onclick="">저녁</button>
	
	</div>

		<table id="detailfood">
		<thead>
			<tr>
				<th width="250px">사진</th>
				<th width="230px">섭취기록</th>
				<th width="250px">칼로리(Kcal)</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td rowspan="4"><img width="250" height="150" src="../../resources/img/image 110tomato.png"></td>
				<td rowspan="1">토마토 1개</td>			
				<td rowspan="1">10kcal</td>			
			</tr>
			<tr>
				<td>&nbsp;</td>			
				<td>&nbsp;</td>			
			</tr>
			<tr>
				<td>&nbsp;</td>			
				<td>&nbsp;</td>			
			</tr>
			<tr>
				<td>&nbsp;</td>			
				<td>&nbsp;</td>			
			</tr>
			<tr>
				<td rowspan="4"><img width="250" height="150" src="../../resources/img/image 111gogi.png"></td>
				<td>닭가슴살 1개</td>
				<td>250kcal</td>
			<tr>
				<td>&nbsp;</td>			
				<td>&nbsp;</td>			
			</tr>
			<tr>
				<td>&nbsp;</td>			
				<td>&nbsp;</td>			
			</tr>
			<tr>
				<td>&nbsp;</td>			
				<td>&nbsp;</td>			
			</tr>
			
		</tbody>
		<tfoot>
			<tr>
				<td></td>
				<td>총 칼로리</td>
				<td>500kcal</td>
			</tr>
			
		</tfoot>
		
		</table>
		<br><br>
		
		<div style="text-align: right; margin-right: 120px;">
		<button id="delete"><label>삭제</label></button>
		<button id="upload"><label>업로드</label></button>
		</div>
		<br><br><br>

		<%@ include file="../../common/footer.jsp"%>
</body>
</html>