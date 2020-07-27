<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,com.omg.jsp.followerDiet.model.vo.*"%>
 <%	ArrayList<FoodComponent> foodlist = (ArrayList<FoodComponent>) request.getAttribute("foodlist");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="/omg/resources/css/daumcommon.css">
<link rel="stylesheet" type="text/css"
	href="/omg/resources/css/fmypageContainer.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>	
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
	<!-- 	//안씀 -->
	<div class="left-container" style="width: 500px; margin:30px; text-align: left; background: white;">
	
		<P style="font-size: 20px; border-bottom: 1px solid gray; background: white;">식단 검색하기</P>
		<div style="border: 1px solid gray;">
			<br>
			<!-- 식단시간구분 -->
			<div>
				<input type="search" name="search" id="eatsearch" placeholder="음식 검색" style="text-align: center;">
				<table style="text-align: center;">
					<tr>
						<td><input type="checkbox">아침</td>
						<td><input type="checkbox">점심</td>
						<td><input type="checkbox">저녁</td>
						<td><input type="checkbox">간식</td>
						<td><input type="checkbox">야식</td>
					</tr>
				</table>
			</div>			
				
			<!-- 식단 전체 리스트출력 -->		
			<div style="text-align: right; max-height:250px; overflow-y:scroll;">
				<table id="food">
				<% for(FoodComponent fd : foodlist) {%>	
					<tr>
						<td width="150px" height="50px" style="text-align: center;"><%=fd.getFoodName() %></td>
						<td width="250px" style="text-align: center;"><%=fd.getFoodCalorie() %>kcal(1인분)</td>
						<td><input type="checkbox"></td>
					</tr>
				<%} %> 
				</table>
				<br><br>
				
			</div>
			
		</div>
		<div id="selecbutton">
		<input type="number" name="search" id="eatsearch" placeholder="섭취량 입력" style="text-align: center;">
		<button id="select">선택 완료</button>
		</div>
		</div>
		<%-- 
		 <script>

     
    $(function() {
       $("#food td").click(function(){
          var num = $(this).parent().children().eq(0).text();
         
         location.href="<%=request.getContextPath()%>/selectOne.no?num="+num;
         
       });
    }); 
   
    
   </script> --%>
</body>
</html>