<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*,com.omg.jsp.followerDiet.model.vo.*, com.omg.jsp.followerHealth.model.vo.*, 
java.text.SimpleDateFormat"%>
<% ArrayList<FollowerDiet> list = (ArrayList<FollowerDiet>) request.getAttribute("list");
	ArrayList<HealthInfo> healthInfoList = (ArrayList<HealthInfo>) request.getAttribute("healthInfoList");
	ArrayList<FoodComponent> foodlistall = (ArrayList<FoodComponent>) request.getAttribute("foodlistall");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/omg/resources/css/daumcommon.css">
<link rel="stylesheet" type="text/css" href="/omg/resources/css/fmypageContainer.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>


<style>

	button {
		width: 130px;
		height: 40px;
		font-size: 18px;
		border: 1px solid lightgray;
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

	thead {
		height: 100px;
		width: 700px;
		background: lightgray;
	}
	tbody,tfoot  td {
		text-align: center;
	}
	#delete,#upload, #back {
		background: #FF3800;
		color: white;
		border: none;
		border-radius: 10px;		
		width: 80px;
	}
	
	button:hover {
		background-color: orangered;
		color: white;
	}
	
	#kcal{
		font-weight: bold;
		font-size: xx-large;
		color: orangered;
	}
	
	#eatsearch,#eatAmount,#eatdate {
			width: 420px;
			height: 40px;
			background: lightgray;
			border-radius: 20px;
			border: none;
			margin: 5px;
			text-align: left;
		}
		
      .dark_bg {
          position: absolute;
          width: 100%;
          height: 100%;
          background: #000;
          filter: alpha(opacity=60);
          opacity: .6;
          -moz-opacity: .6
      }	
        
       .searchFood {
         display: none;
         position: fixed;
         left: 0;
         top: 0;
         width: 100%;
         height: 100%;
         z-index: 10000;
		background: white; 
     }	
	
	.searchFoodBox{
		 position: relative;
         top: 10%;
         width: 635px;
         height: 600px;
         background: #fff;
         margin: 0 auto;
         border-radius: 8px;
         background: #fff;
         border: 1px solid #ccc;
         text-align: center;
	}
}

</style>
</head>
<body>
	
	<br>
	<br>
	
	<section style="height: 1500px;">
	<%@ include file="../../common/followerNav.jsp"%>

	<div class="left-container">
		<div class="class_category_container">
			<div class="title">건강관리</div>
			<ul class="class_category_list" style="height: 230px;">
				<li class="navi-item ">건강정보</li>
				<li class="navi-item ">밥스타그램</li>
			</ul>
		</div>
	</div>

	
	<div class="left-container" style="width: 1080px; margin-left: 30px;" >
		<div class="class_category_container">
			<div class="title">세부 식단관리</div>


	<!-- 캘린더영역 시작 -->
	
	<div id="dietlist" style="display:block; height: 725px; width: 1000px;" align="center">
		<h2 align="center" style="margin: 30px; margin-top: 50px;">
			<!-- 기본칼로리는 kg당 28로 계산  -->
			<%
			int kcal = 28;
			switch(healthInfoList.get(5).getHealthData()){
				case "활동적이지않음" : kcal = 28;
				case "조금활동적" : kcal = 32;
				case "다소활동적" : kcal = 37;
				case "hard" : kcal = 37;
				case "매우활동적" : kcal = 40;
			}
			%>
		
			사전에 입력하신 <b style="color: orangered;">활동량</b>과 현재  <b style="color: orangered;">몸무게</b> <%= healthInfoList.get(1).getHealthData() %> kg 에 맞추어 <br>오마이짐이 권장드리는 
			<%= loginUser.getName() %> 팔로워님의 일 칼로리 섭취량은 <br>  <span id="kcal"><%=  Integer.parseInt(healthInfoList.get(1).getHealthData()) * kcal %></span> Kcal입니다.<br>
			<span style="font-size: small;">※ 현재 활동량은 "<%=healthInfoList.get(5).getHealthData() %>"로 입력되어있습니다. 수정하시겠습니까?</span>
		</h2>
		
		<div id="week">
			<button id="week1" onclick="changeweek2();">1주차</button>
			<button id="week2" onclick="changeweek1();">2주차</button>
			<button id="week3" onclick="changeweek();">3주차</button>
			<button id="week4" onclick="changeweek();">4주차</button>
			<button id="week5" onclick="changeweek();">5주차</button>
		</div>
		
		<div id="week1div">
			<table id="detailfood" style="width: 900px; height: 400px; text-align: center;" >
				<thead>
					<tr>
						<th width="250px">섭취일</th>
						<th width="250px">섭취시간</th>
						<th width="250px">음식명</th>
						<th width="230px">섭취량(g)</th>
						<th width="250px">칼로리(Kcal/100g)</th>
						<th width="250px">탄수화물</th>
						<th width="250px">단백질</th>
						<th width="250px">지방</th>
						<th width="250px">수분</th>
						<th width="250px">식단삭제</th>
					</tr>
				</thead>
					
				<tbody>
					<% 
					int totalKcal = 0; 
					String intakedate = "";
					int intakedates = 0;
					%>
					 <% for(FollowerDiet fd : list) {
					 
					 %>
						<tr>
							<td><%=fd.getIntakeDate() %></td>
							<td><%=fd.getIntekeTime() %></td>
							<td><%=fd.getFoodName() %></td>
							<td><%=fd.getIntakeVolume()%></td>
							<td><%=fd.getFoodCalorie() %></td>
							<td><%=fd.getFoodCarbohydrate() %></td>
							<td><%=fd.getFoodProtein() %></td>
							<td><%=fd.getFoodFat() %></td>
							<td><%=fd.getFoodWater() %></td>
							<td><button style="width: 60px; height: 20px; font-size: small;" 
							onclick="deleteDiet('<%=fd.getDietManageCode()%>');">삭제</button></td>
							<% 
							totalKcal += fd.getIntakeVolume()/100 * Integer.parseInt(fd.getFoodCalorie());
							if(!fd.getIntakeDate().equals(intakedate)){
								intakedate = fd.getIntakeDate();
								intakedates = intakedates+1;
							}
							%>
						</tr>
					<%} %> 
				</tbody>
				
				</table>
			
			<h1 align="right" style="margin-right: 80px;">이번주 총 칼로리 : <%=totalKcal %> kcal</h1>
			<h1 align="right" style="margin-right: 80px;">일 평균 섭취 칼로리 : <%=totalKcal / intakedates%> kcal</h1>
		<!-- 캘린더영역 종료 -->
		
		<!-- 식단조회페이지 버튼영역 -->
		<div style="text-align: right; margin-right: 100px;">
			<button id="upload" onclick="jQuery('.searchFood').fadeIn('slow');"><label>업로드</label></button>
		</div>
		<!-- 버튼영역종료 -->
		</div>
		
		<!-- 삭제용 -->
		<div style="display: none;">
	      	<form id="deleteOneDiet" method="post">
				<input id="savedietCode" name="savedietCode" type="text" >
			</form>
		</div>

		<!-- 2주차 -->		
		<div id="week2div" style="display: none;">
			<table id="detailfood" style="width: 900px; height: 400px; text-align: center;" >
				<thead>
					<tr>
						<th width="250px">섭취일</th>
						<th width="250px">섭취시간</th>
						<th width="250px">음식명</th>
						<th width="230px">섭취량(g)</th>
						<th width="250px">칼로리(Kcal/100g)</th>
						<th width="250px">탄수화물</th>
						<th width="250px">단백질</th>
						<th width="250px">지방</th>
						<th width="250px">수분</th>
						<th width="250px">식단삭제</th>
					</tr>
				</thead>
					
				<tbody>
				</tbody>
				
				</table>
			
			<h1 align="right" style="margin-right: 80px;">이번주 총 칼로리 : 0 kcal</h1>
			<h1 align="right" style="margin-right: 80px;">일 평균 섭취 칼로리 : 0 kcal</h1>
		<!-- 캘린더영역 종료 -->
		
		<!-- 식단조회페이지 버튼영역 -->
		<div style="text-align: right; margin-right: 100px;">
			<button id="upload" onclick="jQuery('.searchFood').fadeIn('slow');"><label>업로드</label></button>
		</div>
		<!-- 버튼영역종료 -->
		</div>
		</div>

		<!-- 입력/검색영역 -->
		<article>
			<div class="searchFood" style=" ">
				<div class="dark_bg" onclick="jQuery('.searchFood').fadeOut('slow')"></div>
				
				<!-- 식단 추가하기 -->
				<form name="insertDiet" id="insertDiet" action="<%=request.getContextPath()%>/insert.diet" method = "post">
					<div class="searchFoodBox">
						<P style="font-size: 20px; border-bottom: 1px solid gray; background: white;">식단 검색하기</P>
						<div >
							<br>
							
							<!-- 식단시간구분 -->
							<div align="center">
								<input type="date" name="eatdate" id="eatdate" placeholder="섭취일" style="text-align: center;">
								<input type="search" name="eatsearch" id="eatsearch" placeholder="음식 검색" style="text-align: center;">
								<table style="text-align: center;">
									<tr>
										<td><input name="eattime" onclick="check_only(this);" type="checkbox" value="아침">아침</td>
										<td><input name="eattime" onclick="check_only(this);" type="checkbox" value="점심">점심</td>
										<td><input name="eattime" onclick="check_only(this);" type="checkbox" value="저녁">저녁</td>
										<td><input name="eattime" onclick="check_only(this);" type="checkbox" value="간식">간식</td>
										<td><input name="eattime" onclick="check_only(this);" type="checkbox" value="야식">야식</td>
									</tr>
								</table>
							</div>			
								
							<!-- 식단 전체 리스트출력 -->		
							<div align="center" style="max-height:250px; overflow-y:scroll;">
							
								<!-- 전체리스트 출력 -->
								<table id="food">
								<% for(FoodComponent fd : foodlistall) {%>	
									<tr>
										<td width="150px" height="50px" style="text-align: center;"><%=fd.getFoodName() %></td>
										<td width="250px" style="text-align: center;"><%=fd.getFoodCalorie() %>kcal(100g)</td>
										<td><input type="checkbox"></td>
									</tr>
								<%} %> 
								</table>
								
								
								<!-- 검색리스트 출력 -->
								<table id="food2" style="display: none;" >
								</table>
								
								
								<br><br>
							</div>
						
							<!-- 버튼선택영역 -->
							<div id="selecbutton">
								<input type="number" name="eatAmount" id="eatAmount" placeholder="섭취량 입력" style="text-align: center;">
								<br>
								<button id="selec">선택 완료</button>
							</div>
							
						</div>
					</div>
				</form>
				
				
				
				
			</div>
		</article>
		<!-- 입력/검색영역 종료 -->
		
		</div>
	</div>
	</section>
		
	<footer>
	<%@ include file="../../common/footer.jsp"%>
	</footer>
	
	
	<!-- 중복체크불가 -->
	<script type="text/javascript">
		function check_only(chk){
				  
		    var obj = document.getElementsByName("eattime");
		    for(var i=0; i<obj.length; i++){
			      if(obj[i] != chk){
			      obj[i].checked = false;
		      	  }
			   }
		}
		
		
		
		$('#eatsearch').keyup(function () {
			
			var inputname = $('#eatsearch').val();
			var intakeFoodName = 0;
			var intakeFoodCalorie = 0;
			var intakeFoodCode = 0;
			var intakeFoodCarbohydrate = 0;
			var intakeFoodProtein = 0;
			var intakeFoodFat = 0;
			var intakeFoodWater = 0;
			
			
			$('#eatsearch').val();
			 $.ajax({
	            	url : "/omg/SelectFoodComponent.no",
	                type : 'post',
	                data : {
	                	inputname : inputname
	                },
	               success : function(data) {
	            	   if(data != null){
	            		   
		            	   $('#food').text(data.userId);
		            	   $('#food').css("display","none");
		            	   $('#food2').css("display","block");
	
			              var addPostPart = $('#food2');
		            	  addPostPart.children().remove();
		            	  
		            	  var num =0;
		            	  
		            	   for(var key in data){
		            		   
		            		   addPostPart.prepend("<tr><td id='resultAreaName' width='150px' height='50px' style='text-align: center;'>"+ data[key].foodName+"</td>"+
		            		  "<td id='resultAreaKcal' width='250px' style='text-align: center;'>"+ data[key].foodCalorie +"</td><td><input name='updateOneDiet' id='updateOneDiet' onclick='check();' type='checkbox'></td>"+
		            		  " </tr>"
		            			);
		            		   
		            		   num = num+1;
		            		   
			                  /*  
			            	 	intakeFoodName = data.get(i).foodName;
			            		intakeFoodCalorie = data.foodCalorie;
			        			intakeFoodCode = data.foodCode;
			        			intakeFoodCarbohydrate = data.foodCarbohydrate;
			        			intakeFoodProtein = data.foodProtein;
			        			intakeFoodFat = data.foodFat;
			        			intakeFoodWater = data.foodWater; */
		            	   }
	            	   }
	 				},
	 				error : function(){
	 		           $('#eatsearch').text('검색결과가 없습니다.');
	 				}
	            }) 
			
		})
		
		
		function changeweek1() {
			var con = document.getElementById("week1div");
			var con2 = document.getElementById("week2div");
			
			if (con2.style.display == 'none') {
				con.style.display = 'none';
				con2.style.display = 'block';
			}
		}
		
		function changeweek2() {
			var con = document.getElementById("week2div");
			var con2 = document.getElementById("week1div");
			
			if (con2.style.display == 'none') {
				con.style.display = 'none';
				con2.style.display = 'block';
			}
		}
		
		
		/* 식단 삭제용 */
		function deleteDiet(mngCode) {
			
			var mngCode = mngCode;
			document.getElementById("savedietCode").value = mngCode;
			
			alert("식단정보 삭제가 완료되었습니다!");
			$("#deleteOneDiet").attr("action","<%= request.getContextPath() %>/deleteOne.dt");
			$("#deleteOneDiet").submit();
			
		}
		
/* 		
		선택완료 
		$('#selec').onclick(function () {
			
			var foodName = $('#resultAreaName').val();
			var foodKcal = $('#resultAreaKcal').val();
			var eatAmount = $('#eatAmount').val();
			var eatdate = $('#eatdate').val();
			var eattime = $('#eattime').val();
			
			$ajax({
				
		    	url : "/omg/selectList.diet",
                type : 'post',
                data : {
                	foodName : foodName,
                	foodKcal : foodKcal,
                	eatAmount : eatAmount
                },
               success : function(data) {
            	   if(data != null){
            		   
	            	   }
 				},
 				error : function(){
 					
 				}
				
				
			});
			
			
			
		})
		
		
		 */
		 
	</script>


</body>
</html>			
			