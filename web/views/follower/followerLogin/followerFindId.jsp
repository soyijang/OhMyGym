<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.omg.jsp.member.controller.*"%>
	
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="//s.wemep.co.kr/ui/v2.7.13/dist/pc/css/common/common.css">
<link rel="stylesheet" href="//s.wemep.co.kr/ui/v2.7.13/dist/pc/css/common/layout.css">
<link rel="stylesheet" href="//s.wemep.co.kr/ui/v2.7.13/dist/pc/css/pages/mix_common.css">
<link rel="stylesheet" href="//s.wemep.co.kr/front/assets/css/motion.css?20200601_1">
<link rel="stylesheet" href="//s.wemep.co.kr/ui/v2.7.13/dist/pc/css/pages/member.css">
<script src="//s.wemep.co.kr/front/assets/js/pc/vendor.js?20200601_1"></script>
<script src="//s.wemep.co.kr/front/assets/js/pc/plugins.js?20200601_1"></script>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
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
							<a onclick="doDisplay4();" class="btns_sys red_mid_d" data-find-btn="idGatePhone"><span>확인</span></a>
						</div>
					</div>
					<div id="_tab2" class="tab_cont" style="display: none">
						<h5 class="blind">비밀번호 변경하기</h5>
						<div class="find_gate">
							<i class="ico ico_phone"></i>
							<p class="title">등록된 휴대폰 번호로 비밀번호 변경하기</p>
							<p class="text_small">가입 당시 입력한 휴대폰 번호로 인증번호를 발송합니다.</p>
							<a onclick="doDisplay5();"
								class="btns_sys red_mid_d" data-find-btn="pwGatePhone"><span>확인</span></a>
						</div>
						
						<!-- 인증번호 발송하기 -->
						<div class="find_gate">
							<i class="ico ico_email"></i>
							<p class="title">등록된 이메일로 변경하기</p>
							<p class="text_small">가입 당시 입력한 이메일로 비밀번호 재설정 메일을 발송합니다.</p>
							<a onclick="doDisplay3();" class="btns_sys red_mid_d"><span>확인</span></a>
						</div>
					</div>
					
					<!-- 이메일로 비번찾기 - 구글메일 api연결예정 -->
					<div id="_findInEmail" class="tab_cont" style="display: none">
						<div class="find_idpw">
							<div class="find_top">
								<p class="title">등록된 이메일로 비밀번호 변경</p>
								<p class="text_small">가입 당시 입력한 이메일로 비밀번호 재설정 메일을 발송합니다.</p>
							</div>
							<div class="input_area">
								<label for="_findEmailName" class="lbl_type"></label> <input
									type="text" id="_findEmailName" placeholder="이름"
									class="inpt_default" value="" style="width: 350px;">
							</div>
							<div class="input_area" data-otom-el="container">
								<input type="email" placeholder="이메일" id="_findEmailId" class="inpt_default" value="" style="width: 350px;" maxlength="150">
							</div>
							<div class="btn_agree_area">
								<a href="" id="_confirm" class="btns_sys red_big_xb add_space"><span>확인</span></a>
							</div>
						</div>
					</div>
					
					<!-- 아이디찾기 세부영역 -->
					<div id="_findIdPhone" class="tab_cont" style="display: none">
					<form id="findIdForm" action="" method="post">
						<div class="find_idpw">
							<div class="find_top">
								<p class="title">등록된 휴대폰번호로 아이디 찾기</p>
								<p class="text_small">가입 당시 입력한 휴대폰번호로 인증번호를 발송합니다.</p>
							</div>
							<div class="input_area">
								<input type="text" placeholder="이름" name="findId_Name" id="findId_Name" class="inpt_default" value="" style="width: 350px;">
							</div>
							<div class="input_area">
								<input type="text" placeholder="휴대폰번호" name="findId_Phone"  id="findId_Phone" class="inpt_default" value="" style="width: 350px;" maxlength="150">
							</div>
							<div class="input_area">
								<input type="text" placeholder="인증번호" id="findId_Num" name="findId_Num" class="inpt_default" value="" style="width: 350px;" maxlength="150">
								<br>
								<span style="color: black; font-size:small; margin-top: 10px; ">※ 인증 가능한 시간 : <span id="timer" ></span></span>
							</div>	
							<div class="btn_agree_area" style="padding: 0; margin-top: 30px;">
								<div onclick="bonin(2);" style="padding: 0; width: 210px;" id="_confirm" class="btns_sys red_big_xb add_space"><span>인증번호 전송</span></div>
								<div onclick="bonin(1);" style="padding: 0;  width: 210px;" id="_confirm" class="btns_sys red_big_xb add_space"><span>확인</span></div>
							</div>
						</div>
					</form>	
					</div>
					
					<!-- 비밀번호 찾기 세부영역-->
					<div id="_findPwdPhone" class="tab_cont" style="display: none">
					<form id="findPwdForm" action="" method="post">
						<div class="find_idpw">
							<div class="find_top">
								<p class="title">등록된 휴대폰번호로 비밀번호 변경</p>
								<p class="text_small">가입 당시 입력한 휴대폰번호로 인증번호를 발송합니다.</p>
							</div>
							<div class="input_area">
								<input type="text" placeholder="아이디" name="findPwd_Id" id="findPwd_Id" class="inpt_default" value="" style="width: 350px;">
							</div>
							<div class="input_area">
								<input type="text" placeholder="이름" name="findPwd_Name" id="findPwd_Name" class="inpt_default" value="" style="width: 350px;">
							</div>
							<div class="input_area">
								<input type="text" placeholder="휴대폰번호" name="findPwd_Phone"  id="findPwd_Phone" class="inpt_default" value="" style="width: 350px;" maxlength="150">
							</div>
							<div class="input_area">
								<input type="text" placeholder="인증번호" id="findPwd_Num" name="findPwd_Num" class="inpt_default" value="" style="width: 350px;" maxlength="150">
								<br>
								<span style="color: black; font-size:small; margin-top: 10px; ">※ 인증 가능한 시간 : <span id="timer" ></span></span>
							</div>	
							<div class="btn_agree_area" style="padding: 0; margin-top: 30px;">
								<div onclick="bonin(4);" style="padding: 0; width: 210px;" id="_confirm" class="btns_sys red_big_xb add_space"><span>인증번호 전송</span></div>
								<div onclick="bonin(3);" style="padding: 0;  width: 210px;" id="_confirm" class="btns_sys red_big_xb add_space"><span>확인</span></div>
							</div>
						</div>
					</form>	
					</div>
				</div>
			</div>
		</div>
	</section>

	<script>
	
	function doDisplay(){
		var con = document.getElementById("_tab1");
		var con2 = document.getElementById("_tab2");
		var con3 = document.getElementById("_findInEmail");
		var con4 = document.getElementById("_findIdPhone");
		var con5 = document.getElementById("_findPwdPhone");
		
		if(con.style.display=='none'){
			con.style.display = 'block';
			con2.style.display = 'none';
			con3.style.display = 'none';
			con4.style.display = 'none';
			con5.style.display = 'none';
		}
		
		document.getElementById("idfind").className = "on";
		document.getElementById("pwdfind").className = "";

	}
	
	function doDisplay2() {
		
		var con = document.getElementById("_tab1");
		var con2 = document.getElementById("_tab2");
		var con3 = document.getElementById("_findInEmail");
		var con4 = document.getElementById("_findIdPhone");
		var con5 = document.getElementById("_findPwdPhone");
		
		 if (con2.style.display=='none'){
			con.style.display = 'none';
			con2.style.display = 'block';
			con3.style.display = 'none';
			con4.style.display = 'none';
			con5.style.display = 'none';
			}
		 
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
	
	function doDisplay4() {
		
		var con = document.getElementById("_tab1");
		var con2 = document.getElementById("_findIdPhone");
		
		 if (con2.style.display=='none'){
				con.style.display = 'none';
				con2.style.display = 'block';
			}
		
	}
	
	function doDisplay5() {
		
		var con = document.getElementById("_tab2");
		var con2 = document.getElementById("_findPwdPhone");
		
		 if (con2.style.display=='none'){
				con.style.display = 'none';
				con2.style.display = 'block';
			}
		
	}
	
	//꺼내온 랜덤수
	var randomNum;
	
	function bonin(index){
		
		var findId_Name = document.getElementById('findId_Name').value;
		var findId_Phone = document.getElementById('findId_Phone').value;
		var findPwd_Name = document.getElementById('findPwd_Name').value;
		var findPwd_Phone = document.getElementById('findPwd_Phone').value;
		var findPwd_Id = document.getElementById('findPwd_Id').value;
		
		/* 아이디찾기 */
		/* 입력 이후 확인 클릭시 */
		if(index == 1){
			var inputNum = document.getElementById('findId_Num').value;
			console.log("randomNum : " + randomNum);
			console.log("inputNum : " + inputNum);
			
			/* 입력값 일치여부 확인 */
			if(randomNum == inputNum){
				document.getElementById('findIdForm').action="<%=request.getContextPath()%>/findId.me"; 
				document.getElementById('findIdForm').submit();
			}else{
				alert("인증번호가 일치하지 않습니다! 다시 인증을 진행해주세요!");
			}
			
		}
		/* 인증번호 보내기 버튼 실행시 */
		else if(index == 2){
			
			/* 클릭하면 타이머 실행 */
			var AuthTimer = new $ComTimer()
			AuthTimer.comSecond = 60; //타이머시간
			AuthTimer.fnCallback = function(){alert("다시인증을 시도해주세요.");}
			AuthTimer.timer =  setInterval(function(){AuthTimer.fnTimer()},1000);
			AuthTimer.domId = document.getElementById("timer");
					  
			/* 문자로 인증번호 전송 */
			$.ajax({
				url: "/omg/sendmail.me",
				type: "post",
				data: {
					findId_Name:findId_Name,
					findId_Phone:findId_Phone,
				},
				success: function (data) {
					/* 문자전송완료 alert */
					alert("인증번호가 전송되었습니다!");
					console.log("성공!");
					console.log(data);
					randomNum = data;
				},
				error: function () {
					console.log("실패!");
				}
			});
			
			}
		
		/* 비밀번호찾기 */
		/* 입력 이후 확인 클릭시 */
		if(index == 3){
			var inputNum = document.getElementById('findPwd_Num').value;
			console.log("randomNum : " + randomNum);
			console.log("inputNum : " + inputNum);
			
			/* 입력값 일치여부 확인 */
			if(randomNum == inputNum){
				document.getElementById('findPwdForm').action="<%=request.getContextPath()%>/findPass.me"; 
				document.getElementById('findPwdForm').submit();
			}else{
				alert("인증번호가 일치하지 않습니다! 다시 인증을 진행해주세요!");
			}
			
		}
		/* 인증번호 보내기 버튼 실행시 */
		else if(index == 4){
			
			/* 클릭하면 타이머 실행 */
			var AuthTimer = new $ComTimer()
			AuthTimer.comSecond = 60; //타이머시간
			AuthTimer.fnCallback = function(){alert("다시인증을 시도해주세요.");}
			AuthTimer.timer =  setInterval(function(){AuthTimer.fnTimer()},1000);
			AuthTimer.domId = document.getElementById("timer");
					  
			/* 문자로 인증번호 전송 */
			$.ajax({
				url: "/omg/sendmail.me",
				type: "post",
				data: {
					findPwd_Name:findPwd_Name,
					findPwd_Phone:findPwd_Phone,
					findPwd_Id:findPwd_Id
				},
				success: function (data) {
					/* 문자전송완료 alert */
					alert("인증번호가 전송되었습니다!");
					console.log("성공!");
					console.log(data);
					randomNum = data;
				},
				error: function () {
					console.log("실패!");
				}
			});
			
			}
		}
	
	/* 타이머객체 */
	function $ComTimer(){
	}
	$ComTimer.prototype = {
	    comSecond : ""
	    , fnCallback : function(){}
	    , timer : ""
	    , domId : ""
	    , fnTimer : function(){
	        var m = Math.floor(this.comSecond / 60) + "분 " + (this.comSecond % 60) + "초";	// 남은 시간 계산
	        console.log(m);
	        this.comSecond--;					// 1초씩 감소
	        this.domId.innerText = m;
	        if (this.comSecond < 0) {			// 시간이 종료 되었으면..
	            clearInterval(this.timer);		// 타이머 해제
	            alert("인증시간이 초과하였습니다. 다시 인증해주시기 바랍니다.")
	        }
	    }
	    ,fnStop : function(){
	        clearInterval(this.timer);
	    }
	}
	
	</script>
	<footer>
		<%@ include file="../../common/footer.jsp"%>
	</footer>
</body>
</html>