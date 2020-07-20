<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="/omg/resources/css/fmypageContainer.css">
<link rel="stylesheet" type="text/css"
	href="/omg/resources/css/tjob.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

</head>

<body>
	<header>
		<%@ include file="../../common/trainerNav.jsp"%>
	</header>

	<section style="height: 1500px;">
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
								<td><a href="trainerMyEducation.jsp"><img src="/omg/resources/button/job/1_y.png" alt=""></a></td>
								<td><a href="trainerInsertMyCareer.jsp"><img src="/omg/resources/button/job/2_n.png" alt=""></a></span></td>
								<td><a href="trainerMyPrize.jsp"><img src="/omg/resources/button/job/3_n.png" alt=""></a></td>
								<td><a href=""><img src="/omg/resources/button/job/4_n.png" alt=""></a></td>
							</tr>

							<tr>
								<td><span><a href="tmyschool.jsp">학력정보</a></span></td>
								<td><span><a href="tmyjob.jsp">경력정보</a></span></td>
								<td><span><a href="tmyprize.jsp">자격증/수상경력</a></span></td>
								<td><span><a href="">인증신청결과</a></span></td>
							</tr>


						</table>
					</div>

					<!-- form -->
					<form name="form1" id="form1" method="post">
						<input type="hidden" name="p_jmCd" value="2177"> <input
							type="hidden" name="p_section" value="item"> <input
							type="hidden" name="p_grd_cd" value=""> <input
							type="hidden" name="p_jm_oblig_cd" value=""> <input
							type="hidden" name="examLangCcd" value=""> <input
							type="hidden" name="multiFamilyYnCcd" value=""> <input
							type="hidden" name="direction"> <input type="hidden"
							name="status" value="Y">

						<div class="tbl_normal diagnosis_step3 mb5" id="tblCrerInfo_1">
							<input type="hidden" name="perId" value="PI2101422008"> <input
								type="hidden" name="baseSeq" value="102216152"> <input
								type="hidden" name="mode" value="mod" id="mode_1"> <input
								type="hidden" name="p_chkSameJob" value="N"> <input
								type="hidden" name="p_chkSameClass" value="N">

							<p style="margin-top: 80px; margin-bottom: 10px;">학력정보</p>
							<hr>
							<p>※학력정보는 최대 3개만 노출됩니다.</p>


							<div id="schoolOne">
								<table style="margin-top: 20px;">
									<colgroup>
										<col width="12%">
										<col width="22%">
										<col width="12%">
										<col width="22%">
										<col width="12%">
										<col width="*">
									</colgroup>

									<tbody>

										<tr>
											<th scope="row"><label for="jmObligCd_1"> 학력구분 </label></th>
											<td colspan="5"><span id="codeJmObligCd_1"> <select
													title="직무분야_1" name="jmObligCd" id="jmObligCd_1"
													style="width: 235px" onchange="onChangeJmObligCd(this,1)">
														<option value="" selected="selected">학력구분선택</option>
														<option value="146">고등학교</option>
														<option value="145">대학교(2/3년제)</option>
														<option value="141">대학교(4년제)</option>
														<option value="111">대학원</option>
														<option value="021-1">기타</option>

												</select></span> <span id="nameJmObligCd_1" style="display: none"></span> <select>
													<option value="">졸업</option>
													<option value="">수료</option>
													<option value="">중퇴</option>
													<option value="">재학</option>
													<option value="">휴학</option>
											</select></td>

										</tr>

										<tr>
											<th scope="row"><label for="compNm_1"><span
													id="titlecompNm_1"> 학교명<br>(기관명)
												</span></label></th>
											<td><input type="text" name="compNm" id="compNm_1"
												style="width: 200px" value="한국체육대학교">
										</tr>


										<tr>
											<th scope="row"><span id="titleworkStartDt_1"> 입학
											</span></th>
											<td><span class="calendar" id="spanworkStartDt_1">
													<input type="text" name="workStartDt"
													title="근무시작일_1( 예:20140204 )" maxlength="5"
													id="workStartDt_1" class="redaTxt dateMask hasDatepicker"
													value="2017-08-01">
													<button type="button" class="ui-datepicker-trigger">
														<img src="/omg/resources/img_icon/calendar.png"
															alt="날짜 선택" title="날짜 선택">
													</button>
											</span></td>
											<th scope="row"><span id="titleworkEndDt_1"> 졸업 </span></th>
											<td class="calendar"><input type="text" name="workEndDt"
												title="근무종료일_1( 예:20140204 )" maxlength="5" id="workEndDt_1"
												class="redaTxt dateMask hasDatepicker" value="2018-06-29">
												<button type="button" class="ui-datepicker-trigger">
													<img src="/omg/resources/img_icon/calendar.png" alt="날짜 선택"
														title="날짜 선택">
												</button></td>
										</tr>

										<tr>
											<th scope="row">졸업증명서</th>
											<td style="width: 200px;"><input type="file"
												style="align: left"></td>
										</tr>

									</tbody>
								</table>
							</div>

							<div id="field"></div>


							<div class="float_box" style="margin-top: 30px;" align="center">
								<div class="right">
									<button type="button" class="btn3_type2"
										onclick="deleteCrer(0)">
										<img src="/omg/resources/button/job/deletejob.png">
									</button>
									<button type="button" class="btn3_type2" onclick="insert_Row()">
										<img src="/omg/resources/button/job/addjob.png">
									</button>
									<a id="addDoc" onclick="add();">추가</a>
								</div>
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

	<script>
		function add() {
			
		$("#addDoc").on("click", function(e) {
			$("#schoolOne").clone().appendTo("#field");
		});
		
		}
	</script>

</body>

</html>