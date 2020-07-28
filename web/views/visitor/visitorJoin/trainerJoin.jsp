<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"> </script>
<script>
	function IdCheckFunction(){
		var memberId = $("#memberId").val();
		$.ajax({
			type : 'POST',
			url : '/omg/IdCheckServlet',
			data : {memberId : memberId},
			success : function(result){
				if(result == 1){
					$("#result").html("사용할 수 있는 아이디입니다.");
					} else {
					$("#result").html("사용중인 아이디입니다. 다른 아이디를 입력해 주세요");
					}
				} 
			}) 
			}

</script>
<script>
    $(function() {
        $('#selectEmail').change(function() {
            if ($('#selectEmail').val() == 'directly') {
                $('#directly').attr("disabled", false);
                $('#directly').val("");
                $('#directly').focus();
            } else {
                $('#email2').val($('#selectEmail').val());
            }
        })
    });
</script>
<script>



	function checks() {
		var getMail = RegExp(/^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/);
		var getCheck = RegExp(/^[a-zA-Z0-9]{4,12}$/);
		var getName = RegExp(/^[가-힣]+$/);
		
		//아이디 공백확인
		if($("#memberId").val() == ""){ 
			alert("아이디를 입력해주세요"); 
			$("#memberId").focus(); return false; 
		}
		
		
		//계좌 공백확인
		if($("#bankAccount").val() == ""){ 
			alert("계좌번호를 입력해주세요"); 
			$("#bankAccount").focus(); return false; 
		}
		
		//아이디 유효성검사
		if(!getCheck.test($("#memberId").val())){
			alert("형식에 맞게 입력해주세요");
			$("#memberId").val("");
			$("#memberId").focus(); 
			return false; 
		}
		
		//비밀번호 공백 확인
		if($("#memberPwd1").val() == ""){
			alert("패스워드를 입력해주세요");
			$("#memberPwd1").focus();
			return false; 
		}
		
		//아이디 비밀번호 같음 확인 
		if($("#memberId").val() == $("#memberPwd1").val()){
			alert("아이디와 비밀번호가 같습니다");
			$("#memberPwd1").val("");
			$("#memberPwd1").focus();
			return false; 
		}
		
		var pw = $("#memberPwd1").val();
		 var num = pw.search(/[0-9]/g);
		 var eng = pw.search(/[a-z]/ig);
		 var spe = pw.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);

		 if(pw.length < 8 || pw.length > 20){

		  alert("비밀번호는 8자리 ~ 20자리 이내로 입력해주세요.");
		  return false;
		 }else if(pw.search(/\s/) != -1){
		  alert("비밀번호는 공백 없이 입력해주세요.");
		  return false;
		 }else if(num < 0 || eng < 0 || spe < 0 ){
		  alert("비밀번호는 영문,숫자, 특수문자를 혼합하여 입력해주세요.");
		  return false;
		 }else {
			console.log("통과"); 
		    return true;
		 }
		
		
		//이메일 공백 확인 
		if($("#email1").val() == ""){
			alert("이메일을 입력해주세요");
			$("#email1").focus(); 
			return false; 
		}
		
		//상세주소 공백 검사 
		if($("#haddress2").val() == ""){
			alert("상세주소를 입력해주세요"); 
			$("#haddress2").focus(); 
			return false; 
		}
		
		//계좌번호 공백 검사 
		if($("#bankAccount").val() == ""){
			alert("계좌번호를 입력해주세요"); 
			$("#bankAccount").focus(); 
			return false; 
		}
		
		

	}
	
	
	
	
	
	function passwordCheckFunction() {
		var password1 = $("#memberPwd1").val();
		var password2 = $("#memberPwd2").val();
		if(password1 != password2) {
			$("#checkMessage").html("비밀번호가 일치하지 않습니다.");
		} else {
			$("#checkMessage").html("");
		}
		
	}
	/* 
	function IdCheckFunction() {
		var memberId = $("#memberId").val();
		$.ajax({
			type: 'POST',
			url: '/omg/IdCheckServlet',
			success: function(result) {
				if(result == 1) {
					
					alert("사용할 수 있는 아이디입니다.");
				} else {
					
					alert("사용중인 아이디입니다. 다른 아이디를 입력해주세요");
				}
			}
		});
	} */
</script>

<!-- <script> 
$("#memberId").keyup(function(){ 
	$.post("idcheck.do", //요청명령어
			"memberId="+$("#memberId").val(), //서버 요청 전달값, id가 uid인 것의 val(ue)를 가져오라. 더 넣으려면 & 사용하여 추가 
			function responseProc(){ //콜백 함수 
			); //post() end, post방식 
			}); //id → #, keyup 이라는 이벤트 
			//post 방식의 callback 함수를 따로 생성 
			$("#demo").empty(); 
			$("#demo").html(result); 
			$("#demo").show(); 
			} //responseProc() end 
			</script> -->

<style>
#main-center {
	margin-left: 450px;
}

.confirm {
	margin-left: 150px;
	margin-top: 15px;
}

.join_table {
	text-align: left;
}

#fnt {
	margin-left: 100px;
	font-size: 2em;
	margin-bottom: 30px;
	text-decoration: none;
}

.fnt1 {
	color: lightgray;
}
.fnt1:hover {
	color: orangered;
}

.fnt2 {
	color: black;
}

body {
	font-family: "Noto Sans KR";
}

</style>

</head>
<script type="text/JavaScript" src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>

	<script type="text/javascript">

		function openDaumZipAddress() {

			new daum.Postcode({

				oncomplete:function(data) {

					jQuery("#postcode1").val(data.postcode1);

					jQuery("#postcode2").val(data.postcode2);

					jQuery("#zipNo").val(data.zonecode);

					jQuery("#haddress1").val(data.address);

					jQuery("#haddress2").focus();

					console.log(data);

				}

			}).open();

		}

	</script>



<body>


	<div id="wrap">



		<div id="content">
			<%@ include file="../../common/nonNav.jsp"%>

			<div class="container">
				<form id="joinForm"
					action="<%= request.getContextPath() %>/insert.me" method="post" onsubmit="return checks()">

					<div id="main-center">



						<div class="join2">


							<div>
								<br>
								<h1>회원가입</h1>
								<input type="text" name="joinType" value="trainer" style="display: none;">
								<br> <a href="followerJoin.jsp" id="fnt" class="fnt1">팔로워</a>
								<a href="trainerJoin.jsp" id="fnt" class="fnt2">트레이너</a>

							</div>
							<br>



							<div class="margin-top10">

								<div id="personInfo">

									<table class="join_table">
										<tbody>
											<tr>
												<th>이름</th>
												<td><input type="text" name="memberName"
													id="memberName" value="" 
													size="50" maxlength="50" style="height: 40px; border:1px solid lightgray;"
													placeholder="이름을 입력해주세요"></td>
											</tr>
											<tr>
												<th>아이디</th>
												<td><input type="text" name="memberId" id="memberId"
													value="" style="height: 40px; border:1px solid lightgray;"
													size="50" maxlength=12 placeholder="아이디를 입력해주세요">
													<a onclick="IdCheckFunction()"
														style="color: orangered; cursor: pointer;">중복확인</a>
														<br>
													<p id="result" style="font-size: 0.7em; color: orangered;">* 회원아이디는
															영문/숫자만 사용가능합니다.</p> 
													 </td>
													


											</tr>

											<tr>
												<th>비밀번호</th>
												<td><input type="password" name="memberPwd"
													id="memberPwd1" style="height: 40px; border:1px solid lightgray;"
													class="MS_input_txt w137" value="" size="50" maxlength="20"
													onkeyup="passwordCheckFunction();"
													placeholder="비밀번호를 입력해주세요"> <span class="idpw-info"><br>
													<span id="result"></apan>
														<p style="font-size: 0.7em; color: orangered;">* 비밀번호는
															8자 이상으로 입력해 주세요.</p> </span></td>
											</tr>
											<tr>
												<th>비밀번호 확인</th>
												<td><input type="password" name="memberPwd2"
													id="memberPwd2" style="height: 40px; border:1px solid lightgray;"
													value="" size="50" maxlength="20"
													onkeyup="passwordCheckFunction();"
													placeholder="비밀번호를 한번 더 입력해주세요">
													<sapn id="checkMessage" style="color:red; font-weigth:bold"></sapn></td>
											</tr>

											<tr>
												<th>생일/성별</th>
												<td class="select"><select name="birthYear"
													id="birthYear" style="width: 100px; height: 40px; border:1px solid lightgray;"
													>
														<option value="">선택</option>
														<option value="1920">1920</option>
														<option value="1921">1921</option>
														<option value="1922">1922</option>
														<option value="1923">1923</option>
														<option value="1924">1924</option>
														<option value="1925">1925</option>
														<option value="1926">1926</option>
														<option value="1927">1927</option>
														<option value="1928">1928</option>
														<option value="1929">1929</option>
														<option value="1930">1930</option>
														<option value="1931">1931</option>
														<option value="1932">1932</option>
														<option value="1933">1933</option>
														<option value="1934">1934</option>
														<option value="1935">1935</option>
														<option value="1936">1936</option>
														<option value="1937">1937</option>
														<option value="1938">1938</option>
														<option value="1939">1939</option>
														<option value="1940">1940</option>
														<option value="1941">1941</option>
														<option value="1942">1942</option>
														<option value="1943">1943</option>
														<option value="1944">1944</option>
														<option value="1945">1945</option>
														<option value="1946">1946</option>
														<option value="1947">1947</option>
														<option value="1948">1948</option>
														<option value="1949">1949</option>
														<option value="1950">1950</option>
														<option value="1951">1951</option>
														<option value="1952">1952</option>
														<option value="1953">1953</option>
														<option value="1954">1954</option>
														<option value="1955">1955</option>
														<option value="1956">1956</option>
														<option value="1957">1957</option>
														<option value="1958">1958</option>
														<option value="1959">1959</option>
														<option value="1960">1960</option>
														<option value="1961">1961</option>
														<option value="1962">1962</option>
														<option value="1963">1963</option>
														<option value="1964">1964</option>
														<option value="1965">1965</option>
														<option value="1966">1966</option>
														<option value="1967">1967</option>
														<option value="1968">1968</option>
														<option value="1969">1969</option>
														<option value="1970">1970</option>
														<option value="1971">1971</option>
														<option value="1972">1972</option>
														<option value="1973">1973</option>
														<option value="1974">1974</option>
														<option value="1975">1975</option>
														<option value="1976">1976</option>
														<option value="1977">1977</option>
														<option value="1978">1978</option>
														<option value="1979">1979</option>
														<option value="1980">1980</option>
														<option value="1981">1981</option>
														<option value="1982">1982</option>
														<option value="1983">1983</option>
														<option value="1984">1984</option>
														<option value="1985">1985</option>
														<option value="1986">1986</option>
														<option value="1987">1987</option>
														<option value="1988">1988</option>
														<option value="1989">1989</option>
														<option value="1990">1990</option>
														<option value="1991">1991</option>
														<option value="1992">1992</option>
														<option value="1993">1993</option>
														<option value="1994">1994</option>
														<option value="1995">1995</option>
														<option value="1996">1996</option>
														<option value="1997">1997</option>
														<option value="1998">1998</option>
														<option value="1999">1999</option>
														<option value="2000">2000</option>
														<option value="2001">2001</option>
														<option value="2002">2002</option>
														<option value="2003">2003</option>
														<option value="2004">2004</option>
														<option value="2005">2005</option>
														<option value="2006">2006</option>
														<option value="2007">2007</option>
														<option value="2008">2008</option>
														<option value="2009">2009</option>
														<option value="2010">2010</option>
														<option value="2011">2011</option>
														<option value="2012">2012</option>
														<option value="2013">2013</option>
														<option value="2014">2014</option>
														<option value="2015">2015</option>
														<option value="2016">2016</option>
														<option value="2017">2017</option>
														<option value="2018">2018</option>
														<option value="2019">2019</option>
														<option value="2020">2020</option>
												</select> 년 <select name="birthmonth" 
													style="width: 100px; height: 40px; border:1px solid lightgray;">
														<option value="">선택</option>
														<option value="01">1</option>
														<option value="02">2</option>
														<option value="03">3</option>
														<option value="04">4</option>
														<option value="05">5</option>
														<option value="06">6</option>
														<option value="07">7</option>
														<option value="08">8</option>
														<option value="09">9</option>
														<option value="10">10</option>
														<option value="11">11</option>
														<option value="12">12</option>
												</select> 월 <select name="birthdate"
													style="width: 100px; height: 40px; border:1px solid lightgray;">
														<option value="">선택</option>
														<option value="01">1</option>
														<option value="02">2</option>
														<option value="03">3</option>
														<option value="04">4</option>
														<option value="05">5</option>
														<option value="06">6</option>
														<option value="07">7</option>
														<option value="08">8</option>
														<option value="09">9</option>
														<option value="10">10</option>
														<option value="11">11</option>
														<option value="12">12</option>
														<option value="13">13</option>
														<option value="14">14</option>
														<option value="15">15</option>
														<option value="16">16</option>
														<option value="17">17</option>
														<option value="18">18</option>
														<option value="19">19</option>
														<option value="20">20</option>
														<option value="21">21</option>
														<option value="22">22</option>
														<option value="23">23</option>
														<option value="24">24</option>
														<option value="25">25</option>
														<option value="26">26</option>
														<option value="27">27</option>
														<option value="28">28</option>
														<option value="29">29</option>
														<option value="30">30</option>
														<option value="31">31</option>
												</select> 일&nbsp;&nbsp;<input type="radio" name="gender" value="M"  checked=""
													>남 <input type="radio"
													name="gender" value="F"  >여<br>
												<br>
											</tr>



											<tr>
												<th>우편번호</th>
												<td>
													<div class="tb-l post">

														<input type="text" name="zipNo" 
															id="zipNo" style="width: 100px; height: 40px; border:1px solid lightgray;"
															 value="" size="7" maxlength="15"
															readonly="readonly">
														<a onclick="openDaumZipAddress()"
															style="color: orangered; cursor: pointer;">주소검색</a>
													</div>
												</td>
											</tr>
											<tr>
												<th>집주소</th>
												<td><input type="text" name="haddress1" 
													id="haddress1" style="width: 360px; height: 40px; border:1px solid lightgray;"
													 value="" size="50"
													maxlength="100" readonly="readonly"></td>
											</tr>
											<tr>
												<th>상세주소</th>
												<td><input type="text" name="haddress2" 
													id="haddress2" style="width: 360px; height: 40px; border:1px solid lightgray;"
													 value="" size="50"
													maxlength="100"></td>
											</tr>



											<tr>
												<th>이메일</th>
												<td class="select">
												
													<input type="text" name="email1" id="email1" style="width: 100px; height: 40px; border:1px solid lightgray;"
													size="10" maxlength="20" value="">
													<span>@</span> <input
														type="text" name="email2" id="email2"
														style="width: 200px; height: 40px; border:1px solid lightgray;"
														value="" size="15" maxlength="25">
											<select name="selectEmail" id="selectEmail"
													style="width: 100px; height: 44px; border:1px solid lightgray;"
													style="margin-right:5px;" >
														<option value="directly" id="directly">직접입력</option>
														<option value="naver.com">naver.com</option>
														<option value="hotmail.com">hotmail.com</option>
														<option value="hanmail.net">hanmail.net</option>
														<option value="yahoo.com">yahoo.com</option>
														<option value="nate.com">nate.com</option>
														<option value="korea.com">korea.com</option>
														<option value="chol.com">chol.com</option>
														<option value="gmail.com">gmail.com</option>
														<option value="netian.com">netian.com</option>
												</select>
													
												</td>
											</tr>





											<tr>
												<th>휴대폰</th>
												<td><input type="hidden" name="tel"
													 value=""> 
													<select
													name="tel1" id="etcphone1" 
													style="width: 100px; height: 44px; border:1px solid lightgray;"
													class="MS_select MS_tel">
														<option value="">선택</option>
														<option value="010">010</option>
														<option value="011">011</option>
														<option value="016">016</option>
														<option value="017">017</option>
														<option value="018">018</option>
														<option value="019">019</option>
												</select> - <input type="text" name="tel2" 
													id="etcphone2"  value="" size="4"
													maxlength="4" style="width: 115px; height: 40px; border:1px solid lightgray;">
													- <input type="text" name="tel3" 
													id="etcphone3"  value="" size="4"
													maxlength="4" style="width: 115px; height: 40px; border:1px solid lightgray;"
													minlength="4">

													<a onclick=""
														style="color: orangered; cursor: pointer;">본인인증</a>
												</td>



											</tr>
											<tr>
												<th>은행</th>
												<td><input type="hidden" name="bankCode" 
													value=""> <select name="bankCode" id="bankCode"
												style="width: 100px; height: 44px; border:1px solid lightgray;"
													class="MS_bank">
														<option value="">선택</option>
														<option value="1">국민은행</option>
														<option value="2">우리은행</option>
														<option value="3">수협</option>
														<option value="4">농협</option>
														<option value="5">기업은행</option>
														<option value="6">하나은행</option>
														<option value="7">신한은행</option>
														<option value="8">카카오</option>
													

												</select> <input type="text" name="bankAccount" 
													id="bankAccount" style="width: 255px; height: 40px; border:1px solid lightgray;"
													class="MS_bank" value="" size="30" maxlength="100"
													placeholder="계좌번호입력 ('-'제외)">
											</tr>











										</tbody>
									</table>

								</div>
								<!-- #personInfo -->
				</form>

			</div>



			<div class="confirm">
				<button type="submit" onclick="insertMember()"
					style="width: 200px; height: 40px; background-color: orangered; color: white; border: none; margin-top: 50px;">가입하기</button>

			</div>
			
			<br>
			<div class="align-center margin-top40"></div>



		</div>
		<!-- end join2 -->

	</div>
	<!-- end main center -->
	</div>
	</div>
	<div style="position: absolute; top: 1500px;">
		<%@ include file="../../common/footer.jsp"%>

	</div>
	</div>


	<script>
   
         function insertMember(){
            $("#joinForm").submit();
            
         }
         
        
         
      
   </script>
   

</body>
</html>