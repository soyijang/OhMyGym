<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*" %>
<% 
HashMap<String, Object> hmap = (HashMap<String, Object>) request.getAttribute("information"); 
ArrayList<String> trainerInfo = (ArrayList<String>) hmap.get("trainerInfo"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="/omg/resources/css/fmypageContainer.css">
<link rel="stylesheet" type="text/css"
	href="/omg/resources/css/tjob.css">
<link rel="stylesheet" type="text/css"
	href="/omg/resources/css/layout.css">

<style>
	#settingField label:first-child {
		font-size: 1.2em;
	}
	#settingField table {
		width: 500px;
		margin-left: 15px;
	}
	#settingField tr {
		height: 30px;
	}
	#settingField th {
		width: 150px;
	}
	#settingField select {
		width: 180px;
	}
	#settingField input {
		width: 70px;
		height: 4em;
		border: none;
		background: orangered;
		color: white;
		font-family: "Noto Sans KR";
		text-align: center;
	}

</style>
</head>
<body>
	<header>
		<%@ include file="../../common/trainerNav.jsp"%>
	</header>
	<script>
		function loadImg(value) {
			if (value.files && value.files[0]) {
				var reader = new FileReader();
	
				reader.onload = function(e) {
					$("#profileImg").attr("src", e.target.result);
				}
				reader.readAsDataURL(value.files[0]);
			}
		}
	
	</script>
	<section style="height: 1000px;">
		<div class="mypage-contents">
			<div class="right-container">
				<div class="info-container">

					<div class="head_article">
						<h3 class="info-header">프로필 설정</h3>
					</div>
					
					<!-- 윗영역 -->
					<div id="content" class="nolnb main" style="padding-top: 20px; text-align: center;" align="center">
						<div class="aside_wrap" style="width: 800px;">
							<div class="profile_wrap shadow_section" align="center">
								<ul class="profile" >
									<li class="photo" ><span class="thum" id="myhome_profile_photo"> 
									<img  lt="" src=""> </span>
										<button type="button" id="delete_personal_photo_btn" class="btn_del img_spr" title="사진 삭제"
											onclick="deletePhoto();" style="display: block;">삭제</button>
										<button type="button" class="btn_regist img_spr" title="사진 등록" >등록</button>
									</li>
									<li class="name"><%= loginUser.getName() %><br>트레이너님
									</li>
								</ul>
								<div class="btn_wrap">
									<a href="#">내 계정 설정하기</a> 
									<a href="" >자격정보 수정하기</a> 
									<a href="" >정산조회</a>
								</div>
								<div class="txt_alram">
									<p><a href=""><%= trainerInfo.get(2) %></a></p>
								</div>
								<a href="" class="btn_setup_profile img_spr" title="설정">설정</a>
							</div>
						
						<div class="wrapper_narrow summary_wrap" style="width: 800px; margin-left:18%; text-align:center;">
							<div class="dashboard" align="center" style="text-align: center;">
								<ul class="activity_list" >
									<li><a href="#">
											<span class="doing"><em>1</em> / 10</span> <span
											class="sname">신청한 팔로워</span>
									</a></li>
									<li><a href="#">
											<span class="doing"><em>0</em></span> <span class="sname">진행중
												팔로워</span>
									</a></li>
									<li><a href="#">
											<span class="doing"><em>0</em></span> <span class="sname">종료된
												팔로워</span>
									</a></li>
								</ul>
							</div>

							<br>

							<div id="settingField">
								
								<form action="" method="">
									<table style="text-align: center;">
										<tr>
											<th>전문분야 선택</th>
											<td>
												<select name="" id="">
													<option value="">체중감량</option>
													<option value="">체중증량</option>
													<option value="">근력향상</option>
													<option value="">자세교정</option>
												</select> 
											</td>
											<td rowspan="2" width="100px">
												<input type="submit" value="설정하기">
											</td>
										</tr>
										<tr>
											<th>보조분야 선택</th>
											<td>
												<select name="" id="">
													<option value="">체중감량</option>
													<option value="">체중증량</option>
													<option value="">근력향상</option>
													<option value="">자세교정</option>
												</select>
											</td>
										</tr>
									</table>
								</form>
							</div>
						</div>
						</div>
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