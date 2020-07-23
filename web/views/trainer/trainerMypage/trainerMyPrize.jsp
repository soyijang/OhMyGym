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

	<section style="height: 1200px;">
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
								<td><a href="<%=request.getContextPath()%>/select.career.ti"><img src="/omg/resources/button/job/2_n.png" alt=""></a></span></td>
								<td><a href="<%=request.getContextPath()%>/select.prize.ti"><img src="/omg/resources/button/job/3_y.png" alt=""></a></td>
								<td><a href="<%=request.getContextPath()%>/select.apply.gd"><img src="/omg/resources/button/job/4_n.png" alt=""></a></td>
							</tr>

							<tr>
								<td><span><a href="<%=request.getContextPath()%>/select.ti">학력정보</a></span></td>
								<td><span><a href="<%=request.getContextPath()%>/select.career.ti">경력정보</a></span></td>
								<td><span><a href="<%=request.getContextPath()%>/select.prize.ti">자격증/수상경력</a></span></td>
								<td><span><a href="<%=request.getContextPath()%>/select.apply.gd">인증신청/결과조회</a></span></td>
							</tr>


						</table>
					</div>

					<!-- 입력영역  -->

						<h1 style="margin-top: 80px; margin-bottom: 10px;">자격증</h1>
						<hr>
						<p>※자격증은 최대 3개만 노출됩니다.<br>
						※오마이짐 모든 정식트레이너는 생활체육지도사 자격증 제출이 반드시 필요합니다.</p>
					
						<% 
						for(int i = 0; i<3; i++){
						if( i<ceritificateList.size()) { %>
						
						<form name="updateCerti" id="updateCerti" action="<%=request.getContextPath()%>/update.certi.ti" method="post">
						<div id="certiOne">
						<hr>
						<table style="margin-top: 20px;">
						
							<thead>
								<th>no.</th>
								<th colspan="5">자격증명</th>
								<th colspan="4">발급기관</th>
								<th colspan="3">자격증발급코드</th>
								<th colspan="4">취득일 </th>
								<th colspan="4">첨부파일 </th>
							</thead>
							<tbody>

								<tr>
								<td style="text-align: center;"><%= i %></td>
								<td colspan="5">
								<select name="certiCode" id="certiCode<%=i %>" style="width: 130px" >
									<option value="0" selected="selected">자격증선택</option>
									<option value="1">생활체육지도사1급</option>
									<option value="2">생활체육지도사2급</option>
									<option value="3">재활트레이너1급</option>
									<option value="4">재활트레이너2급</option>
									<option value="5">기타</option>
								</select>
								</td>
									
								<td colspan="4">
								<input type="text" name="certiInstitution" id="certiInstitution" cols="5" rows="10" style="width: 100px" value="<%= ceritificateList.get(i).getCertiInstitution() %>"></input>
								</td>
								
								<td colspan="3"><input type="text" name="certiNum" id="certiNum" cols="5" rows="10" style="width: 100px" value="<%= ceritificateList.get(i).getCertiNum()%>"></input></td>
								<td colspan="4">
									<input type="date" name="certiDate" style="width: 100px"
										maxlength="5" id="certiDate" value="<%= ceritificateList.get(i).getCertiDate() %>">
								</td>
								<td colspan="4">
									<input name="certiFile" id="certiFile" type="file" style="width: 75px;">
								</td>
								</tr>
							</tbody>
						</table>
						
						<!-- 버튼영역 -->
						<div align="right">
							<div onclick="updatethis(<%= i %>)" style="background-color:orangered; color: white; font-weight:bold;  width: 50px; height: 30px; text-align: center;">수정</div>
						</div>
							
						<!-- select용 스크립트 -->
						<script>
						$("#certiCode<%=i %>").val("<%= ceritificateList.get(i).getCertiCode()%>").prop("selected", true);
						</script>  
						
						<!-- 조회된 데이터의 pk전송용 영역 -->	
						<div>
							<input id="saveCertiManageCode" name="saveCertiManageCode" type="hidden" value="<%= ceritificateList.get(i).getCertiManageCode()%>" >
						</div>	
						
						</div>
						</form>
						
						<% }
						   else { %>
						
						<!-- 새로 작성된 데이터 insert용 폼 -->
						<form name="insertCerti" id="insertCerti" action="<%=request.getContextPath()%>/insert.certi.ti" method = "post">
							
						<!-- 새로받는영역 -->
							<hr>
						<table style="margin-top: 20px;">

							<thead>
								<th>no.</th>
								<th colspan="5">자격증명</th>
								<th colspan="4">발급기관</th>
								<th colspan="3">자격증발급코드</th>
								<th colspan="4">취득일 </th>
								<th colspan="4">첨부파일 </th>
							</thead>
							<tbody>

								<tr>
									<td style="text-align: center;"><%= i %></td>
									<td colspan="5">
									<select name="certiCode" id="certiCode" style="width: 130px" >
										<option value="0" selected="selected">자격증선택</option>
										<option value="1">생활체육지도사1급</option>
										<option value="2">생활체육지도사2급</option>
										<option value="3">재활트레이너1급</option>
										<option value="4">재활트레이너2급</option>
										<option value="5">기타</option>
									</select>
									</td>
									
									<td colspan="4">
									<input type="text" name="certiInstitution" id="certiInstitution" cols="5" rows="10" style="width: 100px" value=""></input>
									</td>
									
									<td colspan="3"><input type="text" name="certiNum" id="certiNum" cols="5" rows="10" style="width: 100px" value=""></input></td>
									<td colspan="4">
										<input type="date" name="certiDate" style="width: 100px"
											maxlength="5" id="certiDate" value="">
									</td>
									<td colspan="4">
									<input name="certiFile" id="certiFile" type="file" style="width: 75px;">
									</td>
								</tr>
							</tbody>
						</table>
						
						<!-- 버튼영역 -->
						<div align="right">
							<div onclick="insertthis(<%= i %>)" style="background-color:orangered; color: white; text-align:center; font-weight:bold;  width: 50px; height: 30px">저장</div>
						</div>
						
						<!-- 전송용 영역 -->	
						<div>
							<input id="num" name="num" type="hidden" value="<%= i %>">
						</div>		
						
						</form>
						
						<%  }} %>
						
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
		    var result = confirm("새로운 자격정보가 입력되었습니다!");
 		}
	
		function updatethis(idx) {
			document.forms[idx].submit();
		    var result = confirm("자격정보 수정이 완료되었습니다!");

		}
		
	</script>

</body>

</html>