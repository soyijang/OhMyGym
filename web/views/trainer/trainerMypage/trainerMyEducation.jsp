<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*, com.omg.jsp.trainerEducation.model.vo.*" %>
<% 
	HashMap<String, Object> hmap = (HashMap<String, Object>) request.getAttribute("information"); 
	ArrayList<TrainerEducation> educationList = (ArrayList<TrainerEducation>) hmap.get("education");
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

	<section style="height: 1500px;">
		<div class="mypage-contents">
			<%@ include file="trainerMypageAside.jsp"%>
			
			<div class="right-container">
				<div class="info-container">
				
					<!-- 헤드라인 -->
					<div class="head_article">
						<h3 class="info-header">자격정보/수상내역</h3>
					</div>

					<!-- step이미지 표시 -->
					<div class="step" id="rcvStep">
						<table class="list02">
							<tr>
								<td><a href="<%=request.getContextPath()%>/select.ti"><img src="/omg/resources/button/job/1_y.png" alt=""></a></td>
								<td><a href="<%=request.getContextPath()%>/select.career.ti"><img src="/omg/resources/button/job/2_n.png" alt=""></a></td>
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
					<div class="tbl_normal diagnosis_step3 mb5" id="tblCrerInfo_1">
						<h1 style="margin-top: 80px; margin-bottom: 10px;">학력정보</h1>
						<hr>
						<p>※학력정보는 최대 3개만 노출됩니다.</p>
						
						<!-- 리스트출력 -->
						<% 
						int num = 0;
						for(int i=0; i<3; i++){
						if(i < educationList.size()){
						%>
						<form name="updateEdu<%= i %>" id="updateEdu<%= i %>" action="<%=request.getContextPath()%>/update.edu.ti" method = "post"
							onsubmit="return updatethis(this)">
						<div id="schoolOne">
						<hr>
							<table style="margin-top: 20px;">
								<tbody>
									<tr>
										<th scope="row"><label for="jmObligCd_1"> 학력구분 </label></th>
										<td colspan="5">
											<select name="eduType<%= i %>" id="eduType<%= i %>">		
												<option value="0" selected="selected">학력구분선택</option>
												<option value="고등학교">고등학교</option>
												<option value="대학교(2/3년제)">대학교(2/3년제)</option>
												<option value="대학교(4년제)">대학교(4년제)</option>
												<option value="대학원">대학원</option>
												<option value="기타">기타</option>
											</select>
											<select name="eduState" id="eduState">
												<option value="졸업">졸업</option>
												<option value="수료">수료</option>
												<option value="중퇴">중퇴</option>
												<option value="재학">재학</option>
												<option value="휴학">휴학</option>
											</select></td>
									</tr>
									
									<tr>
										<th scope="row"><label for="eduName">학교명<br>(기관명)</label></th>
										<td><input type="text" name="eduName" id="eduName" style="width: 200px" value="<%= educationList.get(i).getEduName()%>" >
									</tr>
									
									<tr>
										<th scope="row"><span id="titleworkStartDt_1">입학일</span></th>
										<td>
											<input type="text" name="startDt<%= i %>" id="startDt_1<%= i %>" value="<%= educationList.get(i).getEduEnrollDate()%>">
											<button type="button" class="ui-datepicker-trigger">
											<img src="/omg/resources/img_icon/calendar.png" alt="날짜 선택" title="날짜 선택">
											</button>
										</td>
											
										<th scope="row"><span id="titleworkEndDt_1">졸업일 </span></th>
										<td>
											<input type="text" name="endDt<%= i %>" id="endDt_1<%= i %>" value="<%= educationList.get(i).getGraduateDate()%>">
											<button type="button" class="ui-datepicker-trigger">
											<img src="/omg/resources/img_icon/calendar.png" alt="날짜 선택" title="날짜 선택">
											</button>
										</td>
									</tr>

									<!-- 졸업증명서 추가필요 -->
									<tr>
										<th scope="row">졸업증명서</th>
										<td style="width: 200px;"><input type="file" style="align: left"></td>
									</tr>
								</tbody>
							</table>
						
							<!-- 버튼영역 -->
							<div align="right">
								<button onclick="updatethis()" 
								style="background-color:orangered; color: white; font-weight:bold;  width: 50px; height: 30px">수정</button>
							</div>
							
						</div><br>
						
						<!--select용 스크립트-->						
						<script>
						$(function() {
							$("#eduType<%= i %>").val("<%= educationList.get(i).getEduType() %>").prop("selected", true);
							$("#eduState<%= i %>").val("<%= educationList.get(i).getEduState() %>").prop("selected", true);
						});
						</script>  
						
						<!-- 전송용 영역 -->	
						<div>
							<input id="num" name="num" type="hidden" value="<%= i %>">
							<input id="saveEduManageCode" name="saveEduManageCode" type="hidden" value="<%=educationList.get(i).getEduManageCode()%>" >
						</div>	
						
						
						<% num = num + 1;} 
							else { %>
						
						<!-- 새로 받는 영역 -->
						<div id="schoolSecond" style="display: block;">
							<hr>
									<table style="margin-top: 20px;">
								<tbody>
									<tr>
										<th scope="row"><label for="jmObligCd_1"> 학력구분 </label></th>
										<td colspan="5">
											<select name="eduType<%= i %>" id="eduType<%= i %>">		
												<option value="0" selected="selected">학력구분선택</option>
												<option value="고등학교">고등학교</option>
												<option value="대학교(2/3년제)">대학교(2/3년제)</option>
												<option value="대학교(4년제)">대학교(4년제)</option>
												<option value="대학원">대학원</option>
												<option value="기타">기타</option>
											</select>
											<select name="eduState<%= i %>" id="eduState<%= i %>">
													<option value="졸업">졸업</option>
													<option value="수료">수료</option>
													<option value="중퇴">중퇴</option>
													<option value="재학">재학</option>
													<option value="휴학">휴학</option>
											</select></td>
									</tr>
									
									<tr>
										<th scope="row"><label for="compNm<%= i %>">학교명<br>(기관명)</label></th>
										<td><input type="text" name="compNm<%= i %>" id="compNm_1<%= i %>" style="width: 200px" value="" >
									</tr>
									
									<tr>
										<th scope="row"><span id="titleworkStartDt_1">입학일</span></th>
										<td>
											<input type="text" name="startDt<%= i %>" id="startDt_1<%= i %>" value="">
											<button type="button" class="ui-datepicker-trigger">
											<img src="/omg/resources/img_icon/calendar.png" alt="날짜 선택" title="날짜 선택">
											</button>
										</td>
											
										<th scope="row"><span id="titleworkEndDt_1">졸업일 </span></th>
										<td>
											<input type="text" name="endDt<%= i %>" id="endDt_1<%= i %>" value="">
											<button type="button" class="ui-datepicker-trigger">
											<img src="/omg/resources/img_icon/calendar.png" alt="날짜 선택" title="날짜 선택">
											</button>
										</td>
									</tr>

									<!-- 졸업증명서 추가필요 -->
									<tr>
										<th scope="row">졸업증명서</th>
										<td style="width: 200px;"><input type="file" style="align: left"></td>
									</tr>
								</tbody>
							</table>
						
							<!-- 버튼영역 -->
							<div align="right">
								<button onclick="insertEdu'<%= i %>');" 
								style="background-color:orangered; color: white; font-weight:bold;  width: 50px; height: 30px">저장</button>
							</div>
							
							<!-- 전송용 영역 -->	
							<div>
								<input id="num1" name="num1" type="hidden" value="<%= i %>">
							</div>	
						
								
						</div><br>
						<%  
						if( num < 3 ) {num = num + 1;}
						}} %>
						
						</form>
					</div>
				</div>		
			</div>
		</div>
		
	
	</section>
	<footer id="foot">
		<%@ include file="../../common/footer.jsp"%>
	</footer>
		
	<script type="text/javascript">
	
		function insertEdu(num) {
			console(document.forms.length);
	 		document.getElementById('').submit;
		    var result = confirm("새로운 학력정보가 입력되었습니다!");
 		}
	
		function updatethis() {
			
			document.getElementById("updatethis").submit;
		    var result = confirm("학력정보 수정이 완료되었습니다!");
		    return true;

		}
		
	</script>

</body>

</html>