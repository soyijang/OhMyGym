<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

	<section style="height: 800px;">
		<div class="mypage-contents">
			<%@ include file="trainerMypageAside.jsp"%>
			<div class="right-container">
				<div class="info-container">

					<div class="head_article">
						<h3 class="info-header">프로필 설정</h3>
					</div>

					<div id="content" class="nolnb main" style="padding-top: 20px;">

						<aside class="aside_wrap">
							<div class="profile_wrap shadow_section">
								<ul class="profile">
									<li class="photo"><span class="thum"
										id="myhome_profile_photo"> <img alt=""
											src="https://pds.saramin.co.kr/person/photo/2018/04/p7xgy5_srvy-x8q8og_p7xgy4su8lx8q8ogp7xgxsbujnx8q8og.jpg">
									</span>
										<button type="button" id="delete_personal_photo_btn"
											class="btn_del img_spr" title="사진 삭제"
											onclick="deletePhoto();"
											onmousedown="try{n_trackEvent('myhome', 'profile' , 'photo-delete', '');}catch(e){};"
											style="display: block;">삭제</button>
										<button type="button" class="btn_regist img_spr" title="사진 등록"
											onclick="insertPhoto('myhome');"
											onmousedown="try{n_trackEvent('myhome', 'profile' , 'photo-manage', '');}catch(e){};">등록</button>
									</li>
									<li class="name">장소이 <br> 트레이너님
									</li>
								</ul>
								<div class="btn_wrap">
									<a href="#"
										onclick="viewResumePopup('10415774'); return false;"
										class="btn_profile_view" title="내 이력서 보기"
										onmousedown="try{n_trackEvent('myhome', 'profile' , 'resume-view', '');}catch(e){};">내
										계정 설정하기</a> <a href="/zf_user/member/svq/list?start_exam=1"
										class="btn_profile_view mt7" title="인성검사 응시하기">자격정보 수정하기</a> <a
										href="/zf_user/member/svq/list?start_exam=1"
										class="btn_profile_view mt7" title="정산 조회하기">정산조회</a>
								</div>
								<div class="txt_alram">
									<p>
										<a
											href="/zf_user/notification/message/move/seq/901696560/date/2020-07-10/tc/notif"
											onmousedown="try{n_trackEvent('myhome', 'profile' , 'center', '');}catch(e){};">
											하루종일 책상에 앉아있는 회사원,개발자를 위한 자세교정 전문 트레이너!</a>
									</p>
								</div>
								<a href="/zf_user/persons/person-update"
									class="btn_setup_profile img_spr" title="설정"
									onmousedown="try{n_trackEvent('myhome', 'profile' , 'person-info', '');}catch(e){};">설정</a>
							</div>
						</aside>
						<div class="wrapper_narrow summary_wrap">
							<div class="dashboard" align="center">
								<ul class="activity_list" align="center">
									<li><a href="#"
										onclick="checkServiceActiveIcon('resume', '1524976787', '/zf_user/resume/resume-manage'); return false;"
										onmousedown="try{n_trackEvent('myhome', 'dashboard' , 'resume-manage', '');}catch(e){};">
											<span class="doing"><em>1</em> / 10</span> <span
											class="sname">신청한 팔로워</span>
									</a></li>
									<li><a href="#"
										onclick="checkServiceActiveIcon('apply', '', '/zf_user/persons/apply-status-list'); return false;"
										onmousedown="try{n_trackEvent('myhome', 'dashboard' , 'apply-status-list', '');}catch(e){};">
											<span class="doing"><em>0</em></span> <span class="sname">진행중
												팔로워</span>
									</a></li>
									<li><a href="#"
										onclick="checkServiceActiveIcon('suggest', '', '/zf_user/member/suggest/status-list'); return false;"
										onmousedown="try{n_trackEvent('myhome', 'dashboard' , 'status-list', '');}catch(e){};">
											<span class="doing"><em>0</em></span> <span class="sname">종료된
												팔로워</span>
									</a></li>
								</ul>
							</div>

							<br>

							<div id="settingField">
								<label>주요분야 설정</label><br><br>

								<form action="" method="">
									<table>
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
					<div class="increase_high_career">

						<!-- WMG-26592 -->
						<img
							src="//www.saraminimage.co.kr/sri/person/banner/high_banner_resume_review2.png"
							alt="모든 기업에게 연락처 공개, 꺼려지시죠? 수락한 기업에게만 연락처가 공개되는 인재Pool 서비스를 이용해 보세요!">
						<a href="/zf_user/member/resume-manage/block-setting"
							onmousedown="try{dataLayer.push({'event': 'ga_lead','category': 'career_high','event-flow': 'nudge_career_high','event-label': 'myhome_banner'});}catch(e){};"
							class="link"><span class="blind">이력서 상태 지금 바로 설정하기</span> </a>
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