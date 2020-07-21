<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*, com.omg.jsp.trainerCeritificate.model.vo.TrainerCeritificate" %>
<% 
	HashMap<String, Object> hmap = (HashMap<String, Object>) request.getAttribute("information"); 
	ArrayList<TrainerCeritificate> ceritificateList = (ArrayList<TrainerCeritificate>) hmap.get("ceritificate");
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

	<section style="height: 1000px;">
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
								<td><a href="<%=request.getContextPath()%>/select.career.ti"><img src="/omg/resources/button/job/2_n.png" alt=""></a></span></td>
								<td><a href="<%=request.getContextPath()%>/select.prize.ti"><img src="/omg/resources/button/job/3_y.png" alt=""></a></td>
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

					<!-- form  -->
					<form name="form1" id="form1" method="post">

						<h2 style="margin-top: 80px; margin-bottom: 10px;">자격증</h2>
						<hr>
						<p>※자격증은 최대 3개만 노출됩니다.<br>
						※오마이짐 모든 정식트레이너는 생활체육지도사 자격증 제출이 반드시 필요합니다.</p>
						<% 
						int num = 1;
						for(int i = 0; i<3; i++){
						if( i<ceritificateList.size()) { %>
							
						<hr>
						<table style="margin-top: 20px;">

							<thead >
								<th>no.</th>
								<th colspan="5">자격증명</th>
								<th colspan="4">발급기관</th>
								<th colspan="3">자격증발급코드</th>
								<th colspan="4">취득일 </th>
								<th colspan="4">첨부파일 </th>
							</thead>
							<tbody>

								<tr>
									<td style="text-align: center;"><%= num %></td>
									<td colspan="5">
									<select name="jmObligCd" id="jmObligCd_1<%= num %>" style="width: 130px" >
										<option value="" selected="selected">자격증선택</option>
										<option value="생활체육지도사1급">생활체육지도사1급</option>
										<option value="생활체육지도사2급">생활체육지도사2급</option>
										<option value="재활트레이너1급">재활트레이너1급</option>
										<option value="재활트레이너2급">재활트레이너2급</option>
										<option value="기타">기타</option>
									</select>
									</td>
									
									<td colspan="4">
									<input type="text" name="workCts" id="txtCon_1" cols="5" rows="10" style="width: 100px" value="<%= ceritificateList.get(i).getCertiInstitution() %>"></input>
									</td>
									
									<td colspan="3"><input type="text" name="workCts" id="txtCon_1" cols="5" rows="10" style="width: 100px" value="<%= ceritificateList.get(i).getCertiNum()%>"></input></td>
									<td colspan="4">
										<input type="text" name="workStartDt" style="width: 100px"
											maxlength="5" id="workStartDt_1" class="redaTxt dateMask hasDatepicker" value="<%=  ceritificateList.get(i).getCertiDate() %>">
											<button type="button" class="ui-datepicker-trigger">
												<img src="/omg/resources/img_icon/calendar.png" alt="날짜 선택">
											</button>
									</td>
									<td colspan="4"><button onclick="">등록</button></td>
								</tr>
							</tbody>
						</table>
						
						<script>
						$("#jmObligCd_1<%= num %>").val("<%= ceritificateList.get(i).getCertiName()%>").prop("selected", true);
						</script>  
						
						<% num = num+1; }
						   else { %>
						
							<hr>
						<table style="margin-top: 20px;">

							<thead >
								<th>no.</th>
								<th colspan="5">자격증명</th>
								<th colspan="4">발급기관</th>
								<th colspan="3">자격증발급코드</th>
								<th colspan="4">취득일 </th>
								<th colspan="4">첨부파일 </th>
							</thead>
							<tbody>

								<tr>
									<td style="text-align: center;"><%= num %></td>
									<td colspan="5">
									<select name="jmObligCd" id="jmObligCd_1<%= num %>" style="width: 130px" >
										<option value="" selected="selected">자격증선택</option>
										<option value="생활체육지도사1급">생활체육지도사1급</option>
										<option value="생활체육지도사2급">생활체육지도사2급</option>
										<option value="재활트레이너1급">재활트레이너1급</option>
										<option value="재활트레이너2급">재활트레이너2급</option>
										<option value="기타">기타</option>
									</select>
									</td>
									
									<td colspan="4">
									<input type="text" name="workCts" id="txtCon_1" cols="5" rows="10" style="width: 100px" value=""></input>
									</td>
									
									<td colspan="3"><input type="text" name="workCts" id="txtCon_1" cols="5" rows="10" style="width: 100px" value=""></input></td>
									<td colspan="4">
										<input type="text" name="workStartDt" style="width: 100px"
											maxlength="5" id="workStartDt_1" class="redaTxt dateMask hasDatepicker" value="">
											<button type="button" class="ui-datepicker-trigger">
												<img src="/omg/resources/img_icon/calendar.png" alt="날짜 선택">
											</button>
									</td>
									<td colspan="4"><button onclick="">등록</button></td>
								</tr>
							</tbody>
						</table>
						
						<% num = num+1; }} %>
						
						<!-- 자격증 버튼 -->
						<div class="float_box" style="margin-top: 30px;" align="right">
							<div align="right">
								<button type="submit" style="background-color:orangered; color: white; font-weight:bold;  width: 50px; height: 30px">저장</button>
							</div>
						</div>
					</form>





				</div>

			</div>
		</div>
	</section>

	<footer id="foot">
		<%@ include file="../../common/footer.jsp"%>
	</footer>

</body>

</html>