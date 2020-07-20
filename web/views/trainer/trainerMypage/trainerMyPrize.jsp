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
								<td><a href="trainerMyEducation.jsp"><img src="/omg/resources/button/job/1_n.png" alt=""></a></td>
								<td><a href="trainerInsertMyCareer.jsp"><img src="/omg/resources/button/job/2_n.png" alt=""></a></span></td>
								<td><a href="trainerMyPrize.jsp"><img src="/omg/resources/button/job/3_y.png" alt=""></a></td>
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

					<!-- 자격증  -->
					<form name="form1" id="form1" method="post">

						<p style="margin-top: 80px; margin-bottom: 10px;">자격증</p>
						<hr>
						<table style="margin-top: 20px;">
							<colgroup>
								<col width="12%">
								<col width="22%">
								<col width="12%">
								<col width="22%">
								<col width="12%">
								<col width="*">
							</colgroup>

							<thead>
								<th>no.</th>
								<th colspan="4"><label for="jmObligCd_1">자격증명</label></th>
								<th colspan="4"><label for="txtCon_1"><span
										id="titleworkCts_1">발급기관</span></label></th>
								<th colspan="4"><label for="txtCon_1"><span
										id="titleworkCts_1">자격증발급코드</span></label></th>
								<th colspan="4"><span id="titleworkStartDt_1">취득일 </span></th>
								<th colspan="4"><span id="titleworkStartDt_1">첨부파일 </span></th>
							</thead>
							<tbody>

								<tr>
									<td>1.</td>
									<td colspan="4"><span id="codeJmObligCd_1"> <select
											title="직무분야_1" name="jmObligCd" id="jmObligCd_1"
											style="width: 130px" onchange="onChangeJmObligCd(this,1)">
												<option value="" selected="selected">자격증선택</option>
												<option value="146">생활체육지도사 1급</option>
												<option value="145">생활체육지도사 2급</option>
												<option value="141">재활트레이너 1급</option>
												<option value="111">재활트레이너 2급</option>
												<option value="021-1">기타</option>

										</select></span> <span id="nameJmObligCd_1" style="display: none"></span></td>
									<td colspan="4"><input type="text" name="workCts"
										id="txtCon_1" cols="5" rows="10" style="width: 100px"
										title="근무내용_1" placeholder="kh아카데미"></input></td>
									<td colspan="4"><input type="text" name="workCts"
										id="txtCon_1" cols="5" rows="10" style="width: 100px"
										title="근무내용_1" placeholder="sef987321s"></input></td>
									<td colspan="4"><span class="calendar" id="spanworkStartDt_1">
											<input type="text" name="workStartDt"
											title="근무시작일_1( 예:20140204 )" style="width: 100px"
											maxlength="5" id="workStartDt_1"
											class="redaTxt dateMask hasDatepicker" value="2017-08-01">
											<button type="button" class="ui-datepicker-trigger">
												<img src="/omg/resources/img_icon/calendar.png" alt="날짜 선택"
													title="날짜 선택">
											</button>
									</span></td>
									<td colspan="4"><button onclick="">등록</button></td>
								</tr>
								<p class="fieldSel">
									<strong>※오마이짐 모든 정식트레이너는 생활체육지도사 자격증 제출이 필요합니다.</strong>
								</p>
							</tbody>
						</table>
						
						<!-- 자격증 버튼 -->
						<div class="float_box" style="margin-top: 30px;" align="center">
							<div class="right">
								<button type="button" class="btn3_type2" onclick="deleteCrer(0)">
									<img src="/omg/resources/button/job/deletejob.png">
								</button>
								<button type="button" class="btn3_type2" onclick="insert_Row()">
									<img src="/omg/resources/button/job/addprize.png">
								</button>
							</div>
						</div>
					</form>

					<!-- 수상경력 -->
					<form name="form1" id="form1" method="post">


						<p style="margin-top: 80px; margin-bottom: 10px;">수상경력</p>
						<hr>
						<table style="margin-top: 20px;">
							<caption>응시자격 자가진단 중 경력정보 입력</caption>
							<colgroup>
								<col width="12%">
								<col width="22%">
								<col width="12%">
								<col width="22%">
								<col width="12%">
								<col width="*">
							</colgroup>
	<thead>
								<th>no.</th>
								<th colspan="4"><label for="jmObligCd_1">자격증명</label></th>
								<th colspan="4"><label for="txtCon_1"><span
										id="titleworkCts_1">발급기관</span></label></th>
								<th colspan="4"><label for="txtCon_1"><span
										id="titleworkCts_1">자격증발급코드</span></label></th>
								<th colspan="4"><span id="titleworkStartDt_1">취득일 </span></th>
								<th colspan="4"><span id="titleworkStartDt_1">첨부파일 </span></th>
							</thead>
							<tbody>

								<tr>
									<td>1.</td>
									<td colspan="4"><span id="codeJmObligCd_1"> <select
											title="직무분야_1" name="jmObligCd" id="jmObligCd_1"
											style="width: 130px" onchange="onChangeJmObligCd(this,1)">
												<option value="" selected="selected">자격증선택</option>
												<option value="146">생활체육지도사 1급</option>
												<option value="145">생활체육지도사 2급</option>
												<option value="141">재활트레이너 1급</option>
												<option value="111">재활트레이너 2급</option>
												<option value="021-1">기타</option>

										</select></span> <span id="nameJmObligCd_1" style="display: none"></span></td>
									<td colspan="4"><input type="text" name="workCts"
										id="txtCon_1" cols="5" rows="10" style="width: 100px"
										title="근무내용_1" placeholder="kh아카데미"></input></td>
									<td colspan="4"><input type="text" name="workCts"
										id="txtCon_1" cols="5" rows="10" style="width: 100px"
										title="근무내용_1" placeholder="sef987321s"></input></td>
									<td colspan="4"><span class="calendar" id="spanworkStartDt_1">
											<input type="text" name="workStartDt"
											title="근무시작일_1( 예:20140204 )" style="width: 100px"
											maxlength="5" id="workStartDt_1"
											class="redaTxt dateMask hasDatepicker" value="2017-08-01">
											<button type="button" class="ui-datepicker-trigger">
												<img src="/omg/resources/img_icon/calendar.png" alt="날짜 선택"
													title="날짜 선택">
											</button>
									</span></td>
									<td colspan="4"><button onclick="">등록</button></td>
								</tr>
								<p class="fieldSel">
									<strong>※오마이짐 모든 정식트레이너는 생활체육지도사 자격증 제출이 필요합니다.</strong>
								</p>
							</tbody>
						</table>
						
						<!-- 자격증 버튼 -->
						<div class="float_box" style="margin-top: 30px;" align="center">
							<div class="right">
								<button type="button" class="btn3_type2" onclick="deleteCrer(0)">
									<img src="/omg/resources/button/job/deletejob.png">
								</button>
								<button type="button" class="btn3_type2" onclick="insert_Row()">
									<img src="/omg/resources/button/job/addprize.png">
								</button>
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