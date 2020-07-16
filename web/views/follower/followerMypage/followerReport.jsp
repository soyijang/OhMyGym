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
		<%@ include file="../../common/followerNav.jsp"%>
		<%@ include file="followerMypageAside.jsp"%>

		<div class="right-container">
				<h3 class="info-header">유해정보 신고</h3>

			<form name="redbellRigthForm" class="cs_inquiry cs_troll2"
				method="POST" enctype="multipart/form-data">
				<input type="hidden" name="siteId" value="195"> <input
					type="hidden" name="catId" value="7428"> <input
					type="hidden" name="subject" value="유해정보신고"> <input
					type="hidden" name="qstSSN" id="qstSSN" value=""> <input
					type="hidden" name="sendAutoGreeting" value="N">

				<ul class="list_dot">
					<li>허위 신고자는 향후 오마이짐 서비스 이용에 제한을 받습니다. 신중하게 신고해주세요.</li>
					<li>다른 회사의 URL 및 올바르지 않은 URL은 신고 접수·처리가 되지 않습니다.</li>
					<li>(필수)로 표시된 부분은 반드시 입력해주셔야 합니다.</li>
				</ul>

				<fieldset>
					<legend class="screen_out">유해정보 신고 입력폼</legend>




					<input type="hidden" name="loginType" value="1">

					<div class="inquiry_agree inquiry_agree3">
						<div class="cont_inquiry inquiry_email"
							data-collect-element="이메일주소" data-collect-type="4"
							data-required="sendEmail" data-merge-content="sendEmail">
							<div class="wrap_label">
								<label for="sendEmail1" class="lab_inquiry">이메일</label> <em
									class="emph_g">(필수)</em>
							</div>
							
							<%
								String [] emailsplit = loginUser.getEmail().split("@"); 
							%>
							
							<div class="wrap_field">
								<input type="text" id="sendEmail1" name="sendEmail1"
									class="tf_inquiry" title="이메일 앞자리" value="<%= emailsplit[0] %>" disabled=""> <span
									class="txt_at">@</span> <input type="text" id="sendEmail2"
									name="sendEmail2" class="tf_inquiry" title="이메일 뒷자리" value="<%= emailsplit[1]%>" disabled=""><br><br>

							<p class="troll_notice">
								오마이짐은 고객님의 신고에 대한 처리를 빠르게 진행하기 위해 최선을 다하고 있습니다.<br>
								위 이메일이 아닌 다른 이메일을 사용하실 회원께서는 개인정보수정을 먼저 진행해주시기 바랍니다.
							</p>
							
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
						<div id="troll_layer" class="cs_layer">
							<div class="inner_cs_layer inner_file_layer">
								<div class="desc_file fst">
									<strong class="tit_file">신고사유</strong>
									<div class="troll_kind">
										<strong class="tit_kind">불법정보</strong>
										<ul class="list_dot">
											<li>불법 식품, 의약품을 홍보 판매하는 내용</li>
											<li>범죄 모의, 대포폰, 대포통장 등의 거래 내용</li>
										</ul>
									</div>
									<div class="troll_kind">
										<strong class="tit_kind">개인정보노출</strong>
										<ul class="list_dot">
											<li>민감한 개인정보를 무단으로 게재하는 내용</li>
											<li>주민번호, 카드번호, 비밀번호 등의 정보게재</li>
										</ul>
									</div>
									<div class="troll_kind">
										<strong class="tit_kind">욕설 / 인신공격</strong>
										<ul class="list_dot">
											<li>욕설과 저속한 표현으로 불쾌감을 주는내용</li>
											<li>이유 없이 특정계층, 집단을 비하하는 내용</li>
										</ul>
									</div>
									<div class="troll_kind">
										<strong class="tit_kind">같은 내용의 반복 게시 (도배)</strong>
										<ul class="list_dot">
											<li>동일, 유사한내용의 반복 게시로 다른 회원의<br>서비스 이용에 방해가 되는 경우
											</li>
										</ul>
									</div>
									<div class="troll_kind">
										<strong class="tit_kind">음란성 / 선정성</strong>
										<ul class="list_dot">
											<li>과도한 신체노출 및 성행위를 표현하는 내용</li>
											<li>자극적인 성적 은어 및 구체적인 성행위 내용</li>
										</ul>
									</div>
									<div class="troll_kind">
										<strong class="tit_kind">악성코드</strong>
										<ul class="list_dot">
											<li>타인에게 피해를 주는 바이러스, 악성코드 유포</li>
											<li>불법복제 또는 해킹 및 피싱 프로그램 유포</li>
										</ul>
									</div>
									<div class="troll_kind">
										<strong class="tit_kind">영리목적 / 홍보성</strong>
										<ul class="list_dot">
											<li>영리를 위해 상업적인 내용을 과도하게 홍보</li>
											<li>불법 피라미드, 돈 버는 사이트 홍보</li>
										</ul>
									</div>
								</div>
								<a href="#btn_troll_layer" class="bg_cs btn_close">닫기</a>
							</div>
						</div>

						<input type="hidden" name="content">
						<div class="wrap_field url_troll_wrap"
							data-required="customUrlTroll">
							<div class="troll_field">
								<span class="num_g">1</span> <input type="hidden"
									name="mergedUrlTroll" class="tf_inquiry"> <input
									type="text" name="urlAddr" class="tf_inquiry" title="게시글 주소">
								<input type="hidden" name="selectReason"
									class="tf_inquiry opt_hidden_value">
								<div class="select_custom select_live"
									data-select-custom-type="url" style="z-index: 21;">
									<a href="#opt_trolls" class="btn_select"><span
										class="txt_g">신고사유 선택</span><span class="bg_cs">
											=======</span></a>
									<ul id="opt_trolls" class="inquiry_option">
										<li><input type="radio" id="opt_troll1"
											name="opt_troll_1" value="U" class="inp_inquiry"><label
											for="opt_troll1" class="lab_inquiry">불법정보</label></li>
										<li><input type="radio" id="opt_troll2"
											name="opt_troll_1" value="C" class="inp_inquiry"><label
											for="opt_troll2" class="lab_inquiry">욕설/인신공격</label></li>
										<li><input type="radio" id="opt_troll3"
											name="opt_troll_1" value="O" class="inp_inquiry"><label
											for="opt_troll3" class="lab_inquiry">음란성/선정성</label></li>
										<li><input type="radio" id="opt_troll4"
											name="opt_troll_1" value="A" class="inp_inquiry"><label
											for="opt_troll4" class="lab_inquiry">영리목적/홍보성</label></li>
										<li><input type="radio" id="opt_troll5"
											name="opt_troll_1" value="P" class="inp_inquiry"><label
											for="opt_troll5" class="lab_inquiry">개인정보노출</label></li>
										<li><input type="radio" id="opt_troll6"
											name="opt_troll_1" value="E" class="inp_inquiry"><label
											for="opt_troll6" class="lab_inquiry">같은 내용의 반복 게시(도배)</label></li>
										<li><input type="radio" id="opt_troll7"
											name="opt_troll_1" value="S" class="inp_inquiry"><label
											for="opt_troll7" class="lab_inquiry">악성코드</label></li>
										<li><input type="radio" id="opt_troll8"
											name="opt_troll_1" value="G" class="inp_inquiry"><label
											for="opt_troll8" class="lab_inquiry">기타</label></li>
									</ul>
								</div>
								<div class="txt_placeholder" style="display: none;">게시물의
									정확한 처리를 위해, 신고사유를 구체적으로 입력하여 주세요.</div>
								<textarea class="tf_etc" name="etcReason" title="신고사유" rows="60"
									cols="17" style="display: none;"></textarea>
								<button type="button" class="btn_cs btn_filedel"
									style="display: none;">삭제</button>
							</div>
							<button type="button" class="btn_cs btn_addfile">+ 신고게시글
								추가</button>
							<p class="troll_notice">
								신고 URL은 1회 20건까지 등록할 수 있습니다.<br>(단축 URL로 신고된 경우, 처리가 지연 또는
								누락될 수 있습니다.)
							</p>
						</div>

						<div class="url_troll_pool" style="display: none;">

							<div class="troll_field">
								<span class="num_g">2</span> <input type="hidden"
									name="mergedUrlTroll" class="tf_inquiry"> <input
									type="text" name="urlAddr" class="tf_inquiry" title="게시글 주소">
								<input type="hidden" name="selectReason"
									class="tf_inquiry opt_hidden_value">
								<div class="select_custom select_live"
									data-select-custom-type="url" style="z-index: 20;">
									<a href="#opt_trolls" class="btn_select"><span
										class="txt_g">신고사유 선택</span><span class="bg_cs">
											=======</span></a>
									<ul id="opt_trolls" class="inquiry_option">
										<li><input type="radio" id="opt_troll1"
											name="opt_troll_2" value="U" class="inp_inquiry"><label
											for="opt_troll1" class="lab_inquiry">불법정보</label></li>
										<li><input type="radio" id="opt_troll2"
											name="opt_troll_2" value="C" class="inp_inquiry"><label
											for="opt_troll2" class="lab_inquiry">욕설/인신공격</label></li>
										<li><input type="radio" id="opt_troll3"
											name="opt_troll_2" value="O" class="inp_inquiry"><label
											for="opt_troll3" class="lab_inquiry">음란성/선정성</label></li>
										<li><input type="radio" id="opt_troll4"
											name="opt_troll_2" value="A" class="inp_inquiry"><label
											for="opt_troll4" class="lab_inquiry">영리목적/홍보성</label></li>
										<li><input type="radio" id="opt_troll5"
											name="opt_troll_2" value="P" class="inp_inquiry"><label
											for="opt_troll5" class="lab_inquiry">개인정보노출</label></li>
										<li><input type="radio" id="opt_troll6"
											name="opt_troll_2" value="E" class="inp_inquiry"><label
											for="opt_troll6" class="lab_inquiry">같은 내용의 반복 게시(도배)</label></li>
										<li><input type="radio" id="opt_troll7"
											name="opt_troll_2" value="S" class="inp_inquiry"><label
											for="opt_troll7" class="lab_inquiry">악성코드</label></li>
										<li><input type="radio" id="opt_troll8"
											name="opt_troll_2" value="G" class="inp_inquiry"><label
											for="opt_troll8" class="lab_inquiry">기타</label></li>
									</ul>
								</div>
								<div class="txt_placeholder" style="display: none;">게시물의
									정확한 처리를 위해, 신고사유를 구체적으로 입력하여 주세요.</div>
								<textarea class="tf_etc" name="etcReason" title="신고사유" rows="60"
									cols="17" style="display: none;"></textarea>
								<button type="button" class="btn_cs btn_filedel">삭제</button>
							</div>
							<div class="troll_field">
								<span class="num_g">3</span> <input type="hidden"
									name="mergedUrlTroll" class="tf_inquiry"> <input
									type="text" name="urlAddr" class="tf_inquiry" title="게시글 주소">
								<input type="hidden" name="selectReason"
									class="tf_inquiry opt_hidden_value">
								<div class="select_custom select_live"
									data-select-custom-type="url" style="z-index: 19;">
									<a href="#opt_trolls" class="btn_select"><span
										class="txt_g">신고사유 선택</span><span class="bg_cs">
											=======</span></a>
									<ul id="opt_trolls" class="inquiry_option">
										<li><input type="radio" id="opt_troll1"
											name="opt_troll_3" value="U" class="inp_inquiry"><label
											for="opt_troll1" class="lab_inquiry">불법정보</label></li>
										<li><input type="radio" id="opt_troll2"
											name="opt_troll_3" value="C" class="inp_inquiry"><label
											for="opt_troll2" class="lab_inquiry">욕설/인신공격</label></li>
										<li><input type="radio" id="opt_troll3"
											name="opt_troll_3" value="O" class="inp_inquiry"><label
											for="opt_troll3" class="lab_inquiry">음란성/선정성</label></li>
										<li><input type="radio" id="opt_troll4"
											name="opt_troll_3" value="A" class="inp_inquiry"><label
											for="opt_troll4" class="lab_inquiry">영리목적/홍보성</label></li>
										<li><input type="radio" id="opt_troll5"
											name="opt_troll_3" value="P" class="inp_inquiry"><label
											for="opt_troll5" class="lab_inquiry">개인정보노출</label></li>
										<li><input type="radio" id="opt_troll6"
											name="opt_troll_3" value="E" class="inp_inquiry"><label
											for="opt_troll6" class="lab_inquiry">같은 내용의 반복 게시(도배)</label></li>
										<li><input type="radio" id="opt_troll7"
											name="opt_troll_3" value="S" class="inp_inquiry"><label
											for="opt_troll7" class="lab_inquiry">악성코드</label></li>
										<li><input type="radio" id="opt_troll8"
											name="opt_troll_3" value="G" class="inp_inquiry"><label
											for="opt_troll8" class="lab_inquiry">기타</label></li>
									</ul>
								</div>
								<div class="txt_placeholder" style="display: none;">게시물의
									정확한 처리를 위해, 신고사유를 구체적으로 입력하여 주세요.</div>
								<textarea class="tf_etc" name="etcReason" title="신고사유" rows="60"
									cols="17" style="display: none;"></textarea>
								<button type="button" class="btn_cs btn_filedel">삭제</button>
							</div>
							<div class="troll_field">
								<span class="num_g">4</span> <input type="hidden"
									name="mergedUrlTroll" class="tf_inquiry"> <input
									type="text" name="urlAddr" class="tf_inquiry" title="게시글 주소">
								<input type="hidden" name="selectReason"
									class="tf_inquiry opt_hidden_value">
								<div class="select_custom select_live"
									data-select-custom-type="url" style="z-index: 18;">
									<a href="#opt_trolls" class="btn_select"><span
										class="txt_g">신고사유 선택</span><span class="bg_cs">
											=======</span></a>
									<ul id="opt_trolls" class="inquiry_option">
										<li><input type="radio" id="opt_troll1"
											name="opt_troll_4" value="U" class="inp_inquiry"><label
											for="opt_troll1" class="lab_inquiry">불법정보</label></li>
										<li><input type="radio" id="opt_troll2"
											name="opt_troll_4" value="C" class="inp_inquiry"><label
											for="opt_troll2" class="lab_inquiry">욕설/인신공격</label></li>
										<li><input type="radio" id="opt_troll3"
											name="opt_troll_4" value="O" class="inp_inquiry"><label
											for="opt_troll3" class="lab_inquiry">음란성/선정성</label></li>
										<li><input type="radio" id="opt_troll4"
											name="opt_troll_4" value="A" class="inp_inquiry"><label
											for="opt_troll4" class="lab_inquiry">영리목적/홍보성</label></li>
										<li><input type="radio" id="opt_troll5"
											name="opt_troll_4" value="P" class="inp_inquiry"><label
											for="opt_troll5" class="lab_inquiry">개인정보노출</label></li>
										<li><input type="radio" id="opt_troll6"
											name="opt_troll_4" value="E" class="inp_inquiry"><label
											for="opt_troll6" class="lab_inquiry">같은 내용의 반복 게시(도배)</label></li>
										<li><input type="radio" id="opt_troll7"
											name="opt_troll_4" value="S" class="inp_inquiry"><label
											for="opt_troll7" class="lab_inquiry">악성코드</label></li>
										<li><input type="radio" id="opt_troll8"
											name="opt_troll_4" value="G" class="inp_inquiry"><label
											for="opt_troll8" class="lab_inquiry">기타</label></li>
									</ul>
								</div>
								<div class="txt_placeholder" style="display: none;">게시물의
									정확한 처리를 위해, 신고사유를 구체적으로 입력하여 주세요.</div>
								<textarea class="tf_etc" name="etcReason" title="신고사유" rows="60"
									cols="17" style="display: none;"></textarea>
								<button type="button" class="btn_cs btn_filedel">삭제</button>
							</div>
							<div class="troll_field">
								<span class="num_g">5</span> <input type="hidden"
									name="mergedUrlTroll" class="tf_inquiry"> <input
									type="text" name="urlAddr" class="tf_inquiry" title="게시글 주소">
								<input type="hidden" name="selectReason"
									class="tf_inquiry opt_hidden_value">
								<div class="select_custom select_live"
									data-select-custom-type="url" style="z-index: 17;">
									<a href="#opt_trolls" class="btn_select"><span
										class="txt_g">신고사유 선택</span><span class="bg_cs">
											=======</span></a>
									<ul id="opt_trolls" class="inquiry_option">
										<li><input type="radio" id="opt_troll1"
											name="opt_troll_5" value="U" class="inp_inquiry"><label
											for="opt_troll1" class="lab_inquiry">불법정보</label></li>
										<li><input type="radio" id="opt_troll2"
											name="opt_troll_5" value="C" class="inp_inquiry"><label
											for="opt_troll2" class="lab_inquiry">욕설/인신공격</label></li>
										<li><input type="radio" id="opt_troll3"
											name="opt_troll_5" value="O" class="inp_inquiry"><label
											for="opt_troll3" class="lab_inquiry">음란성/선정성</label></li>
										<li><input type="radio" id="opt_troll4"
											name="opt_troll_5" value="A" class="inp_inquiry"><label
											for="opt_troll4" class="lab_inquiry">영리목적/홍보성</label></li>
										<li><input type="radio" id="opt_troll5"
											name="opt_troll_5" value="P" class="inp_inquiry"><label
											for="opt_troll5" class="lab_inquiry">개인정보노출</label></li>
										<li><input type="radio" id="opt_troll6"
											name="opt_troll_5" value="E" class="inp_inquiry"><label
											for="opt_troll6" class="lab_inquiry">같은 내용의 반복 게시(도배)</label></li>
										<li><input type="radio" id="opt_troll7"
											name="opt_troll_5" value="S" class="inp_inquiry"><label
											for="opt_troll7" class="lab_inquiry">악성코드</label></li>
										<li><input type="radio" id="opt_troll8"
											name="opt_troll_5" value="G" class="inp_inquiry"><label
											for="opt_troll8" class="lab_inquiry">기타</label></li>
									</ul>
								</div>
								<div class="txt_placeholder" style="display: none;">게시물의
									정확한 처리를 위해, 신고사유를 구체적으로 입력하여 주세요.</div>
								<textarea class="tf_etc" name="etcReason" title="신고사유" rows="60"
									cols="17" style="display: none;"></textarea>
								<button type="button" class="btn_cs btn_filedel">삭제</button>
							</div>
							<div class="troll_field">
								<span class="num_g">6</span> <input type="hidden"
									name="mergedUrlTroll" class="tf_inquiry"> <input
									type="text" name="urlAddr" class="tf_inquiry" title="게시글 주소">
								<input type="hidden" name="selectReason"
									class="tf_inquiry opt_hidden_value">
								<div class="select_custom select_live"
									data-select-custom-type="url" style="z-index: 16;">
									<a href="#opt_trolls" class="btn_select"><span
										class="txt_g">신고사유 선택</span><span class="bg_cs">
											=======</span></a>
									<ul id="opt_trolls" class="inquiry_option">
										<li><input type="radio" id="opt_troll1"
											name="opt_troll_6" value="U" class="inp_inquiry"><label
											for="opt_troll1" class="lab_inquiry">불법정보</label></li>
										<li><input type="radio" id="opt_troll2"
											name="opt_troll_6" value="C" class="inp_inquiry"><label
											for="opt_troll2" class="lab_inquiry">욕설/인신공격</label></li>
										<li><input type="radio" id="opt_troll3"
											name="opt_troll_6" value="O" class="inp_inquiry"><label
											for="opt_troll3" class="lab_inquiry">음란성/선정성</label></li>
										<li><input type="radio" id="opt_troll4"
											name="opt_troll_6" value="A" class="inp_inquiry"><label
											for="opt_troll4" class="lab_inquiry">영리목적/홍보성</label></li>
										<li><input type="radio" id="opt_troll5"
											name="opt_troll_6" value="P" class="inp_inquiry"><label
											for="opt_troll5" class="lab_inquiry">개인정보노출</label></li>
										<li><input type="radio" id="opt_troll6"
											name="opt_troll_6" value="E" class="inp_inquiry"><label
											for="opt_troll6" class="lab_inquiry">같은 내용의 반복 게시(도배)</label></li>
										<li><input type="radio" id="opt_troll7"
											name="opt_troll_6" value="S" class="inp_inquiry"><label
											for="opt_troll7" class="lab_inquiry">악성코드</label></li>
										<li><input type="radio" id="opt_troll8"
											name="opt_troll_6" value="G" class="inp_inquiry"><label
											for="opt_troll8" class="lab_inquiry">기타</label></li>
									</ul>
								</div>
								<div class="txt_placeholder" style="display: none;">게시물의
									정확한 처리를 위해, 신고사유를 구체적으로 입력하여 주세요.</div>
								<textarea class="tf_etc" name="etcReason" title="신고사유" rows="60"
									cols="17" style="display: none;"></textarea>
								<button type="button" class="btn_cs btn_filedel">삭제</button>
							</div>
							<div class="troll_field">
								<span class="num_g">7</span> <input type="hidden"
									name="mergedUrlTroll" class="tf_inquiry"> <input
									type="text" name="urlAddr" class="tf_inquiry" title="게시글 주소">
								<input type="hidden" name="selectReason"
									class="tf_inquiry opt_hidden_value">
								<div class="select_custom select_live"
									data-select-custom-type="url" style="z-index: 15;">
									<a href="#opt_trolls" class="btn_select"><span
										class="txt_g">신고사유 선택</span><span class="bg_cs">
											=======</span></a>
									<ul id="opt_trolls" class="inquiry_option">
										<li><input type="radio" id="opt_troll1"
											name="opt_troll_7" value="U" class="inp_inquiry"><label
											for="opt_troll1" class="lab_inquiry">불법정보</label></li>
										<li><input type="radio" id="opt_troll2"
											name="opt_troll_7" value="C" class="inp_inquiry"><label
											for="opt_troll2" class="lab_inquiry">욕설/인신공격</label></li>
										<li><input type="radio" id="opt_troll3"
											name="opt_troll_7" value="O" class="inp_inquiry"><label
											for="opt_troll3" class="lab_inquiry">음란성/선정성</label></li>
										<li><input type="radio" id="opt_troll4"
											name="opt_troll_7" value="A" class="inp_inquiry"><label
											for="opt_troll4" class="lab_inquiry">영리목적/홍보성</label></li>
										<li><input type="radio" id="opt_troll5"
											name="opt_troll_7" value="P" class="inp_inquiry"><label
											for="opt_troll5" class="lab_inquiry">개인정보노출</label></li>
										<li><input type="radio" id="opt_troll6"
											name="opt_troll_7" value="E" class="inp_inquiry"><label
											for="opt_troll6" class="lab_inquiry">같은 내용의 반복 게시(도배)</label></li>
										<li><input type="radio" id="opt_troll7"
											name="opt_troll_7" value="S" class="inp_inquiry"><label
											for="opt_troll7" class="lab_inquiry">악성코드</label></li>
										<li><input type="radio" id="opt_troll8"
											name="opt_troll_7" value="G" class="inp_inquiry"><label
											for="opt_troll8" class="lab_inquiry">기타</label></li>
									</ul>
								</div>
								<div class="txt_placeholder" style="display: none;">게시물의
									정확한 처리를 위해, 신고사유를 구체적으로 입력하여 주세요.</div>
								<textarea class="tf_etc" name="etcReason" title="신고사유" rows="60"
									cols="17" style="display: none;"></textarea>
								<button type="button" class="btn_cs btn_filedel">삭제</button>
							</div>
							<div class="troll_field">
								<span class="num_g">8</span> <input type="hidden"
									name="mergedUrlTroll" class="tf_inquiry"> <input
									type="text" name="urlAddr" class="tf_inquiry" title="게시글 주소">
								<input type="hidden" name="selectReason"
									class="tf_inquiry opt_hidden_value">
								<div class="select_custom select_live"
									data-select-custom-type="url" style="z-index: 14;">
									<a href="#opt_trolls" class="btn_select"><span
										class="txt_g">신고사유 선택</span><span class="bg_cs">
											=======</span></a>
									<ul id="opt_trolls" class="inquiry_option">
										<li><input type="radio" id="opt_troll1"
											name="opt_troll_8" value="U" class="inp_inquiry"><label
											for="opt_troll1" class="lab_inquiry">불법정보</label></li>
										<li><input type="radio" id="opt_troll2"
											name="opt_troll_8" value="C" class="inp_inquiry"><label
											for="opt_troll2" class="lab_inquiry">욕설/인신공격</label></li>
										<li><input type="radio" id="opt_troll3"
											name="opt_troll_8" value="O" class="inp_inquiry"><label
											for="opt_troll3" class="lab_inquiry">음란성/선정성</label></li>
										<li><input type="radio" id="opt_troll4"
											name="opt_troll_8" value="A" class="inp_inquiry"><label
											for="opt_troll4" class="lab_inquiry">영리목적/홍보성</label></li>
										<li><input type="radio" id="opt_troll5"
											name="opt_troll_8" value="P" class="inp_inquiry"><label
											for="opt_troll5" class="lab_inquiry">개인정보노출</label></li>
										<li><input type="radio" id="opt_troll6"
											name="opt_troll_8" value="E" class="inp_inquiry"><label
											for="opt_troll6" class="lab_inquiry">같은 내용의 반복 게시(도배)</label></li>
										<li><input type="radio" id="opt_troll7"
											name="opt_troll_8" value="S" class="inp_inquiry"><label
											for="opt_troll7" class="lab_inquiry">악성코드</label></li>
										<li><input type="radio" id="opt_troll8"
											name="opt_troll_8" value="G" class="inp_inquiry"><label
											for="opt_troll8" class="lab_inquiry">기타</label></li>
									</ul>
								</div>
								<div class="txt_placeholder" style="display: none;">게시물의
									정확한 처리를 위해, 신고사유를 구체적으로 입력하여 주세요.</div>
								<textarea class="tf_etc" name="etcReason" title="신고사유" rows="60"
									cols="17" style="display: none;"></textarea>
								<button type="button" class="btn_cs btn_filedel">삭제</button>
							</div>
							<div class="troll_field">
								<span class="num_g">9</span> <input type="hidden"
									name="mergedUrlTroll" class="tf_inquiry"> <input
									type="text" name="urlAddr" class="tf_inquiry" title="게시글 주소">
								<input type="hidden" name="selectReason"
									class="tf_inquiry opt_hidden_value">
								<div class="select_custom select_live"
									data-select-custom-type="url" style="z-index: 13;">
									<a href="#opt_trolls" class="btn_select"><span
										class="txt_g">신고사유 선택</span><span class="bg_cs">
											=======</span></a>
									<ul id="opt_trolls" class="inquiry_option">
										<li><input type="radio" id="opt_troll1"
											name="opt_troll_9" value="U" class="inp_inquiry"><label
											for="opt_troll1" class="lab_inquiry">불법정보</label></li>
										<li><input type="radio" id="opt_troll2"
											name="opt_troll_9" value="C" class="inp_inquiry"><label
											for="opt_troll2" class="lab_inquiry">욕설/인신공격</label></li>
										<li><input type="radio" id="opt_troll3"
											name="opt_troll_9" value="O" class="inp_inquiry"><label
											for="opt_troll3" class="lab_inquiry">음란성/선정성</label></li>
										<li><input type="radio" id="opt_troll4"
											name="opt_troll_9" value="A" class="inp_inquiry"><label
											for="opt_troll4" class="lab_inquiry">영리목적/홍보성</label></li>
										<li><input type="radio" id="opt_troll5"
											name="opt_troll_9" value="P" class="inp_inquiry"><label
											for="opt_troll5" class="lab_inquiry">개인정보노출</label></li>
										<li><input type="radio" id="opt_troll6"
											name="opt_troll_9" value="E" class="inp_inquiry"><label
											for="opt_troll6" class="lab_inquiry">같은 내용의 반복 게시(도배)</label></li>
										<li><input type="radio" id="opt_troll7"
											name="opt_troll_9" value="S" class="inp_inquiry"><label
											for="opt_troll7" class="lab_inquiry">악성코드</label></li>
										<li><input type="radio" id="opt_troll8"
											name="opt_troll_9" value="G" class="inp_inquiry"><label
											for="opt_troll8" class="lab_inquiry">기타</label></li>
									</ul>
								</div>
								<div class="txt_placeholder" style="display: none;">게시물의
									정확한 처리를 위해, 신고사유를 구체적으로 입력하여 주세요.</div>
								<textarea class="tf_etc" name="etcReason" title="신고사유" rows="60"
									cols="17" style="display: none;"></textarea>
								<button type="button" class="btn_cs btn_filedel">삭제</button>
							</div>
							<div class="troll_field">
								<span class="num_g">10</span> <input type="hidden"
									name="mergedUrlTroll" class="tf_inquiry"> <input
									type="text" name="urlAddr" class="tf_inquiry" title="게시글 주소">
								<input type="hidden" name="selectReason"
									class="tf_inquiry opt_hidden_value">
								<div class="select_custom select_live"
									data-select-custom-type="url" style="z-index: 12;">
									<a href="#opt_trolls" class="btn_select"><span
										class="txt_g">신고사유 선택</span><span class="bg_cs">
											=======</span></a>
									<ul id="opt_trolls" class="inquiry_option">
										<li><input type="radio" id="opt_troll1"
											name="opt_troll_10" value="U" class="inp_inquiry"><label
											for="opt_troll1" class="lab_inquiry">불법정보</label></li>
										<li><input type="radio" id="opt_troll2"
											name="opt_troll_10" value="C" class="inp_inquiry"><label
											for="opt_troll2" class="lab_inquiry">욕설/인신공격</label></li>
										<li><input type="radio" id="opt_troll3"
											name="opt_troll_10" value="O" class="inp_inquiry"><label
											for="opt_troll3" class="lab_inquiry">음란성/선정성</label></li>
										<li><input type="radio" id="opt_troll4"
											name="opt_troll_10" value="A" class="inp_inquiry"><label
											for="opt_troll4" class="lab_inquiry">영리목적/홍보성</label></li>
										<li><input type="radio" id="opt_troll5"
											name="opt_troll_10" value="P" class="inp_inquiry"><label
											for="opt_troll5" class="lab_inquiry">개인정보노출</label></li>
										<li><input type="radio" id="opt_troll6"
											name="opt_troll_10" value="E" class="inp_inquiry"><label
											for="opt_troll6" class="lab_inquiry">같은 내용의 반복 게시(도배)</label></li>
										<li><input type="radio" id="opt_troll7"
											name="opt_troll_10" value="S" class="inp_inquiry"><label
											for="opt_troll7" class="lab_inquiry">악성코드</label></li>
										<li><input type="radio" id="opt_troll8"
											name="opt_troll_10" value="G" class="inp_inquiry"><label
											for="opt_troll8" class="lab_inquiry">기타</label></li>
									</ul>
								</div>
								<div class="txt_placeholder" style="display: none;">게시물의
									정확한 처리를 위해, 신고사유를 구체적으로 입력하여 주세요.</div>
								<textarea class="tf_etc" name="etcReason" title="신고사유" rows="60"
									cols="17" style="display: none;"></textarea>
								<button type="button" class="btn_cs btn_filedel">삭제</button>
							</div>
							<div class="troll_field">
								<span class="num_g">11</span> <input type="hidden"
									name="mergedUrlTroll" class="tf_inquiry"> <input
									type="text" name="urlAddr" class="tf_inquiry" title="게시글 주소">
								<input type="hidden" name="selectReason"
									class="tf_inquiry opt_hidden_value">
								<div class="select_custom select_live"
									data-select-custom-type="url" style="z-index: 11;">
									<a href="#opt_trolls" class="btn_select"><span
										class="txt_g">신고사유 선택</span><span class="bg_cs">
											=======</span></a>
									<ul id="opt_trolls" class="inquiry_option">
										<li><input type="radio" id="opt_troll1"
											name="opt_troll_11" value="U" class="inp_inquiry"><label
											for="opt_troll1" class="lab_inquiry">불법정보</label></li>
										<li><input type="radio" id="opt_troll2"
											name="opt_troll_11" value="C" class="inp_inquiry"><label
											for="opt_troll2" class="lab_inquiry">욕설/인신공격</label></li>
										<li><input type="radio" id="opt_troll3"
											name="opt_troll_11" value="O" class="inp_inquiry"><label
											for="opt_troll3" class="lab_inquiry">음란성/선정성</label></li>
										<li><input type="radio" id="opt_troll4"
											name="opt_troll_11" value="A" class="inp_inquiry"><label
											for="opt_troll4" class="lab_inquiry">영리목적/홍보성</label></li>
										<li><input type="radio" id="opt_troll5"
											name="opt_troll_11" value="P" class="inp_inquiry"><label
											for="opt_troll5" class="lab_inquiry">개인정보노출</label></li>
										<li><input type="radio" id="opt_troll6"
											name="opt_troll_11" value="E" class="inp_inquiry"><label
											for="opt_troll6" class="lab_inquiry">같은 내용의 반복 게시(도배)</label></li>
										<li><input type="radio" id="opt_troll7"
											name="opt_troll_11" value="S" class="inp_inquiry"><label
											for="opt_troll7" class="lab_inquiry">악성코드</label></li>
										<li><input type="radio" id="opt_troll8"
											name="opt_troll_11" value="G" class="inp_inquiry"><label
											for="opt_troll8" class="lab_inquiry">기타</label></li>
									</ul>
								</div>
								<div class="txt_placeholder" style="display: none;">게시물의
									정확한 처리를 위해, 신고사유를 구체적으로 입력하여 주세요.</div>
								<textarea class="tf_etc" name="etcReason" title="신고사유" rows="60"
									cols="17" style="display: none;"></textarea>
								<button type="button" class="btn_cs btn_filedel">삭제</button>
							</div>
							<div class="troll_field">
								<span class="num_g">12</span> <input type="hidden"
									name="mergedUrlTroll" class="tf_inquiry"> <input
									type="text" name="urlAddr" class="tf_inquiry" title="게시글 주소">
								<input type="hidden" name="selectReason"
									class="tf_inquiry opt_hidden_value">
								<div class="select_custom select_live"
									data-select-custom-type="url" style="z-index: 10;">
									<a href="#opt_trolls" class="btn_select"><span
										class="txt_g">신고사유 선택</span><span class="bg_cs">
											=======</span></a>
									<ul id="opt_trolls" class="inquiry_option">
										<li><input type="radio" id="opt_troll1"
											name="opt_troll_12" value="U" class="inp_inquiry"><label
											for="opt_troll1" class="lab_inquiry">불법정보</label></li>
										<li><input type="radio" id="opt_troll2"
											name="opt_troll_12" value="C" class="inp_inquiry"><label
											for="opt_troll2" class="lab_inquiry">욕설/인신공격</label></li>
										<li><input type="radio" id="opt_troll3"
											name="opt_troll_12" value="O" class="inp_inquiry"><label
											for="opt_troll3" class="lab_inquiry">음란성/선정성</label></li>
										<li><input type="radio" id="opt_troll4"
											name="opt_troll_12" value="A" class="inp_inquiry"><label
											for="opt_troll4" class="lab_inquiry">영리목적/홍보성</label></li>
										<li><input type="radio" id="opt_troll5"
											name="opt_troll_12" value="P" class="inp_inquiry"><label
											for="opt_troll5" class="lab_inquiry">개인정보노출</label></li>
										<li><input type="radio" id="opt_troll6"
											name="opt_troll_12" value="E" class="inp_inquiry"><label
											for="opt_troll6" class="lab_inquiry">같은 내용의 반복 게시(도배)</label></li>
										<li><input type="radio" id="opt_troll7"
											name="opt_troll_12" value="S" class="inp_inquiry"><label
											for="opt_troll7" class="lab_inquiry">악성코드</label></li>
										<li><input type="radio" id="opt_troll8"
											name="opt_troll_12" value="G" class="inp_inquiry"><label
											for="opt_troll8" class="lab_inquiry">기타</label></li>
									</ul>
								</div>
								<div class="txt_placeholder" style="display: none;">게시물의
									정확한 처리를 위해, 신고사유를 구체적으로 입력하여 주세요.</div>
								<textarea class="tf_etc" name="etcReason" title="신고사유" rows="60"
									cols="17" style="display: none;"></textarea>
								<button type="button" class="btn_cs btn_filedel">삭제</button>
							</div>
							<div class="troll_field">
								<span class="num_g">13</span> <input type="hidden"
									name="mergedUrlTroll" class="tf_inquiry"> <input
									type="text" name="urlAddr" class="tf_inquiry" title="게시글 주소">
								<input type="hidden" name="selectReason"
									class="tf_inquiry opt_hidden_value">
								<div class="select_custom select_live"
									data-select-custom-type="url" style="z-index: 9;">
									<a href="#opt_trolls" class="btn_select"><span
										class="txt_g">신고사유 선택</span><span class="bg_cs">
											=======</span></a>
									<ul id="opt_trolls" class="inquiry_option">
										<li><input type="radio" id="opt_troll1"
											name="opt_troll_13" value="U" class="inp_inquiry"><label
											for="opt_troll1" class="lab_inquiry">불법정보</label></li>
										<li><input type="radio" id="opt_troll2"
											name="opt_troll_13" value="C" class="inp_inquiry"><label
											for="opt_troll2" class="lab_inquiry">욕설/인신공격</label></li>
										<li><input type="radio" id="opt_troll3"
											name="opt_troll_13" value="O" class="inp_inquiry"><label
											for="opt_troll3" class="lab_inquiry">음란성/선정성</label></li>
										<li><input type="radio" id="opt_troll4"
											name="opt_troll_13" value="A" class="inp_inquiry"><label
											for="opt_troll4" class="lab_inquiry">영리목적/홍보성</label></li>
										<li><input type="radio" id="opt_troll5"
											name="opt_troll_13" value="P" class="inp_inquiry"><label
											for="opt_troll5" class="lab_inquiry">개인정보노출</label></li>
										<li><input type="radio" id="opt_troll6"
											name="opt_troll_13" value="E" class="inp_inquiry"><label
											for="opt_troll6" class="lab_inquiry">같은 내용의 반복 게시(도배)</label></li>
										<li><input type="radio" id="opt_troll7"
											name="opt_troll_13" value="S" class="inp_inquiry"><label
											for="opt_troll7" class="lab_inquiry">악성코드</label></li>
										<li><input type="radio" id="opt_troll8"
											name="opt_troll_13" value="G" class="inp_inquiry"><label
											for="opt_troll8" class="lab_inquiry">기타</label></li>
									</ul>
								</div>
								<div class="txt_placeholder" style="display: none;">게시물의
									정확한 처리를 위해, 신고사유를 구체적으로 입력하여 주세요.</div>
								<textarea class="tf_etc" name="etcReason" title="신고사유" rows="60"
									cols="17" style="display: none;"></textarea>
								<button type="button" class="btn_cs btn_filedel">삭제</button>
							</div>
							<div class="troll_field">
								<span class="num_g">14</span> <input type="hidden"
									name="mergedUrlTroll" class="tf_inquiry"> <input
									type="text" name="urlAddr" class="tf_inquiry" title="게시글 주소">
								<input type="hidden" name="selectReason"
									class="tf_inquiry opt_hidden_value">
								<div class="select_custom select_live"
									data-select-custom-type="url" style="z-index: 8;">
									<a href="#opt_trolls" class="btn_select"><span
										class="txt_g">신고사유 선택</span><span class="bg_cs">
											=======</span></a>
									<ul id="opt_trolls" class="inquiry_option">
										<li><input type="radio" id="opt_troll1"
											name="opt_troll_14" value="U" class="inp_inquiry"><label
											for="opt_troll1" class="lab_inquiry">불법정보</label></li>
										<li><input type="radio" id="opt_troll2"
											name="opt_troll_14" value="C" class="inp_inquiry"><label
											for="opt_troll2" class="lab_inquiry">욕설/인신공격</label></li>
										<li><input type="radio" id="opt_troll3"
											name="opt_troll_14" value="O" class="inp_inquiry"><label
											for="opt_troll3" class="lab_inquiry">음란성/선정성</label></li>
										<li><input type="radio" id="opt_troll4"
											name="opt_troll_14" value="A" class="inp_inquiry"><label
											for="opt_troll4" class="lab_inquiry">영리목적/홍보성</label></li>
										<li><input type="radio" id="opt_troll5"
											name="opt_troll_14" value="P" class="inp_inquiry"><label
											for="opt_troll5" class="lab_inquiry">개인정보노출</label></li>
										<li><input type="radio" id="opt_troll6"
											name="opt_troll_14" value="E" class="inp_inquiry"><label
											for="opt_troll6" class="lab_inquiry">같은 내용의 반복 게시(도배)</label></li>
										<li><input type="radio" id="opt_troll7"
											name="opt_troll_14" value="S" class="inp_inquiry"><label
											for="opt_troll7" class="lab_inquiry">악성코드</label></li>
										<li><input type="radio" id="opt_troll8"
											name="opt_troll_14" value="G" class="inp_inquiry"><label
											for="opt_troll8" class="lab_inquiry">기타</label></li>
									</ul>
								</div>
								<div class="txt_placeholder" style="display: none;">게시물의
									정확한 처리를 위해, 신고사유를 구체적으로 입력하여 주세요.</div>
								<textarea class="tf_etc" name="etcReason" title="신고사유" rows="60"
									cols="17" style="display: none;"></textarea>
								<button type="button" class="btn_cs btn_filedel">삭제</button>
							</div>
							<div class="troll_field">
								<span class="num_g">15</span> <input type="hidden"
									name="mergedUrlTroll" class="tf_inquiry"> <input
									type="text" name="urlAddr" class="tf_inquiry" title="게시글 주소">
								<input type="hidden" name="selectReason"
									class="tf_inquiry opt_hidden_value">
								<div class="select_custom select_live"
									data-select-custom-type="url" style="z-index: 7;">
									<a href="#opt_trolls" class="btn_select"><span
										class="txt_g">신고사유 선택</span><span class="bg_cs">
											=======</span></a>
									<ul id="opt_trolls" class="inquiry_option">
										<li><input type="radio" id="opt_troll1"
											name="opt_troll_15" value="U" class="inp_inquiry"><label
											for="opt_troll1" class="lab_inquiry">불법정보</label></li>
										<li><input type="radio" id="opt_troll2"
											name="opt_troll_15" value="C" class="inp_inquiry"><label
											for="opt_troll2" class="lab_inquiry">욕설/인신공격</label></li>
										<li><input type="radio" id="opt_troll3"
											name="opt_troll_15" value="O" class="inp_inquiry"><label
											for="opt_troll3" class="lab_inquiry">음란성/선정성</label></li>
										<li><input type="radio" id="opt_troll4"
											name="opt_troll_15" value="A" class="inp_inquiry"><label
											for="opt_troll4" class="lab_inquiry">영리목적/홍보성</label></li>
										<li><input type="radio" id="opt_troll5"
											name="opt_troll_15" value="P" class="inp_inquiry"><label
											for="opt_troll5" class="lab_inquiry">개인정보노출</label></li>
										<li><input type="radio" id="opt_troll6"
											name="opt_troll_15" value="E" class="inp_inquiry"><label
											for="opt_troll6" class="lab_inquiry">같은 내용의 반복 게시(도배)</label></li>
										<li><input type="radio" id="opt_troll7"
											name="opt_troll_15" value="S" class="inp_inquiry"><label
											for="opt_troll7" class="lab_inquiry">악성코드</label></li>
										<li><input type="radio" id="opt_troll8"
											name="opt_troll_15" value="G" class="inp_inquiry"><label
											for="opt_troll8" class="lab_inquiry">기타</label></li>
									</ul>
								</div>
								<div class="txt_placeholder" style="display: none;">게시물의
									정확한 처리를 위해, 신고사유를 구체적으로 입력하여 주세요.</div>
								<textarea class="tf_etc" name="etcReason" title="신고사유" rows="60"
									cols="17" style="display: none;"></textarea>
								<button type="button" class="btn_cs btn_filedel">삭제</button>
							</div>
							<div class="troll_field">
								<span class="num_g">16</span> <input type="hidden"
									name="mergedUrlTroll" class="tf_inquiry"> <input
									type="text" name="urlAddr" class="tf_inquiry" title="게시글 주소">
								<input type="hidden" name="selectReason"
									class="tf_inquiry opt_hidden_value">
								<div class="select_custom select_live"
									data-select-custom-type="url" style="z-index: 6;">
									<a href="#opt_trolls" class="btn_select"><span
										class="txt_g">신고사유 선택</span><span class="bg_cs">
											=======</span></a>
									<ul id="opt_trolls" class="inquiry_option">
										<li><input type="radio" id="opt_troll1"
											name="opt_troll_16" value="U" class="inp_inquiry"><label
											for="opt_troll1" class="lab_inquiry">불법정보</label></li>
										<li><input type="radio" id="opt_troll2"
											name="opt_troll_16" value="C" class="inp_inquiry"><label
											for="opt_troll2" class="lab_inquiry">욕설/인신공격</label></li>
										<li><input type="radio" id="opt_troll3"
											name="opt_troll_16" value="O" class="inp_inquiry"><label
											for="opt_troll3" class="lab_inquiry">음란성/선정성</label></li>
										<li><input type="radio" id="opt_troll4"
											name="opt_troll_16" value="A" class="inp_inquiry"><label
											for="opt_troll4" class="lab_inquiry">영리목적/홍보성</label></li>
										<li><input type="radio" id="opt_troll5"
											name="opt_troll_16" value="P" class="inp_inquiry"><label
											for="opt_troll5" class="lab_inquiry">개인정보노출</label></li>
										<li><input type="radio" id="opt_troll6"
											name="opt_troll_16" value="E" class="inp_inquiry"><label
											for="opt_troll6" class="lab_inquiry">같은 내용의 반복 게시(도배)</label></li>
										<li><input type="radio" id="opt_troll7"
											name="opt_troll_16" value="S" class="inp_inquiry"><label
											for="opt_troll7" class="lab_inquiry">악성코드</label></li>
										<li><input type="radio" id="opt_troll8"
											name="opt_troll_16" value="G" class="inp_inquiry"><label
											for="opt_troll8" class="lab_inquiry">기타</label></li>
									</ul>
								</div>
								<div class="txt_placeholder" style="display: none;">게시물의
									정확한 처리를 위해, 신고사유를 구체적으로 입력하여 주세요.</div>
								<textarea class="tf_etc" name="etcReason" title="신고사유" rows="60"
									cols="17" style="display: none;"></textarea>
								<button type="button" class="btn_cs btn_filedel">삭제</button>
							</div>
							<div class="troll_field">
								<span class="num_g">17</span> <input type="hidden"
									name="mergedUrlTroll" class="tf_inquiry"> <input
									type="text" name="urlAddr" class="tf_inquiry" title="게시글 주소">
								<input type="hidden" name="selectReason"
									class="tf_inquiry opt_hidden_value">
								<div class="select_custom select_live"
									data-select-custom-type="url" style="z-index: 5;">
									<a href="#opt_trolls" class="btn_select"><span
										class="txt_g">신고사유 선택</span><span class="bg_cs">
											=======</span></a>
									<ul id="opt_trolls" class="inquiry_option">
										<li><input type="radio" id="opt_troll1"
											name="opt_troll_17" value="U" class="inp_inquiry"><label
											for="opt_troll1" class="lab_inquiry">불법정보</label></li>
										<li><input type="radio" id="opt_troll2"
											name="opt_troll_17" value="C" class="inp_inquiry"><label
											for="opt_troll2" class="lab_inquiry">욕설/인신공격</label></li>
										<li><input type="radio" id="opt_troll3"
											name="opt_troll_17" value="O" class="inp_inquiry"><label
											for="opt_troll3" class="lab_inquiry">음란성/선정성</label></li>
										<li><input type="radio" id="opt_troll4"
											name="opt_troll_17" value="A" class="inp_inquiry"><label
											for="opt_troll4" class="lab_inquiry">영리목적/홍보성</label></li>
										<li><input type="radio" id="opt_troll5"
											name="opt_troll_17" value="P" class="inp_inquiry"><label
											for="opt_troll5" class="lab_inquiry">개인정보노출</label></li>
										<li><input type="radio" id="opt_troll6"
											name="opt_troll_17" value="E" class="inp_inquiry"><label
											for="opt_troll6" class="lab_inquiry">같은 내용의 반복 게시(도배)</label></li>
										<li><input type="radio" id="opt_troll7"
											name="opt_troll_17" value="S" class="inp_inquiry"><label
											for="opt_troll7" class="lab_inquiry">악성코드</label></li>
										<li><input type="radio" id="opt_troll8"
											name="opt_troll_17" value="G" class="inp_inquiry"><label
											for="opt_troll8" class="lab_inquiry">기타</label></li>
									</ul>
								</div>
								<div class="txt_placeholder" style="display: none;">게시물의
									정확한 처리를 위해, 신고사유를 구체적으로 입력하여 주세요.</div>
								<textarea class="tf_etc" name="etcReason" title="신고사유" rows="60"
									cols="17" style="display: none;"></textarea>
								<button type="button" class="btn_cs btn_filedel">삭제</button>
							</div>
							<div class="troll_field">
								<span class="num_g">18</span> <input type="hidden"
									name="mergedUrlTroll" class="tf_inquiry"> <input
									type="text" name="urlAddr" class="tf_inquiry" title="게시글 주소">
								<input type="hidden" name="selectReason"
									class="tf_inquiry opt_hidden_value">
								<div class="select_custom select_live"
									data-select-custom-type="url" style="z-index: 4;">
									<a href="#opt_trolls" class="btn_select"><span
										class="txt_g">신고사유 선택</span><span class="bg_cs">
											=======</span></a>
									<ul id="opt_trolls" class="inquiry_option">
										<li><input type="radio" id="opt_troll1"
											name="opt_troll_18" value="U" class="inp_inquiry"><label
											for="opt_troll1" class="lab_inquiry">불법정보</label></li>
										<li><input type="radio" id="opt_troll2"
											name="opt_troll_18" value="C" class="inp_inquiry"><label
											for="opt_troll2" class="lab_inquiry">욕설/인신공격</label></li>
										<li><input type="radio" id="opt_troll3"
											name="opt_troll_18" value="O" class="inp_inquiry"><label
											for="opt_troll3" class="lab_inquiry">음란성/선정성</label></li>
										<li><input type="radio" id="opt_troll4"
											name="opt_troll_18" value="A" class="inp_inquiry"><label
											for="opt_troll4" class="lab_inquiry">영리목적/홍보성</label></li>
										<li><input type="radio" id="opt_troll5"
											name="opt_troll_18" value="P" class="inp_inquiry"><label
											for="opt_troll5" class="lab_inquiry">개인정보노출</label></li>
										<li><input type="radio" id="opt_troll6"
											name="opt_troll_18" value="E" class="inp_inquiry"><label
											for="opt_troll6" class="lab_inquiry">같은 내용의 반복 게시(도배)</label></li>
										<li><input type="radio" id="opt_troll7"
											name="opt_troll_18" value="S" class="inp_inquiry"><label
											for="opt_troll7" class="lab_inquiry">악성코드</label></li>
										<li><input type="radio" id="opt_troll8"
											name="opt_troll_18" value="G" class="inp_inquiry"><label
											for="opt_troll8" class="lab_inquiry">기타</label></li>
									</ul>
								</div>
								<div class="txt_placeholder" style="display: none;">게시물의
									정확한 처리를 위해, 신고사유를 구체적으로 입력하여 주세요.</div>
								<textarea class="tf_etc" name="etcReason" title="신고사유" rows="60"
									cols="17" style="display: none;"></textarea>
								<button type="button" class="btn_cs btn_filedel">삭제</button>
							</div>
							<div class="troll_field">
								<span class="num_g">19</span> <input type="hidden"
									name="mergedUrlTroll" class="tf_inquiry"> <input
									type="text" name="urlAddr" class="tf_inquiry" title="게시글 주소">
								<input type="hidden" name="selectReason"
									class="tf_inquiry opt_hidden_value">
								<div class="select_custom select_live"
									data-select-custom-type="url" style="z-index: 3;">
									<a href="#opt_trolls" class="btn_select"><span
										class="txt_g">신고사유 선택</span><span class="bg_cs">
											=======</span></a>
									<ul id="opt_trolls" class="inquiry_option">
										<li><input type="radio" id="opt_troll1"
											name="opt_troll_19" value="U" class="inp_inquiry"><label
											for="opt_troll1" class="lab_inquiry">불법정보</label></li>
										<li><input type="radio" id="opt_troll2"
											name="opt_troll_19" value="C" class="inp_inquiry"><label
											for="opt_troll2" class="lab_inquiry">욕설/인신공격</label></li>
										<li><input type="radio" id="opt_troll3"
											name="opt_troll_19" value="O" class="inp_inquiry"><label
											for="opt_troll3" class="lab_inquiry">음란성/선정성</label></li>
										<li><input type="radio" id="opt_troll4"
											name="opt_troll_19" value="A" class="inp_inquiry"><label
											for="opt_troll4" class="lab_inquiry">영리목적/홍보성</label></li>
										<li><input type="radio" id="opt_troll5"
											name="opt_troll_19" value="P" class="inp_inquiry"><label
											for="opt_troll5" class="lab_inquiry">개인정보노출</label></li>
										<li><input type="radio" id="opt_troll6"
											name="opt_troll_19" value="E" class="inp_inquiry"><label
											for="opt_troll6" class="lab_inquiry">같은 내용의 반복 게시(도배)</label></li>
										<li><input type="radio" id="opt_troll7"
											name="opt_troll_19" value="S" class="inp_inquiry"><label
											for="opt_troll7" class="lab_inquiry">악성코드</label></li>
										<li><input type="radio" id="opt_troll8"
											name="opt_troll_19" value="G" class="inp_inquiry"><label
											for="opt_troll8" class="lab_inquiry">기타</label></li>
									</ul>
								</div>
								<div class="txt_placeholder" style="display: none;">게시물의
									정확한 처리를 위해, 신고사유를 구체적으로 입력하여 주세요.</div>
								<textarea class="tf_etc" name="etcReason" title="신고사유" rows="60"
									cols="17" style="display: none;"></textarea>
								<button type="button" class="btn_cs btn_filedel">삭제</button>
							</div>
							<div class="troll_field">
								<span class="num_g">20</span> <input type="hidden"
									name="mergedUrlTroll" class="tf_inquiry"> <input
									type="text" name="urlAddr" class="tf_inquiry" title="게시글 주소">
								<input type="hidden" name="selectReason"
									class="tf_inquiry opt_hidden_value">
								<div class="select_custom select_live"
									data-select-custom-type="url" style="z-index: 2;">
									<a href="#opt_trolls" class="btn_select"><span
										class="txt_g">신고사유 선택</span><span class="bg_cs">
											=======</span></a>
									<ul id="opt_trolls" class="inquiry_option">
										<li><input type="radio" id="opt_troll1"
											name="opt_troll_20" value="U" class="inp_inquiry"><label
											for="opt_troll1" class="lab_inquiry">불법정보</label></li>
										<li><input type="radio" id="opt_troll2"
											name="opt_troll_20" value="C" class="inp_inquiry"><label
											for="opt_troll2" class="lab_inquiry">욕설/인신공격</label></li>
										<li><input type="radio" id="opt_troll3"
											name="opt_troll_20" value="O" class="inp_inquiry"><label
											for="opt_troll3" class="lab_inquiry">음란성/선정성</label></li>
										<li><input type="radio" id="opt_troll4"
											name="opt_troll_20" value="A" class="inp_inquiry"><label
											for="opt_troll4" class="lab_inquiry">영리목적/홍보성</label></li>
										<li><input type="radio" id="opt_troll5"
											name="opt_troll_20" value="P" class="inp_inquiry"><label
											for="opt_troll5" class="lab_inquiry">개인정보노출</label></li>
										<li><input type="radio" id="opt_troll6"
											name="opt_troll_20" value="E" class="inp_inquiry"><label
											for="opt_troll6" class="lab_inquiry">같은 내용의 반복 게시(도배)</label></li>
										<li><input type="radio" id="opt_troll7"
											name="opt_troll_20" value="S" class="inp_inquiry"><label
											for="opt_troll7" class="lab_inquiry">악성코드</label></li>
										<li><input type="radio" id="opt_troll8"
											name="opt_troll_20" value="G" class="inp_inquiry"><label
											for="opt_troll8" class="lab_inquiry">기타</label></li>
									</ul>
								</div>
								<div class="txt_placeholder" style="display: none;">게시물의
									정확한 처리를 위해, 신고사유를 구체적으로 입력하여 주세요.</div>
								<textarea class="tf_etc" name="etcReason" title="신고사유" rows="60"
									cols="17" style="display: none;"></textarea>
								<button type="button" class="btn_cs btn_filedel">삭제</button>
							</div>

						</div>
					</div>

					<div class="inquiry_more">
						<div class="cont_inquiry inquiry_file custom_multi_file"
							data-required="customFile">

							<div class="wrap_label">
								<label for="file" class="lab_inquiry">첨부</label> <a
									href="#file_layer" id="btn_file_layer" class="bg_cs btn_layer">첨부파일
									참고사항</a>
							</div>
							<div id="file_layer" class="cs_layer">
								<div class="inner_cs_layer inner_file_layer">
									<div class="desc_file fst">
										<strong class="tit_file">첨부 방법 안내</strong>
										<ul class="list_file">
											<li>① 파일찾기 버튼을 클릭</li>
											<li>② [파일 선택] 창이 뜨면, 첨부가 필요한 파일을 찾아 클릭</li>
											<li>③ 파일 첨부가 잘못 되었거나 용량초과일 경우 [삭제] 버튼을 누르거나 파일을 다시 선택</li>
										</ul>
										<p class="emph_file">* 특정 화면에 관련된 문의는 화면을 캡쳐하여 보내주시면 더욱
											정확한 상담이 가능합니다.</p>
									</div>
									<div class="desc_file">
										<strong class="tit_file">캡쳐 방법 안내</strong>
										<ul class="list_file">
											<li>① 캡쳐할 화면을 맨 앞으로 합니다.</li>
											<li>② 키보드 우측 상단의 Print Screen 버튼을 누릅니다.</li>
											<li>③ 시작 &gt; 프로그램 &gt; 보조프로그램 &gt; 그림판을 열고 저장합니다(Ctrl +
												V)</li>
											<li>④ 위의 첨부 방법에 따라 파일을 찾아 클릭합니다.</li>
										</ul>
									</div>
									<a href="#btn_file_layer" class="bg_cs btn_close">닫기</a>
								</div>
							</div>

							<div class="wrap_field">
								<button type="button" class="btn_cs btn_addfile">+ 첨부파일
									추가</button>
								<div class="file_size">
									<!-- 파일크기 초과일때 over_size 추가 -->
									<span class="size_bar"><span class="inner_bar"
										style="width: 0%"></span></span> <span class="txt_size">0MB</span> <em
										class="emph_over">제한된 파일 크기 초과!</em>
								</div>
								<p class="file_notice">
									첨부한 파일의 전체 크기는 10Mbyte 미만이어야 합니다.<br> 용량이 초과될 경우, 문의 접수가
									원활하게 진행되지 않을 수 있습니다.<br> 파일첨부는 JPG, GIF, PSD, TIF, MS
									Office 파일, 아래한글, PDF만 가능합니다.
								</p>
							</div>

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

					<div class="inquiry_function">
						<button type="submit" class="btn_cs2 btn_submit">신고 접수</button>
					</div>

				</fieldset>
			</form>
		</div>
	</section>
	<%@ include file="../../common/footer.jsp"%>


</body>
</html>