<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>
	
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="/omg/resources/css/fmypageContainer.css">
<link rel="stylesheet" type="text/css" href="/omg/resources/css/tjob.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<title>Insert title here</title>
<style type="text/css">

.box-file-input label{
    display:inline-block;
    background: orangered;
    color:#fff;
    padding:0px 15px;
    line-height:35px;
    cursor:pointer;
}

.box-file-input #upload:after{
    content:"프로필사진 등록";
}

.box-file-input #save:after{
    content:"프로필사진  저장";
}

.box-file-input .file-input{
    display:none;
}

.box-file-input .filename{
    display:inline-block;
    padding-left:10px;
}
</style>
</head>

<body>

	<section style="height: 1700px;">
		<div class="mypage-contents">
			<%@ include file="followerMypageAside.jsp"%>
			<script>
				var uploadfileCode;
				var userId ="<%=loginUser.getMemberId()%>";
				var profileManageCode;

				function profileload(){   
				     $.ajax({
						 url : "/omg/loadProfile.all",
					     type : 'post',
					     data : {
					          	userId : userId
						       },
						       success : function(data) {
						          profileManageCode = data.fileManageName;
						          console.log(profileManageCode);
						          $("#profileImg").attr("src", "<%=request.getContextPath()%>/resources/test/"+profileManageCode); 
						 		},
						 		error : function(){
									profileManageCode = "";
						 		}
				     })
				}		
				profileload();
			</script>
			<script>
								function changeProfile(code){
									var imgCode = code;
									
									$.ajax({
										 url : "/omg/changeProfile.follower",
									     type : 'post',
									     data : {
									          	userId : userId,
									          	imgCode : imgCode
										       },
										       	success : function(data) {
													alert("프로필이미지가 변경되었습니다.");
													profileload();
										 		},
										 		error : function(){
										 			alert()
										 		}
								     })
									
								}	
							
							
								function profileImg(){
									var form = $('#profileUploadForm')[0];
						            
						            var data = new FormData(form);
						            
						            console.log(data);
						            
						            $.ajax({
						            	url : "/omg/upFile.all",
						                type : 'post',
						                data : data,
						                contentType : false,
						                processData : false, 
						               success : function(data) {
						 	            	alert("업로드 되었습니다.");
						 	            	uploadfileCode = data.fileCode;
						 	            	changeProfile(uploadfileCode);
						 				},
						 				error : function(){
						 					alert("업로드 에 실패했습니다");
						 				}
						            })
								}
								
								
							
							</script>

			<div class="right-container">
				<div class="info-container">

					<h3 class="info-header">회원 정보 수정</h3>
					
					<div class="info-body">
 						<form enctype="multipart/form-data" id="profileUploadForm">
							<div align="center" id="profile-area" class="box-file-input">
								<img id="profileImg" width="350" height="200"><br><br>
								
									<label id="upload">
									<input type="file" id="profile" name="profile" class="file-input">
									</label>
										
									<div style="vertical-align: middle; background-color:orangered; height: 35px; width: 110px;">
									<a style ="vertical-align: middle; text-align: center; cursor:pointer; color: white; font-weight: bold;" 
									onclick="profileImg();">프로필사진 저장
									</a>
									</div>
							</div>
						</form>
		
					
						<form action="<%=request.getContextPath()%>/update.pf" method = "post">
							<div class="info-row">
								<div class="info-form-label">아이디</div>
								<div class="info-form-input">
									<input name="userId" type="text" class="id-input input-box" readonly="readonly" value="<%= loginUser.getMemberId()%>">
								<p>※ 아이디는 변경 불가합니다.</p>
								</div>
							</div>
							<div class="info-row">
								<div class="info-form-label">비밀번호</div>
								<div class="info-form-input">
									<input name="password" type="password"
										placeholder="영문 대소문자/숫자/특수문자(4~16자)" class="pw-input" value="">
								</div>
							</div>
							<div class="info-row">
								<div class="info-form-label">비밀번호 확인</div>
								<div class="info-form-input">
									<input name="repassword" type="password" class="re-pw-input"
										maxlength="20" value="">
								</div>
							</div>
							<div class="info-row">
								<div class="info-form-label">이름</div>
								<div class="info-form-input">
									<div class="info-form-input-name">
										<input name="userName" type="text"
											placeholder="성" class="first-name-input input-box"
											readonly="readonly" value="<%= loginUser.getName()%>">
									</div>
									<p class="err-msg name-input">※ 이름 변경이 필요하신 경우, 고객센터로 문의바랍니다.</p>
								</div>
							</div>
							
							<div class="info-row">
								<div class="info-form-label">주소</div>
								<div class="info-form-input">
									<input name="address" type="text" class="id-input input-box" value="<%= loginUser.getAddress()%>">
								</div>
							</div>
							
							<div class="info-row">
								<div class="info-form-label">이메일</div>
								<div class="info-form-input">
									<% String [] emailsplit = loginUser.getEmail().split("@"); 
									%>
									<input type="text" id="sendEmail1" name="sendEmail1" style="width: 150px;"
									class="tf_inquiry" title="이메일 앞자리" value="<%= emailsplit[0] %>" readonly="readonly"> <span
									class="txt_at">@</span> 
									<input type="text" id="sendEmail2" style="width: 200px;"
									name="sendEmail2" class="tf_inquiry" title="이메일 뒷자리" value="<%= emailsplit[1]%>" readonly="readonly">
									<button style="background-color:orangered; color: white; font-weight:bold;  width: 80px; height: 40px">수정하기</button>
									<p>※ 메일수정을 위해서는 메일인증이 필요합니다.</p>	
								</div>
							</div>
							
							<div class="info-row board-category">
								<div class="info-form-label">생년월일</div>
								<div class="info-form-input date">
									<div class="info-form-input-date">
									
										<% String birth [] = loginUser.getMemberAge().split("-"); %>
										<input name="birth_year" type="text" class="birth-year-input input-box" style="width: 80px;" value="<%= birth[0] %>"> 년
										<input name="birth_month" type="text" class="birth-month-input input-box" style="width: 80px; margin: 5px;" value="<%= birth[1] %>"> 월
										<input name="birth_day" type="text" class="birth-day-input input-box" style="width: 80px;" value="<%= birth[2] %>"> 일
										
									</div>
								</div>
							</div>
							<div class="info-row">
								<div class="info-form-label">성별</div>
								<div class="info-form-input">
									
									<label class="radio-label"><input type="radio" name = "gender" value = "F" id="genderFemale" checked="">여성</label>
									<label class="radio-label"><input type="radio" name = "gender" value = "M" id="genderMale" checked="">남성</label>
									<script type="text/javascript">
									<% 
									String gender = loginUser.getGender(); 
									if(gender.equals("M")){ %>
										function () {
											document.getElementById("genderMale").checked = true;
											document.getElementById("genderFemale").checked = false;
										}
									<% }else if(gender.equals("F")){%>
										function () {
											document.getElementById("genderFemale").checked = true;
											document.getElementById("genderMale").checked = false;
										}
									<% } %>
									</script>
								</div>
							</div>
							<div class="info-row">
								<div class="info-form-label">휴대폰번호</div>
								<div class="info-form-input">
									<% String phone [] = loginUser.getPhone().split("-"); %>
									<input name="phone1" type="text" style="width: 80px;" class="mobile-input input-box" readonly="readonly" value="<%= phone[0]%>">-
									<input name="phone2" type="text" style="width: 80px;" class="mobile-input input-box" readonly="readonly" value="<%= phone[1]%>">-
									<input name="phone3" type="text" style="width: 80px;" class="mobile-input input-box" readonly="readonly" value="<%= phone[2]%>">
									<button style="background-color:orangered; color: white; font-weight:bold;  width: 80px; height: 40px">수정하기</button>
									<p>※ 휴대폰번호 수정을 위해서는 휴대폰 본인인증이 필요합니다.</p>
								</div>
							</div>
							 <div class="term-container">
								<div class="term-wrapper">
									<input readonly="" type="radio" name="isAgreeAllmarketing"
										class="term-input"><label class="term-label">추천상품,
										이벤트 및 마케팅 정보 수신에 동의(선택)</label>
								</div>
								<div class="term-wrapper sub-term">
									<input type="checkbox" name="email_acceptance"
										class="term-input"><label class="term-label email">이메일</label><input
										type="checkbox" name="sms_acceptance" class="term-input"><label
										class="term-label">SMS</label>
								</div>
							<br> 
							<!-- 버튼영역 -->
							<br>
							<div align="center">
								<button type="submit" onclick="alert('회원정보수정이 완료되었습니다!');" style="background-color:orangered; color: white; font-weight:bold;  width: 50px; height: 30px">저장</button>
								<button style="background-color:gray; color: white; font-weight:bold;  width: 50px; height: 30px">취소</button>
							</div>
							
							</form>
						</div>
				</div>
			</div>
		</div>
	</section>
	<footer id="foot">
		<%@ include file="../../common/footer.jsp"%>
	</footer>
	
	
	
</body>

</html>