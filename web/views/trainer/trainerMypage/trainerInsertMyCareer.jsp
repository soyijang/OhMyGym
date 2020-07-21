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

					<div class="head_article">
						<h3 class="info-header">자격정보/수상내역</h3>
					</div>

					<!-- step -->
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

						
					<!-- form -->
					<form name="form1" id="form1" method="post">
						<div class="tbl_normal diagnosis_step3 mb5" id="aboutCareer">

							<h1  style="margin-top: 80px; margin-bottom: 10px;"> 경력정보</h1>
							<hr>
							<p>※경력정보는 최대 3개만 노출됩니다.</p>
							
							<% 
							int num = 0;
							for(int i=0; i<3; i++){
							if(i < careerList.size()){
							%>
							
							<hr>
							<table class="" style="margin-top: 20px;">
								<tbody>
									<tr>
										<th scope="row"><label for="compNm_1">업체명<br>(기관명)</label></th>
										<td><input type="text" name="compNm" id="compNm_1" style="width: 200px" value="<%= careerList.get(i).getCompName()%>">
									</tr>

									<tr>
										<th scope="row"><label for="jmObligCd_1"> 근무분야 </label></th>
										<td colspan="5">
										<select id="career<%=num %>" style="width: 235px" onchange="onChangeJmObligCd(this,1)">
											<option value="" selected="selected">근무분야선택</option>
											<option value="웨이트트레이닝">웨이트트레이닝</option>
											<option value="인터벌트레이닝">인터벌트레이닝</option>
											<option value="서킷트레이닝">서킷트레이닝</option>
											<option value="필라테스">필라테스</option>
											<option value="기타">기타</option>
										</select>
										
										<p class="fieldSel">위 분야에 [ 
										<input type="checkbox" name="chkSameJob" id="chkSameJob_1" value="Y" checked="checked"> 
										<label for="chkSameJob_1">실무</label>
										<input type="checkbox" name="chkSameClass" id="chkSameClass_1" value="Y">
										<label for="chkSameClass_1">실습</label>
										 (으)로 종사했습니다.<br>
										<strong>※실무종사의 경우 반드시 경력증명서 제출이 필요합니다.<br>※경력증명서 제출이 불가한 경우 '실습'으로 간주합니다.</strong></p>
										</td>
									</tr>
								
									<tr>
										<th scope="row">근무시작</th>
										<td>
											<input type="text" name="workStartDt" id="workStartDt_1" value="<%= careerList.get(i).getEnterDate()%>">
											<button type="button" class="ui-datepicker-trigger">
											<img src="/omg/resources/img_icon/calendar.png" alt="날짜 선택" title="날짜 선택">
											</button>
										</td>
										<th scope="row"><span id="titleworkEndDt_1"> 근무종료 </span></th>
										<td class="calendar"><input type="text" name="workEndDt" id="workEndDt_1" value="<%= careerList.get(i).getResignDate()%>">
											<button type="button" class="ui-datepicker-trigger">
											<img src="/omg/resources/img_icon/calendar.png" alt="날짜 선택"
													title="날짜 선택">
											</button>
										</td>
									</tr>
									
									<tr>
										<th>경력증명서</th>
										<td><input type="file"></td>
									</tr>
								</tbody>
							</table>
						<script>
							$("#career<%=num %>").val("<%= careerList.get(i).getCareerField() %>").prop("selected", true);
							</script>  
						<%  num = num+1; } 
							else { %>
							
						<!-- 새로받는영역 -->
													<hr>
							<table class="" style="margin-top: 20px;">
								<tbody>
									<tr>
										<th scope="row"><label for="compNm_1">업체명<br>(기관명)</label></th>
										<td><input type="text" name="compNm" id="compNm_1" style="width: 200px" value="">
									</tr>

									<tr>
										<th scope="row"><label for="jmObligCd_1"> 근무분야 </label></th>
										<td colspan="5">
										<select id="career" style="width: 235px" onchange="onChangeJmObligCd(this,1)">
											<option value="" selected="selected">근무분야선택</option>
											<option value="웨이트트레이닝">웨이트트레이닝</option>
											<option value="인터벌트레이닝">인터벌트레이닝</option>
											<option value="서킷트레이닝">서킷트레이닝</option>
											<option value="필라테스">필라테스</option>
											<option value="기타">기타</option>
										</select>
										
										<p class="fieldSel">위 분야에 [ 
										<input type="checkbox" name="chkSameJob" id="chkSameJob_1" value="Y"> 
										<label for="chkSameJob_1">실무</label>
										<input type="checkbox" name="chkSameClass" id="chkSameClass_1" value="Y">
										<label for="chkSameClass_1">실습</label>
										 (으)로 종사했습니다.<br>
										<strong>※실무종사의 경우 반드시 경력증명서 제출이 필요합니다.<br>※경력증명서 제출이 불가한 경우 '실습'으로 간주합니다.</strong></p>
										</td>
									</tr>
								
									<tr>
										<th scope="row">근무시작</th>
										<td>
											<input type="text" name="workStartDt" id="workStartDt_1" value="">
											<button type="button" class="ui-datepicker-trigger">
											<img src="/omg/resources/img_icon/calendar.png" alt="날짜 선택">
											</button>
										</td>
										<th scope="row"><span id="titleworkEndDt_1"> 근무종료 </span></th>
										<td class="calendar"><input type="text" name="workEndDt" id="workEndDt_1" value="">
											<button type="button" class="ui-datepicker-trigger">
											<img src="/omg/resources/img_icon/calendar.png" alt="날짜 선택"
													title="날짜 선택">
											</button>
										</td>
									</tr>
									
									<tr>
										<th>경력증명서</th>
										<td><input type="file"></td>
									</tr>
								</tbody>
							</table>
						<%}} %>	
							
						</div>
					</form>
					<div align="right">
						<button type="submit" style="background-color:orangered; color: white; font-weight:bold;  width: 50px; height: 30px">저장</button>
					</div>
				</div>
			</div>
		</div>
	</section>

	<footer id="foot">
		<%@ include file="../../common/footer.jsp"%>
	</footer>
	
	<script>

	
	
	</script>

</body>

</html>