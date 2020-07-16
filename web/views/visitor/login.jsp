<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<link rel="stylesheet" href="//s.wemep.co.kr/ui/v2.7.13/dist/pc/css/common/common.css">
<link rel="stylesheet" href="//s.wemep.co.kr/ui/v2.7.13/dist/pc/css/common/layout.css">
<link rel="stylesheet" href="//s.wemep.co.kr/ui/v2.7.13/dist/pc/css/pages/mix_common.css">
<link rel="stylesheet" href="//s.wemep.co.kr/front/assets/css/motion.css?20200601_1">
<link rel="stylesheet" href="//s.wemep.co.kr/ui/v2.7.13/dist/pc/css/pages/member.css">
<script src="//s.wemep.co.kr/front/assets/js/pc/vendor.js?20200601_1"></script>
<script src="//s.wemep.co.kr/front/assets/js/pc/plugins.js?20200601_1"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>


<title>Insert title here</title>
<style>
div {
	margin-top: 1%;
}

.login_wrap {
	width: 556px;
	margin: 0 auto;
}

.login_wrap .login_inner {
	position: relative;
	border: 1px solid #ededed;
	padding: 60px;
	margin-top: 30px;
	color: #ededed;
}

.login_wrap .login_inner {
	position: relative;
	border: 1px solid #ededed;
	padding: 30px;
	margin-top: 30px;
	color: #ededed;
}

.login_wrap .tab_info {
	height: 54px;
	margin-bottom: 20px;
	border-bottom: 2px solid #333;
}

.tab_info li {
	float: left;
	width: 154px;
	height: 100%;
}

h4 {
	display: block;
	margin-block-start: 1.33em;
	margin-block-end: 1.33em;
	margin-inline-start: 0px;
	margin-inline-end: 0px;
}

.login_wrap .tab_info .on a {
	height: 14px;
	padding: 19px 0 21px 0;
	border-width: 2px 2px 0 2px;
	color: #333;
}

#_loginCheck li {
	width: 150px;
}

.btns.etc_login {
	width: 190px;
	height: 70px;
	background-position: -200px 0;
}

#loginfooter {
	margin-top: 10%;
}
</style>
</head>
<body>
	<%@ include file="../common/nonNav.jsp"%>

	<div align="center">
		<br> <img src="../../resources/img/OHmyGymLogo.png">
		<div class="login_wrap">
			<div class="login_inner">
				<div id="_loginArea" class="login_area" data-container="loginArea">
					<div class="wrap_tab">
						<ul id="_loginTab" class="tab_info" data-container="loginTab">
							<li class="on" id="flogin" onclick="doDisplay();"><a class="tab1"><span>팔로워 로그인</span></a></li>
							<li  id="tlogin" onclick="doDisplay2();"><a class="tab2"> <span>트레이너 로그인</span></a></li>
						</ul>

						<!------------------------------팔로워-------------------------------------->
						<div id="_tab1" class="tab_cont" style="display: block;">
							<h5 class="blind">팔로워 로그인</h5>
							<form id="floginForm"
								action="<%=request.getContextPath()%>/login.me" method="post">
								<div class="member_login">
									<ul>
										<li>
											<div class="input_area">
												<input type="text" name="loginId" class="inpt_default" placeholder="팔로워 아이디" maxlength="150" style="width: 290px" autocomplete="off">
											</div>
										</li>
										<li>
											<div class="input_area">
												<input type="password" name="loginPw" class="inpt_default" placeholder="팔로워 비밀번호" style="width: 290px;">
											</div>
										</li>
									</ul>
								</div>
							
							<!-- 횟수초과시 -->
							<p class="inpt_er_text" style="display: none;">아이디, 비밀번호를 다시 확인해 주세요.</p>
							<div id="_captcha" class="captcha" style="display: none">
								<div class="captch_wp">
									<div class="img_captcha">
										<img id="_captchaImage" height="60" width="356" class="img_captcha_txt" src="">
									</div>
									<a href="#" id="play_audio" class="btn_sys sml_m btn_cap_1"
										data-login-btn="audio" tabindex="3"><span>음성듣기</span></a> <a
										href="#"><span>새로고침</span></a>
								</div>
								<div class="member_login">
									<ul>
										<li>
											<div class="input_area">
												<input type="text"
													id="_captchaWord" class="inpt_default" data-login="text"
													value="" placeholder="자동입력 방지문자" maxlength="5"
													style="width: 290px; display: none"> <i
													class="ico ico_inp_captcha_ok" data-login-captcha="ok"
													style="display: none">성공</i> <i
													class="ico ico_inp_captcha_err" data-login-captcha="error"
													style="display: none">실패</i>
											</div>
										</li>
									</ul>
								</div>
								<p class="inpt_er_text" data-login-captcha="errorText"
									style="display: none">자동입력 방지문자가 일치하지 않습니다. 다시 입력해 주세요.</p>
							</div>


							<!-- 로그인버튼 -->
							<div class="btn_login_area">
								<a onclick="flogin();" id="_userLogin"
									class="btns_sys red_big_xb"><span>로그인</span></a>
							</div>
							<div class="btn_login_area">
								<a href="javascript:void(0);" id="_userLogin"
									class="btns_sys red_big_xb" data-login-btn="login"><span>팔로워
										회원가입</span></a>
							</div>
							<div id="_loginCheck" class="chk_login_area">
								<ul>
									<li><label for="_chkBtnLogin" class="chk_box"
										data-login="autoLogin"><input type="checkbox"
											id="_chkBtnLogin"> 로그인 상태 유지</label></li>
									<li><label for="_chkBtnSave" class="chk_box "
										data-login="saveId"> <input type="checkbox"
											id="_chkBtnSave"> 아이디 저장
									</label></li>
								</ul>
							</div>
							<div id="_findLoginArea" class="find_login_area">
								<a href="../follower/followerLogin/followerFindId.jsp" class="find">아이디/비밀번호 찾기</a>
							</div>
											 
					 	<!-- 팔로워/트레이너 여부전송용-->
					 	<input type="text" name="loginType" id="loginType" style="display: none;" value="follower">
</form>
						</div>
						
						<!------------------------------트레이너------------------------------------->
						<div id="_tab2" class="tab_cont" data-login="tab"
							style="display: none;">
							<h5 class="blind">트레이너 로그인</h5>
							<form id="tloginForm" action="<%=request.getContextPath()%>/login.me" method="post">
								<div class="member_login">
									<ul>
										<li>
											<div class="input_area" data-otom-el="container">
												<input type="text" name="loginId" class="inpt_default" value="" placeholder="트레이너 아이디" maxlength="150" style="width: 290px" autocomplete="off">
											</div>
										</li>
										<li>
											<div class="input_area">
												<input type="password" name="loginPw" class="inpt_default" value="" placeholder="트레이너 비밀번호" style="width: 290px;">
											</div>
										</li>
									</ul>
								</div>

							<div class="btn_login_area">
								<a onclick="tlogin();" id="_nonUserLogin" class="btns_sys red_big_xb"><span>로그인</span></a>
							</div>
							<div class="btn_login_area">
								<a href="" id="_userLogin" class="btns_sys red_big_xb"><span>트레이너 회원가입</span></a>
							</div>
							<div id="_loginCheck" class="chk_login_area">
								<ul>
									<li><label for="_chkBtnLogin" class="chk_box"><input type="checkbox" id="_chkBtnLogin"> 로그인 상태 유지</label></li>
									<li><label for="_chkBtnSave" class="chk_box "><input type="checkbox" id="_chkBtnSave"> 아이디 저장</label></li>
								</ul>
							</div>

							<div class="none_login_area">
								<ul class="list_type">
									<li>트레이너 회원은 가입 후 인증 절차를 거쳐야 정식트레이너로 활동이 가능합니다.</li>
									<li>승인절차에 대한 문의는 고객센터(010-9974-8184)로 문의 부탁드립니다.</li>
								</ul>
							</div>
							<div id="_findLoginArea" class="find_login_area">
								<a href="//front.wemakeprice.com/user/find/id" class="find">아이디찾기</a>
								<a href="//front.wemakeprice.com/user/find/pw" class="find">비밀번호찾기</a>
							</div>
								<!-- 팔로워/트레이너 여부전송용-->
					 	<input type="text" name="loginType" id="loginType" style="display: none;" value="trainer">
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
</div>

		<div id="loginfooter">
			<%@ include file="../common/footer.jsp"%>
		</div>

		<script>
			function doDisplay() {
				var con = document.getElementById("_tab1");
				var con2 = document.getElementById("_tab2");
				
				if (con.style.display == 'none') {
					con.style.display = 'block';
					con2.style.display = 'none';
				}
				
				document.getElementById("flogin").className = "on";
				document.getElementById("tlogin").className = "";
			}

			function doDisplay2() {

				var con = document.getElementById("_tab1");
				var con2 = document.getElementById("_tab2");
				

				if (con2.style.display == 'none') {
					con.style.display = 'none';
					con2.style.display = 'block';
				}
				
				document.getElementById("flogin").className = "";
				document.getElementById("tlogin").className = "on";
			}

			function flogin() {

				$("#floginForm").submit();
				
			}
			
			function tlogin() {

				$("#tloginForm").submit();
				
			}
			
		</script>
</body>
</html>