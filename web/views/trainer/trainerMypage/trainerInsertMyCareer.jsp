<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" type="text/css" href="/omg/resources/css/fmypageContainer.css">
	<link rel="stylesheet" type="text/css" href="/omg/resources/css/tjob.css">


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
								<td><a href="tmyschool.jsp"><img src="/omg/resources/button/job/1_n.png" alt=""></a></td>
								<td><a href="tmyjob.jsp"><img src="/omg/resources/button/job/2_y.png" alt=""></a></span></td>
								<td><a href="tmyprize.jsp"><img src="/omg/resources/button/job/3_n.png" alt=""></a></td>
								<td><a href=""><img src="/omg/resources/button/job/4_n.png" alt=""></a></td>
							</tr>

							<tr>
								<td><span>학력정보</span></td>
								<td><span>경력정보</span></td>
								<td><span>자격증/수상경력</span></td>
								<td><span>인증신청결과</span></td>
							</tr>


						</table>
					</div>

					<!-- form -->
					<form name="form1" id="form1" method="post">
						<input type="hidden" name="p_jmCd" value="2177"> <input type="hidden" name="p_section"
							value="item"> <input type="hidden" name="p_grd_cd" value=""> <input type="hidden"
							name="p_jm_oblig_cd" value=""> <input type="hidden" name="examLangCcd" value=""> <input
							type="hidden" name="multiFamilyYnCcd" value=""> <input type="hidden" name="direction">
						<input type="hidden" name="status" value="Y">

						<div class="tbl_normal diagnosis_step3 mb5" id="tblCrerInfo_1">
							<input type="hidden" name="perId" value="PI2101422008"> <input type="hidden" name="baseSeq"
								value="102216152"> <input type="hidden" name="mode" value="mod" id="mode_1"> <input
								type="hidden" name="p_chkSameJob" value="N"> <input type="hidden" name="p_chkSameClass"
								value="N">

							<p  style="margin-top: 80px; margin-bottom: 10px;"> 경력정보</p>
							<hr>
							<table summary="응시자격 자가진단 중 경력정보에 관한 산업분야, 직무분야, 근무내용, 근무시작과 종료일에 관한 정보 입력폼 " style="margin-top: 20px;">
								<caption>응시자격 자가진단 중 경력정보 입력</caption>
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
										<th scope="row"><label for="compNm_1"><span id="titlecompNm_1">
													업체명<br>(기관명)</span></label></th>
										<td><input type="text" name="compNm" id="compNm_1" style="width: 200px"
												value="검암동 피트니스센터">
									</tr>

									<tr>
										<th scope="row"><label for="jmObligCd_1"> 근무분야 </label></th>
										<td colspan="5"><span id="codeJmObligCd_1"> 
										<select title="직무분야_1" name="jmObligCd" id="jmObligCd_1" style="width: 235px"
													onchange="onChangeJmObligCd(this,1)">
													<option value="" selected="selected">근무분야선택</option>
													<option value="146">웨이트트레이닝</option>
													<option value="145">인터벌트레이닝</option>
													<option value="141">서킷트레이닝</option>
													<option value="111">필라테스</option>
													<option value="021-1">기타</option>

												</select></span>
												<span id="nameJmObligCd_1" style="display: none"></span>
											<p class="fieldSel">
												위 분야에 [ <span> <input type="checkbox" name="chkSameJob"
														id="chkSameJob_1" value="Y" onclick="chkSameJob_Click(1)"
														checked="checked"> <label for="chkSameJob_1">실무</label>
													<input type="checkbox" name="chkSameClass" id="chkSameClass_1"
														value="Y" onclick="chkSameClass_Click(1)"> <label
														for="chkSameClass_1">실습</label>
												</span>] (으)로 종사했습니다.<br>
												<strong>※실무종사의 경우 반드시 경력증명서 제출이 필요합니다.<br>※경력증명서 제출이 불가한 경우 '실습'으로
													간주합니다.</strong></p>
										</td>
									</tr>
									
									<tr>
										<th scope="row"><label for="txtCon_1"><span id="titleworkCts_1"> 근무내용
												</span></label></th>
										<td colspan="5"><textarea name="workCts" id="txtCon_1" cols="30" rows="10"
												title="근무내용_1" placeholder="ex) 인터벌 트레이닝 전문강사로 약 30명의 회원을 관리한 경험이 있음."></textarea>
										</td>
									</tr>
									<tr>
										<th scope="row"><span id="titleworkStartDt_1">
												근무시작 </span></th>
										<td><span class="calendar" id="spanworkStartDt_1">
												<input type="text" name="workStartDt" title="근무시작일_1( 예:20140204 )"
													maxlength="5" id="workStartDt_1"
													class="redaTxt dateMask hasDatepicker" value="2017-08-01">
												<button type="button" class="ui-datepicker-trigger">
													<img src="/omg/resources/img_icon/calendar.png" alt="날짜 선택"
														title="날짜 선택">
												</button>
											</span></td>
										<th scope="row"><span id="titleworkEndDt_1"> 근무종료
											</span></th>
										<td class="calendar"><input type="text" name="workEndDt"
												title="근무종료일_1( 예:20140204 )" maxlength="5" id="workEndDt_1"
												class="redaTxt dateMask hasDatepicker" value="2018-06-29">
											<button type="button" class="ui-datepicker-trigger">
												<img src="/omg/resources/img_icon/calendar.png" alt="날짜 선택"
													title="날짜 선택">
											</button></td>
									</tr>
									<tr>
										<th>경력증명서</th>
										<td><input type="file"></td>
									</tr>
									
									<tr>
										<td colspan="6" class="guideLaw">
											<div class="float_box" style="margin-top: 30px;" align="center">
												<div class="right">
													<button type="button" class="btn3_type2" onclick="deleteCrer(0)">
													<img src="/omg/resources/button/job/deletejob.png">
													</button>
													<button type="button" class="btn3_type2" onclick="insert_Row()">
													<img src="/omg/resources/button/job/addjob.png">
													</button>
												</div>
											</div>
										</td>
									</tr>
								
								</tbody>
							</table>
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