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

	<div align="center" style="margin-top: 10%;">
		<br><img src="../../resources/img/OHmyGymLogo.png">
		<div class="login_wrap">
			<div class="login_inner">
				<div id="_loginArea" class="login_area" data-container="loginArea">
					<div class="wrap_tab">

						<!-----------------------------관리자로그인------------------------------------->
						<div id="_tab1" class="tab_cont" style="display: block;">
							<form id="mloginForm"
								action="<%=request.getContextPath()%>/login.mg" method="post">
								<div class="member_login">
									<ul>
										<li>
											<div class="input_area">
												<input type="text" name="loginId" class="inpt_default" placeholder="관리자 아이디" maxlength="150" style="width: 290px" autocomplete="off">
											</div>
										</li>
										<li>
											<div class="input_area">
												<input type="password" name="loginPw" class="inpt_default" placeholder="관리자 비밀번호" style="width: 290px;">
											</div>
										</li>
									</ul>
								</div>

							<!-- 로그인버튼 -->
							<div class="btn_login_area">
								<a onclick="mlogin();" id="_userLogin"
									class="btns_sys red_big_xb"><span>로그인</span></a>
							</div>
							<h4 style="color: black;">※ 관리자 신규가입요청은 마스터계정에서 '개발요청페이지'를 통해 진행바랍니다.</h4>
						</form>
			</div></div></div>
		</div>
	</div>
</div>

		<script>

			function mlogin() {
				$("#mloginForm").submit();
			}
			

			
		</script>
</body>
</html>