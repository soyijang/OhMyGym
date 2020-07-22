<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*, com.omg.jsp.trainerCareer.model.vo.TrainerCareer"%>
<% 
	HashMap<String, Object> hmap = (HashMap<String, Object>) request.getAttribute("information"); 
	ArrayList<TrainerCareer> careerList = (ArrayList<TrainerCareer>) hmap.get("career");
%>	
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" type="text/css" href="/omg/resources/css/fmypageContainer.css">
	<link rel="stylesheet" type="text/css" href="/omg/resources/css/tjob.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

</head>

<body>

	<section style="height: 1700px;">
		<div class="mypage-contents">
			<%@ include file="trainerMypageAside.jsp"%>
			<div class="right-container">
				<div class="info-container">
					
					<!-- 헤드라인 -->
					<div class="head_article">
						<h3 class="info-header">자격정보/수상내역</h3>
					</div>

					<!-- step이미지표시 -->
					<div class="step" id="rcvStep">
						<table class="list02">
							<tr>
								<td><a href="<%=request.getContextPath()%>/select.ti"><img src="/omg/resources/button/job/1_n.png" alt=""></a></td>
								<td><a href="<%=request.getContextPath()%>/select.career.ti"><img src="/omg/resources/button/job/2_y.png" alt=""></a></span></td>
								<td><a href="<%=request.getContextPath()%>/select.prize.ti"><img src="/omg/resources/button/job/3_n.png" alt=""></a></td>
								<td><a href=""><img src="/omg/resources/button/job/4_n.png" alt=""></a></td>
							</tr>

							<tr>
								<td><span><a href="<%=request.getContextPath()%>/select.ti">학력정보</a></span></td>
								<td><span><a href="<%=request.getContextPath()%>/select.career.ti">경력정보</a></span></td>
								<td><span><a href="<%=request.getContextPath()%>/select.prize.ti">자격증/수상경력</a></span></td>
								<td><span><a href="">인증신청결과</a></span></td>
							</tr>

						</table>
					</div>

						
					<!-- 입력영역 -->
						<div class="tbl_normal diagnosis_step3 mb5" id="aboutCareer">

							<h1  style="margin-top: 80px; margin-bottom: 10px;"> 경력정보</h1>
							<hr>
							<p>※경력정보는 최대 3개만 노출됩니다.<br>※실무종사의 경우 반드시 경력증명서 제출이 필요합니다.<br>※경력증명서 제출이 불가한 경우 '실습'으로 간주합니다.</p>
							<% 
							for(int i=0; i<3; i++){
							if(i < careerList.size()){
							%>
							
							<form name="updateCareer" id="updateCareer" action="<%=request.getContextPath()%>/update.car.ti" method="post">
							<div id="carrerOne">
							<hr>
							<table style="margin-top: 20px;">
								<tbody>
									<tr>
										<th scope="row"><label for="carName">기관명</label></th>
										<td><input type="text" name="carName" id="carName" style="width: 200px" value="<%= careerList.get(i).getCompName()%>">
									</tr>

									<tr>
										<th scope="row"><label for="carField"> 근무분야 </label></th>
										<td colspan="3">
										<select name="carField" id="carField<%=i %>" style="width: 235px" onchange="onChangeJmObligCd(this,1)">
											<option value="" selected="selected">근무분야선택</option>
											<option value="웨이트트레이닝">웨이트트레이닝</option>
											<option value="인터벌트레이닝">인터벌트레이닝</option>
											<option value="서킷트레이닝">서킷트레이닝</option>
											<option value="필라테스">필라테스</option>
											<option value="기타">기타</option>
										</select>
										
										<p class="fieldSel">위 분야에 [ 
										<input type="radio" name="carType" id="carType<%=i %>EMPLOYEE" value="EMPLOYEE"> 
										<label for="carType">실무</label>
										<input type="radio" name="carType" id="carType<%=i %>INTERN" value="INTERN">
										<label for="carType">실습</label>
										 (으)로 종사했습니다.<br>
										 </p>
										</td>
									</tr>
								
									<tr>
										<th scope="row">근무시작</th>
										<td>
											<input type="date" name="startDt" id="startDt" value="<%= careerList.get(i).getEnterDate()%>">
										</td>
										<th scope="row">근무종료</th>
										<td>
											<input type="date" name="endDt" id="endDt" value="<%= careerList.get(i).getResignDate()%>">
										</td>
									</tr>
									
									<!-- 경력증명서 추가 필요 -->
									<tr>
										<th>경력증명서</th>
										<td><input type="file"></td>
									</tr>
									
								</tbody>
							</table>
							
							<!-- 버튼영역 -->
							<div align="right">
								<div onclick="updatethis(<%= i %>)" style="background-color:orangered; color: white; font-weight:bold;  width: 50px; height: 30px; text-align: center;">수정</div>
							</div>
						</div><br>
						
						<!-- select용 스크립트 -->
						<script>
							$("#carField<%= i %>").val("<%= careerList.get(i).getCareerField() %>").prop("selected", true);
							$("#carType<%= i %><%= careerList.get(i).getCareerType() %>").val("<%= careerList.get(i).getCareerType() %>").prop("checked", true);
						</script>  
							
						<!-- 조회된 데이터의 pk전송용 영역 -->	
						<div>
							<input id="saveCarManageCode" name="saveCarManageCode" type="hidden" value="<%=careerList.get(i).getCareerId()%>" >
						</div>			
						
						</form>	
						<% } 
							else { %>
							
						<!-- 새로 작성된 데이터 insert용 폼 -->
						<form name="insertCar" id="insertCar" action="<%=request.getContextPath()%>/insert.car.ti" method = "post">
							
						<!-- 새로받는영역 -->
						<div id="careerSecond" style="display: block;">
							<hr>
								<table style="margin-top: 20px;">
								<tbody>
									<tr>
										<th scope="row"><label for="carName">기관명</label></th>
										<td><input type="text" name="carName" id="carName" style="width: 200px" value="">
									</tr>

									<tr>
										<th scope="row"><label for="carField"> 근무분야 </label></th>
										<td colspan="3">
										<select name="carField" id="carField" style="width: 235px" onchange="onChangeJmObligCd(this,1)">
											<option value="" selected="selected">근무분야선택</option>
											<option value="웨이트트레이닝">웨이트트레이닝</option>
											<option value="인터벌트레이닝">인터벌트레이닝</option>
											<option value="서킷트레이닝">서킷트레이닝</option>
											<option value="필라테스">필라테스</option>
											<option value="기타">기타</option>
										</select>
										
										<p class="fieldSel">위 분야에 [ 
										<input type="radio" name="carType" value="EMPLOYEE"> 
										<label for="carType">실무</label>
										<input type="radio" name="carType" value="INTERN">
										<label for="carType">실습</label>
										 (으)로 종사했습니다.<br>
										 </p>
										</td>
									</tr>
								
									<tr>
										<th scope="row">근무시작</th>
										<td>
											<input type="date" name="startDt" id="startDt" value="">
										<th scope="row">근무종료</th>
										<td>
											<input type="date" name="endDt" id="endDt" value="">
										</td>
									</tr>
									
									<!-- 경력증명서 추가 필요 -->
									<tr>
										<th>경력증명서</th>
										<td><input type="file"></td>
									</tr>
									
								</tbody>
							</table>
							
						<!-- 버튼영역 -->
						<div align="right">
							<div onclick="updatethis(<%= i %>)" style="background-color:orangered; color: white; font-weight:bold;  width: 50px; height: 30px">저장</div>
						</div>
						
						<!-- 전송용 영역 -->	
						<div>
							<input id="num" name="num" type="hidden" value="<%= i %>">
						</div>			
						
						</div><br>
						</form>	
						<%}} %>	
							
					</div>
				</div>
			</div>
		</div>
	</section>

	<footer id="foot">
		<%@ include file="../../common/footer.jsp"%>
	</footer>
	
	<script type="text/javascript">
	
		function insertthis(idx) {
	 		document.forms[idx].submit();
		    var result = confirm("새로운 경력정보가 입력되었습니다!");
 		}
	
		function updatethis(idx) {
			document.forms[idx].submit();
		    var result = confirm("경력정보 수정이 완료되었습니다!");

		}
		
	</script>

</body>

</html>