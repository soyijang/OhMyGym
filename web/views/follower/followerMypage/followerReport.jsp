<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" type="text/css"
	href="/omg/resources/css/fmypageContainer.css">
<link rel="stylesheet" type="text/css"
	href="/omg/resources/css/tjob.css">
<link rel="stylesheet" type="text/css"
	href="/omg/resources/css/daumcommon.css">

<script src="https://webtalk.kakao.com/webtalk.loader.js"></script>

<title>Insert title here</title>

</head>
<body>
	<section style="height: 1900px">
		<%@ include file="followerMypageAside.jsp"%>

		<div class="right-container">
				<h3 class="info-header">유해정보 신고</h3>

			<form name="insertReportForm" action="<%=request.getContextPath()%>/insert.rp" method="POST">

				<ul class="list_dot">
					<li>허위 신고자는 향후 오마이짐 서비스 이용에 제한을 받습니다. 신중하게 신고해주세요.</li>
					<li>다른 회사의 URL 및 올바르지 않은 URL은 신고 접수·처리가 되지 않습니다.</li>
					<li>(필수)로 표시된 부분은 반드시 입력해주셔야 합니다.</li>
				</ul>

				<fieldset>
					<legend class="screen_out">유해정보 신고 입력폼</legend>


					<div class="inquiry_agree inquiry_agree3">
						<div class="cont_inquiry inquiry_email">
							<div class="wrap_label">
								<label for="sendEmail1" class="lab_inquiry">이메일</label> <em
									class="emph_g">(필수)</em>
							</div>
							
							<%
								String [] emailsplit = loginUser.getEmail().split("@"); 
							%>
							
							<div class="wrap_field">
								<input type="text" id="sendEmail1" name="sendEmail1" style="width: 180px; height: 40px;"
									class="tf_inquiry" title="이메일 앞자리" value="<%= emailsplit[0] %>" disabled=""> <span
									class="txt_at">@</span> <input type="text" id="sendEmail2" style="width: 180px; height: 40px;"
									name="sendEmail2" class="tf_inquiry" title="이메일 뒷자리" value="<%= emailsplit[1]%>" disabled=""><br><br>

							<p class="troll_notice">
								오마이짐은 고객님의 신고에 대한 처리를 빠르게 진행하기 위해 최선을 다하고 있습니다.<br>
								위 이메일이 아닌 다른 이메일을 사용하실 회원께서는 개인정보수정을 먼저 진행해주시기 바랍니다.
							</p>
							
							</div>

						</div>
					</div>

					<div class="inquiry_agree inquiry_agree3">
						<div class="cont_inquiry inquiry_email" style="margin-top: 20px;">
							<div class="wrap_label" >
								<label for="sendEmail1" class="lab_inquiry" >신고 할 회원</label> <em
									class="emph_g">(선택)</em>
							</div>
							
							<div class="wrap_field">
								<input type="text" id="reportedId" name="reportedId" style="width: 180px; height: 40px;"
									class="tf_inquiry" title="신고할회원">
							</div>

						</div>
					</div>

					<div class="cont_inquiry inquiry_troll custom_url_troll">
						<div class="wrap_label">
							<label for="" class="lab_inquiry">게시글 주소 및<br>신고사유
							</label> <a href="#troll_layer" id="btn_troll_layer"
								class="bg_cs btn_layer">신고사유 참고사항</a><br> <em
								class="emph_g">(필수)</em>
						</div>

						<input type="hidden" name="content">
						<div class="wrap_field url_troll_wrap"
							data-required="customUrlTroll">
							<div class="troll_field">
								<input type="hidden"
									name="mergedUrlTroll" class="tf_inquiry"> <input
									type="text" name="urlAddr" class="tf_inquiry" title="게시글 주소">
								<div class="select_custom select_live" style="z-index: 10000;">
									
									<select name="category" class="btn_select" style="width: 200px;">
									<div class="txt_g">신고사유 선택</div><div class="bg_cs">=======</div>
										<option name="category" value="홍보성/영리목적">홍보성/영리목적</option>
										<option name="category" value="음란성/선정성">음란성/선정성</option>
										<option name="category" value="욕설">욕설</option>
										<option name="category" value="비방">비방</option>
										<option name="category" value="도배">도배</option>
										<option name="category" value="기타">기타</option>
									</select>
								</div><br>
								
								<div class="txt_placeholder" style="display: block; margin-top: 40px;">
								게시물의 정확한 처리를 위해, 신고사유를 구체적으로 입력하여 주세요.</div><br>
								<textarea class="tf_etc" name="etcReason" title="신고사유" rows="20"
									cols="17" style="display: block;"></textarea>
							</div>
							<p class="troll_notice">
								신고 URL은 1일 20건까지 등록할 수 있습니다.
							</p>
						</div>
					</div>


					<!-- 개인정보 수집 · 이용에 대한 안내 -->
					<div id="collectAgreeWrap" class="inquiry_agree inquiry_agree4"
						style="">
						<p class="desc_agree desc_line">개인정보 수집 · 이용에 대한 안내</p>
						<div id="collectAgreeRequiredWrap" class="cont_inquiry" style="">
							<div class="wrap_label">
								<span class="lab_inquiry">필수수집<br>이용항목 <em
									class="emph_g">(필수)</em></span>
							</div>
							<div class="wrap_field">
								<p class="desc_agree2">
									<strong>문의접수 및 처리, 회신을 위한 최소한의 개인정보이며, 동의를 필요로 합니다.</strong>
								</p>
								<table class="tbl tbl_agree">
									<caption class="screen_out">개인정보 동의 내용 &gt; 필수수집 이용항목</caption>
									<colgroup>
										<col width="19%">
										<col width="35%">
										<col width="20%">
										<col width="26%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">수집항목</th>
											<th scope="col">목적</th>
											<th scope="col">보유기간</th>
											<th scope="col">동의여부</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>이메일주소</td>
											<td>회원제 서비스 이용에 따른 본인확인, 불만 및 오류 해결등 민원 처리 결과 조회</td>
											<td>문의 접수 후 3년간 보관</td>
											<td rowspan="1"><input type="radio" value="Y"><span
												class="bg_cs"></span>동의 <br> <input type="radio"
												value="N"><span class="bg_cs"></span>동의안함</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<div id="collectAgreeSelectWrap" class="cont_inquiry"
							style="display: none;">
							<div class="wrap_label">
								<span class="lab_inquiry">선택수집<br>이용항목
								</span>
							</div>
							<div class="wrap_field">
								<p class="desc_agree2">동의하지 않으셔도 문의 접수가 가능합니다.</p>
								<table class="tbl tbl_agree">
									<caption class="screen_out">개인정보 동의 내용 &gt; 선택수집 이용항목</caption>
									<colgroup>
										<col width="19%">
										<col width="35%">
										<col width="20%">
										<col width="26%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">수집항목</th>
											<th scope="col">목적</th>
											<th scope="col">보유기간</th>
											<th scope="col">동의여부</th>
										</tr>
									</thead>
									<tbody></tbody>
								</table>
							</div>
						</div>
					</div>
					<!-- //개인정보 수집 · 이용에 대한 안내 -->

					<div class="inquiry_function" >
						<button onclick="alert('신고접수가 완료되었습니다!');" style="width: 800px; height: 80px;" type="submit" class="btn_cs2 btn_submit">신고 접수</button>
					</div>

				</fieldset>
			</form>
		</div>
	</section>
	<%@ include file="../../common/footer.jsp"%>


</body>
</html>