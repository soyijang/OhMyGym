<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="//s.wemep.co.kr/ui/v2.7.13/dist/pc/css/common/common.css">
<link rel="stylesheet"
	href="//s.wemep.co.kr/ui/v2.7.13/dist/pc/css/common/layout.css">
<link rel="stylesheet"
	href="//s.wemep.co.kr/ui/v2.7.13/dist/pc/css/pages/mix_common.css">
<link rel="stylesheet"
	href="//s.wemep.co.kr/front/assets/css/motion.css?20200601_1">
<link rel="stylesheet"
	href="//s.wemep.co.kr/ui/v2.7.13/dist/pc/css/pages/member.css">
<script src="//s.wemep.co.kr/front/assets/js/pc/vendor.js?20200601_1"></script>
<script src="//s.wemep.co.kr/front/assets/js/pc/plugins.js?20200601_1"></script>

<style>
.login_wrap {
	margin-top: 100px;
}

.login_wrap .tab_info .on a {
	height: 14px;
	padding: 19px 0 21px 0;
	border-width: 2px 2px 0 2px;
	color: #333;
}

.findId_wrap {
	display: none;
	position: fixed;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	z-index: 10000
}

.dark_bg {
	position: absolute;
	width: 100%;
	height: 100%;
	background: #000;
	filter: alpha(opacity = 60);
	opacity: .6;
	-moz-opacity: .6
}

.findId_box {
	position: relative;
	top: 25%;
	width: 475px;
	height: 330px;
	background: #fff;
	margin: 0 auto;
	border-radius: 4px;
	background: #fff;
	border: 1px solid #ccc
}

.login_box .close {
	position: absolute;
	right: 6px;
	top: 6px;
	width: 16px;
	height: 16px;
	cursor: pointer
}

img.close {
	position: absolute;
	right: 6px;
	top: 6px;
	width: 16px;
	height: 16px;
	cursor: pointer
}

.findPass_wrap {
	display: none;
	position: fixed;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	z-index: 10000
}

.findPass_box {
	position: relative;
	top: 25%;
	width: 475px;
	height: 340px;
	background: #fff;
	margin: 0 auto;
	border-radius: 4px;
	background: #fff;
	border: 1px solid #ccc
}

.findPass_box .close {
	position: absolute;
	right: 6px;
	top: 6px;
	width: 16px;
	height: 16px;
	cursor: pointer
}

input.findInput {
	width: 140px;
	height: 30px;
}

input.findInputBtn {
	width: 140px;
	height: 30px;
}

label.findText {
	font-size: 1.1em;
	font-weight: bold;
}

.sendNum {
	margin-top : 10px;
	padding: 5px;
	cursor: pointer;
	width: 140px;
	height: 30px;
	background-color: orangered;
	color : white;
	font-weight: bold;
}
</style>

</head>
<body>

	<!-- 아이디찾기 세부영역 -->
	<div class="findId_wrap" style="display: none;">
		<div class="dark_bg" onclick="jQuery('.findId_wrap').fadeOut('fast')"></div>
		<div class="findId_box">

			<div style="width: 100%; height: 30px; background: orangered; border-radius: 8px;">
				<div style="color: white; font-weight: bold; font-family: 'Noto Sans KR'; margin-left: 200px; padding-top: 5px;">아이디 찾기</div>
				<img class="close" onclick="jQuery('.findId_wrap').fadeOut('fast')" src="/omg/resources/img_icon/closeIcon.png" width="20px" height="20px">
			</div>
			
			<div class="findId_content" style="text-align: center; margin-top: 25px">
				
				<form id="findIdForm" action="" method="post">
					<label class="findText"> 가입시 입력하신 성명과 전화번호를 <br>정확히 입력후 인증번호를 입력하세요</label><br> <br>
					<div style="text-align: left; margin-left: 167px;">
						<input class="findInput" type="text" name="findId_Name" placeholder="이름"><br> <br> 
						<input class="findInput" type="text" name="findId_Phone" placeholder="전화번호"><br>
						<button onclick="bonin(2);" class="sendNum">인증번호 전송</button><br> 
						<input class="findInput" type="text" name="findId_Num" style="margin-top: 10px" placeholder="인증번호">
					<br><button onclick="bonin(1);" class="findInputBtn" value="아이디 찾기">아이디 찾기</button><br>
					</div>
				</form>
			</div>
		</div>
	</div>


	<!-- 비밀번호 찾기 세부영역-->
	<div class="findPass_wrap" style="display: none;">
		<div class="dark_bg"
			onclick="jQuery('.findPass_wrap').fadeOut('fast')"></div>
		<div class="findPass_box">
			<div style="width: 100%; height: 30px; background: orangered; border-radius: 8px;">
				<div style="color: white; font-weight: bold; font-family: 'Noto Sans KR'; margin-left: 200px; padding-top: 5px;">비밀번호 찾기</div>
				<img class="close" onclick="jQuery('.findPass_wrap').fadeOut('fast')" src="/omg/resources/img_icon/closeIcon.png" width="20px" height="20px">
			</div>
			<div class="findPass_content" style="text-align: center; margin-top: 25px">
				<form id="findPassForm" action="<%=request.getContextPath()%>/findPass.me" method="post">
					<label class="findText"> 가입시 입력하신 아이디와 이름, 전화번호를<br> 정확히 입력후 인증번호를 입력해주세요 </label><br> <br>
					<div style="text-align: left; margin-left: 167px;">
						<input class="findInput" type="text" name="findPass_Id" placeholder="아이디"><br> <br> 
						<input class="findInput" type="text" name="findPass_Name" placeholder="이름"><br> <br> 
						<input class="findInput" type="text" name="findPass_Phone" placeholder="전화번호"> 
						<a class="sendNum" onclick="" style="">인증번호 전송</a> <br> 
						<input class="findInput" type="text" name="findId_Num" style="margin-top: 10px" placeholder="인증번호">
					</div>
					<br><input class="findInputBtn" type="submit" value="비밀번호찾기버튼">
					<!-- 문자보내기 API사용 -->
				</form>
			</div>
		</div>
	</div>

	<%@ include file="/views/common/nonNav.jsp"%>
	<!-- 첫목록 -->
	<section style="height: 800px;">
		<div class="login_wrap">
			<h4 class="tit t_find_id_pw">아이디/비밀번호 찾기</h4>
			<div class="login_inner">
				<div class="wrap_tab">
					<ul id="_findTab" class="tab_info">
						<li class="on" id="idfind" onclick="doDisplay();"><a
							class="tab1"> <span>아이디 찾기</span>
						</a></li>
						<li id="pwdfind" onclick="doDisplay2();"><a class="tab2">
								<span>비밀번호 변경하기</span>
						</a></li>
					</ul>
					<div id="_tab1" class="tab_cont">
						<h5 class="blind">아이디 찾기</h5>
						<div class="find_gate">
							<i class="ico ico_phone"></i>
							<p class="title">등록된 휴대폰 번호로 아이디 찾기</p>
							<p class="text_small">가입 당시 입력한 휴대폰 번호로 인증번호를 발송합니다.</p>
							<a onclick="jQuery('.findId_wrap').fadeIn('fast');"
								class="btns_sys red_mid_d" data-find-btn="idGatePhone"><span>확인</span></a>
						</div>
						<div class="find_gate">
							<i class="ico ico_phone_chk"></i>
							<p class="title">본인명의 휴대폰으로 인증</p>
							<p class="text_small">회원님의 명의로 등록된 휴대폰으로 가입여부 및 본인여부를 확인합니다.</p>
							<!-- 휴대폰본인인증 api 연결 -->
							<a href="javascript:void(0);" class="btns_sys red_mid_d"
								data-find-btn="idGateCertify"><span>확인</span></a>
						</div>
					</div>
					<div id="_tab2" class="tab_cont" style="display: none">
						<h5 class="blind">비밀번호 변경하기</h5>
						<div class="find_gate">
							<i class="ico ico_phone"></i>
							<p class="title">등록된 휴대폰 번호로 비밀번호 변경하기</p>
							<p class="text_small">가입 당시 입력한 휴대폰 번호로 인증번호를 발송합니다.</p>
							<a onclick="jQuery('.findPass_wrap').fadeIn('fast');"
								class="btns_sys red_mid_d" data-find-btn="pwGatePhone"><span>확인</span></a>
						</div>
						<div class="find_gate">
							<i class="ico ico_email"></i>
							<p class="title">등록된 이메일로 변경하기</p>
							<p class="text_small">가입 당시 입력한 이메일로 비밀번호 재설정 메일을 발송합니다.</p>
							<a onclick=doDisplay3(); class="btns_sys red_mid_d"
								data-find-btn="pwGateEmail"><span>확인</span></a>
						</div>
					</div>
					
					<!-- 이메일로 비번찾기 - 구글메일 api연결예정 -->
					<div id="_findInEmail" class="tab_cont" style="display: none">
						<h5 class="blind">비밀번호 찾기</h5>
						<div class="find_idpw">
							<div class="find_top">
								<i class="ico ico_email_1"></i>
								<p class="title">등록된 이메일로 찾기</p>
								<p class="text_small">가입 당시 입력한 이메일로 비밀번호 재설정 메일을 발송합니다.</p>
							</div>
							<div class="input_area">
								<label for="_findEmailName" class="lbl_type"></label> <input
									type="text" id="_findEmailName" placeholder="이름"
									class="inpt_default" value="" style="width: 350px;">
							</div>
							<div class="input_area" data-otom-el="container">
								<i class="ico ico_inp_id"></i> <label for="_findEmailId"
									class="lbl_type"></label> <input type="email"
									data-otom-el="input" placeholder="이메일" id="_findEmailId"
									class="inpt_default" value="" style="width: 350px;"
									maxlength="150" autocomplete="off" aria-expanded="false"
									aria-autocomplete="list" aria-haspopup="listbox"
									role="combobox">
								<div class="auto_complete" data-otom-el="result"
									aria-atomic="true" aria-live="assertive" role="listbox"></div>
							</div>
							<div class="btn_agree_area">
								<a href="javascript:void(0);" id="_confirm"
									class="btns_sys red_big_xb add_space"><span>확인</span></a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<footer>
		<%@ include file="../../common/footer.jsp"%>
	</footer>
	<script>
	
	function doDisplay(){
		var con = document.getElementById("_tab1");
		var con2 = document.getElementById("_tab2");
		var con3 = document.getElementById("_findInEmail");
		
		if(con.style.display=='none'){
			con.style.display = 'block';
			con2.style.display = 'none';
		}
			con3.style.display = 'none';
		
		document.getElementById("idfind").className = "on";
		document.getElementById("pwdfind").className = "";

	}
	
	function doDisplay2() {
		
		var con = document.getElementById("_tab1");
		var con2 = document.getElementById("_tab2");
		var con3 = document.getElementById("_findInEmail");
		
		 if (con2.style.display=='none'){
				con.style.display = 'none';
				con2.style.display = 'block';
			}
			con3.style.display = 'none';
		 
		 document.getElementById("pwdfind").className = "on";
		 document.getElementById("idfind").className = "";
	}
	
	function doDisplay3() {
		
		var con = document.getElementById("_tab2");
		var con2 = document.getElementById("_findInEmail");
		
		 if (con2.style.display=='none'){
				con.style.display = 'none';
				con2.style.display = 'block';
			}
		
	}
	
	function bonin(index){
		
	/* 	var page = ""; */
		if(index == 1){
		/* 	page= "findId.me"; */
			document.getElementById('findIdForm').action="<%=request.getContextPath()%>/findId.me"; 
		}
		else if(index == 2){
			page = "sendmail.me";
			<%-- document.getElementById('findIdForm').action="<%=request.getContextPath()%>/sendmail.me"; --%>
		}
		/* $("#findIdForm").submit(); */
		
		$.ajax({
			url: page,
			type: "get",
			data: {
				findIdForm:findIdForm
			},
			success: function (data) {
				console.log("성공!");
			},
			error: function (data) {
				console.log("실패!");
			}
			
		});
	}
	
	</script>

</body>
</html>