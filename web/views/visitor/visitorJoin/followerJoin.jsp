<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"> </script>
<title>Insert title here</title>
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
	
	//비밀번호 유효성검사 
	if(!getCheck.test($("#memberPwd1").val())){ 
		alert("형식에 맞게 입력해주세요");
		$("#memberPwd1").val("");
		$("#memberPwd1").focus(); 
		return false; 
	}
	
	//비밀번호 확인란 공백 확인
	if($("#memberPwd2").val() == ""){
		alert("패스워드 확인란을 입력해주세요");
		$("#memberPwd2").focus();
		return false; 
	}
	
	//이메일 공백 확인 
	if($("#email1").val() == ""){
		alert("이메일을 입력해주세요");
		$("#email1").focus(); 
		return false; 
	}
	
	
	//상세주소 공백 검사 
	if($("#haddress2").val() == ""){
		alert("상세주소 입력해주세요"); 
		$("#haddress2").focus(); 
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
	
	function idCheckFunction() {
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
	}

</script>
<!-- question -->
<style>
div#visitQuestion{
        width: 700px; 
        height: 600px; 
        margin-left: -50px; 
        margin-right: auto; 
        margin-top: 100px; 
        margin-bottom: 100px; 
        border-radius: 9px; 
        background: navy;
    }
    div.questionBox{
        margin-left: auto;
        margin-right: auto;
        padding-top: 40px;
        width: 400px;
        height: 600px;
        overflow: hidden;
        }

    div#quesionMain{
        width: 4200px;
        margin-top: 100px;
    }

    div.questionPart{
        width: 350px;
        height: 500px;
        text-align: center;
        margin: 19px
    }

    label.questionTitle{
        font-size: 1.75em;
        font-weight: bold;
        color: white;
    }
    
   #height, #weight, #motive, #goal, #bodyUneasy {
   		height: 20px;
   		width: 180px;
   		background-color: navy;
   		color: white;
   		border: 2px solid white;
   		
   }

</style>


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
	margin-left: 50px;
	font-size: 4em;
	margin-bottom: 30px;
	text-decoration: none;
}

.fnt1 {
	color: black;
}

.fnt2 {
	color: lightgray;
}

body {
	font-family: "Noto Sans KR";
}
</style>

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



</head>


<body>

	<div id="wrap">



		<div id="content">
			<%@ include file="../../common/nonNav.jsp"%>
			<div class="container">
				<form  id="joinForm" action="<%= request.getContextPath() %>/insert.me" method="post" onsubmit="return checks()">

					<div id="main-center" style="margin-left: 450px">

						<div class="join2">

							<div>
								<br>
								<h1>회원가입</h1>
								<input type="text" name="joinType" value="follower" style="display: none;">
								<br> <a href="folowerJoin.jsp" id="fnt" class="fnt1">팔로워</a>
								<a href="trainerJoin.jsp" id="fnt" class="fnt2">트레이너</a>

							</div>
							<br>

							<div class="margin-top10">

								<div id="personInfo">

									<table class="join_table">
										<tbody>
											<tr>
												<th>이름</th>
												<td><input type="text" name="memberName" id="memberName" value=""
													class="MS_input_txt w137" size="50" maxlength="50"
													style="height: 40px" placeholder="이름을 입력해주세요"></td>
											</tr>
											<tr>
												<th>아이디</th>
												<td><input type="text" name="memberId" id="memberId" value=""
													style="height: 40px" size="50"
													maxlength="12" placeholder="아이디를 입력해주세요">
													<a onclick="idCheckFunction()"
														style="width: 100px; height: 40px; background-color: orangered; color: white; border: none;">중복확인</a>
													<span class="idpw-info"><br>
													<span id="result"></apan>
													<p style="font-size: 0.7em; color: orangered;">* 회원아이디는
															영문/숫자만 사용가능합니다.</p></span> </a></td>
											</tr>


											<tr>
												<th>비밀번호</th>
												<td><input type="password" name="memberPwd"
													id="memberPwd1" style="height: 40px"
													class="MS_input_txt w137" value="" size="50" maxlength="20"
													onkeyup="passwordCheckFunction();"
													placeholder="비밀번호를 입력해주세요"> <span class="idpw-info"><br>
														<p style="font-size: 0.7em; color: orangered;">* 비밀번호는
															8자 이상으로 입력해 주세요.</p> </span></td>
											</tr>
											<tr>
												<th>비밀번호 확인</th>
												<td><input type="password" name="memberPwd2"
													id="memberPwd2" style="height: 40px"
													class="MS_input_txt w137" value="" size="50" maxlength="20"
													onkeyup="passwordCheckFunction();"
													placeholder="비밀번호를 한번 더 입력해주세요">
													<sapn id="checkMessage" style="color:red; font-weigth:bold"></sapn></td>
											</tr>

											<tr>
												<th>생일/성별</th>
												<td class="select"><select name="birthYear" id="birthYear"
													style="width: 100px; height: 40px;"
													class="MS_select MS_birthday">
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
												</select> 년 <select name="birthMonth" class="MS_select MS_birthday"
													style="width: 100px; height: 40px;">
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
												</select> 월 <select name="birthDate" class="MS_select MS_birthday"
													style="width: 100px; height: 40px;">
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
												</select> 일&nbsp;&nbsp;<input type="radio" name="gender" value="M" checked=""
													class="MS_radio">남 <input type="radio"
													name="gender" value="F" class="MS_radio" >여<br>
												<br>
											</tr>



											<tr>
												<th>우편번호</th>
												<td>
													<div class="tb-l post">

														<input type="text" name="zipNo" 
															id="zipNo" style="width: 100px; height: 40px;"
															class="MS_input_txt" value="" size="7" maxlength="15"
														>
														<a onclick="openDaumZipAddress()"
															style="width: 100px; height: 40px; background-color: orangered; color: white; border: none;">주소검색</a>
													</div>
												</td>
											</tr>
											<tr>
												<th>집주소</th>
												<td><input type="text" name="haddress1"
												id="haddress1"
													style="width: 360px; height: 40px;"
													class="MS_input_txt w415" value="" size="50"
													maxlength="100" ></td>
											</tr>
											<tr>
												<th>상세주소</th>
												<td><input type="text" name="haddress2"
													id="haddress2"
													style="width: 360px; height: 40px;"
													class="MS_input_txt w415" value="" size="50"
													maxlength="100"></td>
											</tr>



											<tr>
												<th>이메일</th>
												<td class="select">
												
													<input type="text" name="email1" id="email1" style="width: 100px; height: 40px;"
													size="10" maxlength="20" value="">
													<span>@</span> <input
														type="text" name="email2" id="email2"
														style="width: 200px; height: 40px;"
														value="" size="15" maxlength="25">
											<select name="selectEmail" id="selectEmail"
													style="width: 100px; height: 40px;"
													style="margin-right:5px;" >
														<option value="1">직접입력</option>
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
													form="join_form" value=""> 
													<select
													name="tel1" id="etcphone1" 
													style="width: 100px; height: 40px;"
													class="MS_select MS_tel">
														<option value="">선택</option>
														<option value="010">010</option>
														<option value="011">011</option>
														<option value="016">016</option>
														<option value="017">017</option>
														<option value="018">018</option>
														<option value="019">019</option>
												</select> - <input type="text" name="tel2" 
													id="etcphone2" class="MS_input_tel" value="" size="4"
													maxlength="4" style="width: 115px; height: 40px;">
													- <input type="text" name="tel3" 
													id="etcphone3" class="MS_input_tel" value="" size="4"
													maxlength="4" style="width: 115px; height: 40px;"
													minlength="4">

													<a onclick=""
														style="width: 100px; height: 40px; background-color: orangered; color: white; border: none;">본인인증</a>
												</td>



											</tr>
											



										</tbody>
									</table>

								</div>
								<!-- #personInfo -->

			</div>
			
			<div>
			<div id="visitQuestion">
				<div id="visitQuestionIn" class="questionBox">
					 <form id="questionForm" action="<%= request.getContextPath() %>/insertHistory.hi" method="post" > 
						<div id="quesionMain">
						<input type="hidden" name="plag" value="1">
							<div id="part1" class="questionPart" style="float: left;">
								<label class="questionTitle">키를 알려주세요</label><br>
								<div style="margin-top: 20px; font-size: 1.2em; color: white;">
									<input type="text" value="" id="height" name="height" placeholder="cm단위로 입력해주세요">
								</div>
							</div>
							<div id="part2" class="questionPart" style="float: left;">
								<label class="questionTitle">몸무게를 알려주세요</label><br>
								<div style="margin-top: 20px; font-size: 1.2em; color: white;">
									<input type="text" value="" id="weight" name="weight" placeholder="kg단위로 입력해주세요">
								</div>
							</div>
							<div id="part3" class="questionPart" style="float: left;">
								<label class="questionTitle">가장 집중적으로 운동하고싶은 부위를 골라주세요</label><br>
								<div
									style="margin-top: 20px; text-align: left; padding-left: 110px; color: white; font-size: 1.2em;">
									<input type="checkbox" id="arm" name="focus" value="arm">
									<label for="arm">팔/다리</label> &nbsp;<br> 
									<input
										type="checkbox" id="chest" name="focus" value="chest">
									<label for="chest">가슴 </label> &nbsp;<br> 
									<input
										type="checkbox" id="stomach" name="focus" value="stomach">
									<label for="stomach">배 </label> &nbsp;<br> 
									<input
										type="checkbox" id="hip" name="focus" value="hip"> <label
										for="hip">엉덩이 </label> &nbsp;<br>
								</div>
							</div>
							<div id="part4" class="questionPart" style="float: left;">
								<label class="questionTitle">주간 운동량이<br> 얼마나 되시나요?
								</label><br>
								<div
									style="margin-top: 20px; text-align: left; padding-left: 90px; color: white; font-size: 1.2em;">
									<input type="radio" id="exercise1" name="exercise" value="1시간 미만">
									<label for="work1">1시간 미만</label> &nbsp;<br> <input
										type="radio" id="exercise2" name="exercise" value="1시간~2시"> <label
										for="work2">1시간 ~ 2시간 </label> &nbsp;<br> <input
										type="radio" id="exercise3" name="exercise" value="3시간~7시간"> <label
										for="work3">3시간 ~ 7시간</label> &nbsp;<br> <input
										type="radio" id="exercise4" name="exercise" value="7시간이상"> <label
										for="work4">7시간 이상</label> &nbsp;<br>
								</div>
							</div>
							<div id="part5" class="questionPart" style="float: left;">
								<label class="questionTitle">가장 커다란 동기부여가<br>되는것은 무엇인가요?
								</label><br>
								<div
									style="margin-top: 20px; text-align: left; padding-left: 90px; color: white; font-size: 1.2em; width: 500px; height: 20px">
									<input type="text" id="motive" name="motive" value="" placeholder="ex)다이어트 자극 사진을 봤을 때">
									
								</div>
							</div>
							<div id="part6" class="questionPart" style="float: left;">
								<label class="questionTitle">운동하는데 <br>신체적 어려움이 있으신가요?
								</label><br>
								<div
									style="margin-top: 20px; text-align: left; padding-left: 90px; color: white; font-size: 1.2em;">
									<input type="text" id="bodyUneasy" name="bodyUneasy" value="" placeholder="ex)허리디스크">
									
								</div>
							</div>
							<div id="part7" class="questionPart" style="float: left;">
								<label class="questionTitle">운동하는데 <br>목표가 어떻게 되시나요?
								</label><br>
								<div
									style="margin-top: 20px; text-align: left; padding-left: 90px; color: white; font-size: 1.2em;">
									<input type="text" id="goal" name="goal" value="" placeholder="ex)10kg감량">
									
								</div>
							</div>
							<div id="part8" class="questionPart" style="float: left;">
								<label class="questionTitle">현재 활동수준은 어떠신가요?
								</label><br>
								<div
									style="margin-top: 20px; text-align: left; padding-left: 90px; color: white; font-size: 1.2em;">
									<input type="radio" id="active1"  name="active" value="매우활동적">
									<label for="work1">매우활동적</label> &nbsp;<br>
									 <input
										type="radio" id="active2" name="active" value="다소활동적"> <label
										for="work2">다소활동적</label> &nbsp;<br> 
									<input
										type="radio" id="active3" name="active" value="조금활동적"> <label
										for="work3">조금활동적</label> &nbsp;<br> 
									<input
										type="radio" id="active4" name="active" value="활동적이지않음"> <label
										for="work4">활동적이지않음</label> &nbsp;<br>
										
								</div>
							</div>
							<div id="part9" class="questionPart" style="float: left;">
								<label class="questionTitle">수면시</label><br>
								<div style="margin-top: 20px; font-size: 1.2em; color: white;">
									<input type="text" value="" id="weight" name="sleep" placeholder="kg단위로 입력해주세요">
								</div>
							</div>
							<div>
								<span></span>
							</div>
						</div>
					</form> 
				</div>
				<img onclick="quest_clickNext();" class="contentNext_btn_quest"
					src="/omg/resources/img_icon/next.png" width="70px" height="90px"
					style="position: absolute; left: 70%; top: 1500px;"> 
				<img onclick="quest_clickBack();" class="contentNext_btn_quest"
					src="/omg/resources/img_icon/back.png" width="70px" height="90px"
					style="position: absolute; left: 30%; top: 1500px;">
			</div>
		</div>
		<script>
        var questPos = 0;
        function quest_clickNext(){
            if(questPos >= 0 && questPos < 10){
                if(questPos < 9) questPos = questPos + 1;
                $('.questionBox').animate({scrollLeft : 390 * questPos}, 500);
            }
        }
        function quest_clickBack(){
            if(questPos > 0 && questPos < 10){
                if(questPos > 0) questPos = questPos - 1;
                $('.questionBox').animate({scrollLeft : 390 * questPos}, 500);
            }
        }

    </script>



			<div class="confirm" style="margin-left: 150px; margin-top: 15px;">
				<button type="submit" onclick="insertMember()"
					style="width: 200px; height: 40px; background-color: orangered; color: white; border: none;">가입하기</button>

			</div>
				</form>
			<br>
			<div class="align-center margin-top40"></div>



		</div>
		<!-- end join2 -->

	</div>
	<!-- end main center -->
	</div>
	</div>
	<div style="position: absolute; top: 2000px;">
		<%@ include file="../../common/footer.jsp"%>
	</div>

	</div>
	

	<script>
   
         function insertMember(){
            $("#joinForm").submit();
        
            
         }
         
         
         
      
    </script>
		
	<script type="text/javascript">
		//이메일 입력방식 선택 
		$('#selectEmail').change(function(){
			$("#selectEmail option:selected").each(function () {
				if($(this).val()== '1'){ 
					//직접입력일 경우
					$("#email2").val(''); 
					//값 초기화 
					$("#email2").attr("disabled",false); 
					//활성화
				}else{ 
					//직접입력이 아닐경우
					$("#email2").val($(this).text()); 
					//선택값 입력 
					$("#email2").attr("disabled",true); 
					//비활성화
					} }); });
	</script>

	
</body>
</html>