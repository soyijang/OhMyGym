<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
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
    
<title>Insert title here</title>
<style>


	div{
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

#loginfooter{
	margin-top: 10%;
}
</style>
</head>
<body>
	<%@ include file="../common/NonNav.jsp" %>

	<div align="center">
	<br>
	<img src="../../resources/img/OHmyGymLogo.png"><!-- 
	<h4 style="font-size:30px;/*  font:맑은고딕;  */font-weight:bolder;">나에게 딱!맞는 트레이닝, 오마이짐</h4> -->
	<div class="login_wrap">
    <div class="login_inner">
      <div id="_loginArea" class="login_area" data-container="loginArea">
        <div class="wrap_tab">
          <ul id="_loginTab" class="tab_info" data-container="loginTab">
          
            <li data-login="tab" class="on" id="flogin" onclick="doDisplay();"> 
              <a href="javacript:void(0);" class="tab1" data-login-btn="member">
                <span>팔로워 로그인</span>
              </a>
            </li>
            <li data-login="tab" id="tlogin" onclick="doDisplay2();">
              <a href="javascript:void(0);" class="tab2" data-login-btn="nonmemberProd">
                <span>트레이너 로그인</span>
              </a>
            </li>
          </ul>
          
          <!------------------------------팔로워----------------------------------------  -->
          <div id="_tab1" class="tab_cont" data-login="tab" style="display: block;">
            <h5 class="blind">팔로워 로그인</h5>
            <div class="member_login">
              <ul>
                <li>
                  <div class="input_area" data-otom-el="container">
                    <i class="ico ico_inp_id"></i>
                    <input type="text" data-otom-el="input" id="_loginId" class="inpt_default" 
                    data-login="text" value="" placeholder="팔로워 아이디" maxlength="150" style="width:290px" 
                    autocomplete="off" aria-expanded="false" aria-autocomplete="list" aria-haspopup="listbox" 
                    role="combobox">
                    <div class="auto_complete" data-otom-el="result" aria-atomic="true" aria-live="assertive" role="listbox"></div>
                  </div>
                </li>
                <li>
                  <div class="input_area">
                    <i class="ico ico_inp_pw"></i>
                    <input type="password" id="_loginPw" class="inpt_default" data-login="text" value="" 
                    placeholder="팔로워 비밀번호" style="width:290px;">
                  </div>
                </li>
              </ul>
            </div>
            <p class="inpt_er_text" data-login="fail" style="display: none;">아이디, 비밀번호를 다시 확인해 주세요.</p>
            <div id="_captcha" class="captcha" style="display:none">
              <div class="captch_wp">
                <div class="img_captcha">
                  <img id="_captchaImage" height="60" width="356" class="img_captcha_txt" src="">
                </div>
                <img id="_captchaSoundImage" src="//image.wemakeprice.com/images/2014/member/captcha_play_voice.gif" width="352" height="58" class="img_captcha_voice" alt="음성플레이">
                <div id="_captchaSound"></div>
                <a href="javascript:void(0);" id="play_audio" class="btn_sys sml_m btn_cap_1" data-login-btn="audio" tabindex="3"><span>음성듣기</span></a>
                <a href="javascript:void(0);" class="btn_sys sml_m btn_cap_1" data-login-btn="text" tabindex="3" style="display: none;"><span>문자보기</span></a>
                <a href="javascript:void(0);" class="btn_sys sml_m btn_cap_2" data-login-btn="refresh" tabindex="4"><span>새로고침</span></a>
              </div>
              <div class="member_login">
                <ul>
                  <li>
                    <div class="input_area">
                      <i class="ico ico_inp_captcha"></i>
                      <input type="text" id="_captchaWord" class="inpt_default" data-login="text" value="" placeholder="자동입력 방지문자" maxlength="5" style="width:290px;display:none">
                      <i class="ico ico_inp_captcha_ok" data-login-captcha="ok" style="display:none">성공</i>
                      <i class="ico ico_inp_captcha_err" data-login-captcha="error" style="display:none">실패</i>
                    </div>
                  </li>
                </ul>
              </div>
              <p class="inpt_er_text" data-login-captcha="errorText" style="display:none">자동입력 방지문자가 일치하지 않습니다. 다시 입력해 주세요.</p>
            </div>
            <div class="btn_login_area">
              <a href="javascript:void(0);" id="_userLogin" class="btns_sys red_big_xb" data-login-btn="login"><span>로그인</span></a>
            </div>
            <div class="btn_login_area">
              <a href="javascript:void(0);" id="_userLogin" class="btns_sys red_big_xb" data-login-btn="login"><span>팔로워 회원가입</span></a>
            </div>
            <div id="_loginCheck" class="chk_login_area">
              <ul>
                <li>
                  <label for="_chkBtnLogin" class="chk_box" data-login="autoLogin"><input type="checkbox" id="_chkBtnLogin" >  로그인 상태 유지</label>
                </li>
                <li>
                  <label for="_chkBtnSave" class="chk_box " data-login="saveId"> <input type="checkbox" id="_chkBtnSave">  아이디 저장</label>
                </li>
              </ul>
            </div>
            <div id="_findLoginArea" class="find_login_area">
              <a href="findid.jsp" class="find">아이디찾기</a>
              <a href="//front.wemakeprice.com/user/find/pw" class="find">비밀번호 찾기</a>
            </div>
          </div>
          
          <!---------------------------------------------------------------------------------------------  -->
          <div id="_tab2" class="tab_cont" data-login="tab" style="display: none;">
            <h5 class="blind">트레이너 로그인</h5>
            <div class="member_login">
              <ul>
                <li>
                  <div class="input_area" data-otom-el="container">
                    <i class="ico ico_inp_id"></i>
                    <input type="text" data-otom-el="input" id="_loginId" class="inpt_default" 
                    data-login="text" value="" placeholder="트레이너 아이디" maxlength="150" style="width:290px" 
                    autocomplete="off" aria-expanded="false" aria-autocomplete="list" aria-haspopup="listbox" 
                    role="combobox">
                    <div class="auto_complete" data-otom-el="result" aria-atomic="true" aria-live="assertive" role="listbox"></div>
                  </div>
                </li>
                <li>
                  <div class="input_area">
                    <i class="ico ico_inp_pw"></i>
                    <input type="password" id="_loginPw" class="inpt_default" data-login="text" value="" 
                    placeholder="트레이너 비밀번호" style="width:290px;">
                  </div>
                </li>
              </ul>
              
            </div>
            <p class="inpt_er_text" data-login="fail" style="display: none;">구매번호, 휴대폰 번호를 다시 확인해 주세요.</p>
            <div class="btn_login_area">
              <a href="javascript:void(0);" id="_nonUserLogin" class="btns_sys red_big_xb" data-login-btn="check"><span>로그인</span></a>
            </div>
            <div class="btn_login_area">
              <a href="javascript:void(0);" id="_userLogin" class="btns_sys red_big_xb" data-login-btn="login"><span>트레이너 회원가입</span></a>
            </div>
              <div id="_loginCheck" class="chk_login_area">
              <ul>
                <li>
                  <label for="_chkBtnLogin" class="chk_box" data-login="autoLogin"><input type="checkbox" id="_chkBtnLogin" >  로그인 상태 유지</label>
                </li>
                <li>
                  <label for="_chkBtnSave" class="chk_box " data-login="saveId"> <input type="checkbox" id="_chkBtnSave">  아이디 저장</label>
                </li>
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
              <a href="//front.wemakeprice.com/user/find/pw" class="find">비밀번호 찾기</a>
            </div>
          </div>
        </div>
      </div>
      
    </div>
   <!--  <div id="_rollingBanner">
      <div class="rolling_bic_banner" data-slide="wrapper">
        <div class="wrap_banner" style="width: 554px;">
          <ul class="list_banner" data-slide="list" style="width: 99999px; overflow: hidden; position: relative; left: -2216px;"><li data-slide-index="1">
              <a href="https://front.wemakeprice.com/special/category/5000287" data-gtm-category="PC_로그인" data-gtm-action="로그인하단배너_클릭" data-gtm-label="슈퍼투데이특가" data-gtm-link-type="URL" data-gtm-link-value="https://front.wemakeprice.com/special/category/5000287" data-gtm-index="2">
                <img src="https://view01.wemep.co.kr/wmp-banner/34/202006/23/lb_oit8lk1jmbad.jpg" alt="슈퍼투데이특가">
              </a>
            </li><li data-slide-index="2">
              <a href="https://front.wemakeprice.com/specialclub" data-gtm-category="PC_로그인" data-gtm-action="로그인하단배너_클릭" data-gtm-label="특가클럽" data-gtm-link-type="URL" data-gtm-link-value="https://front.wemakeprice.com/specialclub" data-gtm-index="3">
                <img src="https://view01.wemep.co.kr/wmp-banner/04/201906/11/lb_ekhjmcnrie2h.jpg" alt="특가클럽">
              </a>
            </li>
            <li data-slide-index="0">
              <a href="https://front.wemakeprice.com/special/category/5000880" data-gtm-category="PC_로그인" data-gtm-action="로그인하단배너_클릭" data-gtm-label="국내숙박" data-gtm-link-type="URL" data-gtm-link-value="https://front.wemakeprice.com/special/category/5000880" data-gtm-index="1" data-gtm-vis-first-on-screen-8207576_166="6777" data-gtm-vis-total-visible-time-8207576_166="1000" data-gtm-vis-has-fired-8207576_166="1">
                <img src="https://view01.wemep.co.kr/wmp-banner/05/202006/24/lb_ti79iwod3ufo.jpg" alt="국내숙박">
              </a>
            </li>
            <li data-slide-index="1">
              <a href="https://front.wemakeprice.com/special/category/5000287" data-gtm-category="PC_로그인" data-gtm-action="로그인하단배너_클릭" data-gtm-label="슈퍼투데이특가" data-gtm-link-type="URL" data-gtm-link-value="https://front.wemakeprice.com/special/category/5000287" data-gtm-index="2" data-gtm-vis-first-on-screen-8207576_166="1473" data-gtm-vis-total-visible-time-8207576_166="1000" data-gtm-vis-has-fired-8207576_166="1">
                <img src="https://view01.wemep.co.kr/wmp-banner/34/202006/23/lb_oit8lk1jmbad.jpg" alt="슈퍼투데이특가">
              </a>
            </li>
            <li data-slide-index="2">
              <a href="https://front.wemakeprice.com/specialclub" data-gtm-category="PC_로그인" data-gtm-action="로그인하단배너_클릭" data-gtm-label="특가클럽" data-gtm-link-type="URL" data-gtm-link-value="https://front.wemakeprice.com/specialclub" data-gtm-index="3" data-gtm-vis-first-on-screen-8207576_166="3665" data-gtm-vis-total-visible-time-8207576_166="1000" data-gtm-vis-has-fired-8207576_166="1">
                <img src="https://view01.wemep.co.kr/wmp-banner/04/201906/11/lb_ekhjmcnrie2h.jpg" alt="특가클럽">
              </a>
            </li>
          <li data-slide-index="0">
              <a href="https://front.wemakeprice.com/special/category/5000880" data-gtm-category="PC_로그인" data-gtm-action="로그인하단배너_클릭" data-gtm-label="국내숙박" data-gtm-link-type="URL" data-gtm-link-value="https://front.wemakeprice.com/special/category/5000880" data-gtm-index="1" data-gtm-vis-first-on-screen-8207576_166="6658" data-gtm-vis-total-visible-time-8207576_166="1000" data-gtm-vis-has-fired-8207576_166="1">
                <img src="https://view01.wemep.co.kr/wmp-banner/05/202006/24/lb_ti79iwod3ufo.jpg" alt="국내숙박">
              </a>
            </li><li data-slide-index="1">
              <a href="https://front.wemakeprice.com/special/category/5000287" data-gtm-category="PC_로그인" data-gtm-action="로그인하단배너_클릭" data-gtm-label="슈퍼투데이특가" data-gtm-link-type="URL" data-gtm-link-value="https://front.wemakeprice.com/special/category/5000287" data-gtm-index="2">
                <img src="https://view01.wemep.co.kr/wmp-banner/34/202006/23/lb_oit8lk1jmbad.jpg" alt="슈퍼투데이특가">
              </a>
            </li></ul>
        </div>
        <div class="wrap_pager" data-slide="pagination" style="display: block;">
          <span class="inner">
              <a href="javascript:void(0);" class="pager_link" data-slide="page">0</a>
              <a href="javascript:void(0);" class="pager_link" data-slide="page">1</a>
              <a href="javascript:void(0);" class="pager_link active" data-slide="page">2</a>
          </span>
        </div>
        <button type="button" class="btn_prev" data-type="prev" data-slide-arrow="PREV" style="display: block;">이전</button>
        <button type="button" class="btn_next" data-type="next" data-slide-arrow="NEXT" style="display: block;">다음</button>
      </div>
    </div>
  </div> -->
	</div>
	
	
	<div id="loginfooter">
	<%@ include file="../common/footer1.jsp" %>
	</div>
	 
	 <script>
	
	function doDisplay(){
		var con = document.getElementById("_tab1");
		var con2 = document.getElementById("_tab2");
		
		if(con.style.display=='none'){
			con.style.display = 'block';
			con2.style.display = 'none';
		}
		document.getElementById("flogin").className = "on";
		document.getElementById("tlogin").className = "";
	}
	
	function doDisplay2() {
		
		var con = document.getElementById("_tab1");
		var con2 = document.getElementById("_tab2");
		
		 if (con2.style.display=='none'){
				con.style.display = 'none';
				con2.style.display = 'block';
			}
		 document.getElementById("flogin").className = "";
		 document.getElementById("tlogin").className = "on"; 
	}
	
	</script>
	
	<script>
	function includeHTML(callback) {
		  var z, i, elmnt, file, xhr;
		  /*loop through a collection of all HTML elements:*/
		  z = document.getElementsByTagName("*");
		  for (i = 0; i < z.length; i++) {
		    elmnt = z[i];
		    /*search for elements with a certain atrribute:*/
		    file = elmnt.getAttribute("include-html");
		    //console.log(file);
		    if (file) {
		      /*make an HTTP request using the attribute value as the file name:*/
		      xhr = new XMLHttpRequest();
		      xhr.onreadystatechange = function() {
		        if (this.readyState == 4) {
		          if (this.status == 200) {
		            elmnt.innerHTML = this.responseText;
		          }
		          if (this.status == 404) {
		            elmnt.innerHTML = "Page not found.";
		          }
		          /*remove the attribute, and call this function once more:*/
		          elmnt.removeAttribute("include-html");
		          includeHTML(callback);
		        }
		      };
		      xhr.open("GET", file, true);
		      xhr.send();
		      /*exit the function:*/
		      return;
		    }
		  }
		  setTimeout(function() {
		    callback();
		  }, 0);
		}
</script>
</body>
</html>