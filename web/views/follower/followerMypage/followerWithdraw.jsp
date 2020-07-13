<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/omg/resources/css/daumcommondelete.css">
<link rel="stylesheet" type="text/css" href="/omg/resources/css/fmypageContainer.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>

<body>
	<%@ include file="../../common/followerNav.jsp"%>
	<div id="cMain" align="center" class="">
		<div id="mArticle" class="">
			<div class="dimmed_layer" style="display: none"></div>
			<h2 id="daumBody" class="screen_out">회원탈퇴 안내동의 본문</h2>
			<div class="myinfo_intro intro_out">
				<div class="cont_intro">
					<img src="/omg/resources/messsage/delete.png">
				</div>
			</div>
			<form action="/withdraw.daum?action=agree-check" method="post">

				<div class="info_agree">

					<div class="info_user">
						<strong class="tit_agree">오마이짐 아이디 재사용 및 복구 불가 안내</strong> <span
							class="txt_agree">회원탈퇴 진행 시 본인을 포함한 타인 모두 <em
							class="emph_g">아이디 재사용이나 복구가 불가능합니다.</em><br> 신중히 선택하신 후
							결정해주세요.
						</span> <span class="check_notice"> <input type="checkbox"
							id="idAgree" name="idAgree" class="tf_check"> <!--                   <label for="idAgree" class="lab_check"> -->
							<span class="ico_comm ico_check"></span> 동의
						</span>
					</div>

					<div class="info_user">
						<strong class="tit_agree">내정보 및 개인형 서비스 이용 기록 삭제 안내</strong> <span
							class="txt_agree">내정보 및 개인형 서비스 이용기록이 모두 삭제되며,<em
							class="emph_g">삭제된 데이터는 복구되지 않습니다.</em><br>삭제되는 서비스를 확인하시고,
							필요한 데이터는 미리 백업을 해주세요.
						</span>
						<dl class="list_agree">
							<dt class="tit_service">
								<a href="http://mail.daum.net" class="link_service"
									data-tiara-action-name="메일_링크">트레이닝이력</a>
							</dt>
							<dd class="txt_service">트레이닝 매칭 신청 및 진행 영상 등 삭제</dd>
							<dt class="tit_service">
								<a href="http://blog.daum.net/" class="link_service"
									data-tiara-action-name="블로그_링크">건강정보</a>
							</dt>
							<dd class="txt_service">키, 몸무게, 체지방률 등 건강정보 이력 삭제</dd>
							<dt class="tit_service">
								<a href="http://addrbook.daum.net/" class="link_service"
									data-tiara-action-name="주소록_링크">문의내역</a>
							</dt>
							<dd class="txt_service">1:1 문의내용 삭제</dd>
							<dt class="tit_service">
								<a href="http://code.daum.net/web/" class="link_service"
									data-tiara-action-name="코드서비스_링크">내정보</a>
							</dt>
							<dd class="txt_service">닉네임, 전화번호, 주소 등 정보 삭제</dd>
							<dt class="tit_service">오머니</dt>
							<dd class="txt_service lst">오머니 충전 및 사용 이력 삭제</dd>
							<dt class="tit_service">
								<a href="http://game.daum.net/" class="link_service"
									data-tiara-action-name="다음게임_링크">식단내역</a>
							</dt>
							<dd class="txt_service lst">식단기록 내역삭제</dd>
						</dl>
						<span class="check_notice"> <input type="checkbox"
							id="serviceAgree" name="serviceAgree" class="tf_check"> <label
							for="serviceAgree" class="lab_check"> <span
								class="ico_comm ico_check"></span> 동의
						</label>
						</span>
					</div>

					<div class="info_user">
						<strong class="tit_agree">게시판형 서비스에 등록한 게시글 삭제 불가 안내</strong> <span
							class="txt_agree">삭제를 원하는 게시글이 있다면 반드시 회원탈퇴 전 비공개 처리하거나
							삭제하시기 바랍니다.<br>탈퇴 후에는 회원정보가 삭제되어 본인 여부를 확인할 수 있는 방법이 없어, <em
							class="emph_g">게시글을 임의로 삭제해드릴 수 없습니다.</em>
						</span>
						<dl class="list_agree">
							<dt class="tit_service">
								<a href="http://tip.daum.net/" class="link_service"
									data-tiara-action-name="TIP_링크">1:1 문의</a>
							</dt>
							<dd class="txt_service">나의 질문 및 답변, 내가 남긴 의견 등</dd>
							<dt class="tit_service">
								<a href="http://cafe.daum.net/" class="link_service"
									data-tiara-action-name="카페_링크">그룹소통방 </a>
							</dt>
							<dd class="txt_service">그룹소통방 게시물 및 댓글</dd>
							<dt class="tit_service">
								<a href="http://media.daum.net/" class="link_service"
									data-tiara-action-name="뉴스_링크">이벤트</a>
							</dt>
							<dd class="txt_service">이벤트 참여 댓글 및 사진</dd>
							<dt class="tit_service">
								<a href="http://media.daum.net/" class="link_service"
									data-tiara-action-name="뉴스_링크">챌린지</a>
							</dt>
							<dd class="txt_service">챌린지 참여 인증 사진</dd>
							<dt class="tit_service">기타</dt>
							<dd class="txt_service">공적인 영역의 게시물과 댓글, 의견 등</dd>
						</dl>
						<span class="check_notice"> <input type="checkbox"
							id="boardAgree" name="boardAgree" class="tf_check"> <label
							for="boardAgree" class="lab_check"> <span
								class="ico_comm ico_check"></span> 동의
						</label>
						</span>
					</div>
				</div>
				<div class="wrap_btn">
					<button >
						<a href="/home.daum"><img src="/omg/resources/button/deleteno.png"></a>
					</button>
					<button onclick="confirm('잔여 캐쉬가 존재합니다! 탈퇴를 그대로 진행하시겠습니까?');">
						<img src="/omg/resources/button/deletenext.png">
					</button>
				</div>
			</form>

			<!-- 회원탈퇴_안내동의 팝업 -->
			<div id="wrongLayer" class="userinfo_layer"
				style="top: 300px; margin-left: -188px; display: none;">
				<div class="inner_myinfo_layer">
					<div class="layer_head">
						<strong class="screen_out">회원탈퇴 안내동의 레이어</strong>
					</div>
					<div>
						<textarea rows="50" cols="50">
							탈퇴사유를 입력해주세요.
						</textarea>
					</div>
					<div class="layer_body">
						<strong class="tit_layer">안내사항을 확인하신 후, 동의해 주세요.</strong>
						<div class="btn_process">
							<button type="button" class="btn_comm btn_ok"
								data-tiara-action-name="확인">
								<span class="screen_out">확인</span>
							</button>
						</div>
					</div>
					<div class="layer_foot">
						<button type="button" class="btn_comm btn_close"
							data-tiara-action-name="닫기">닫기</button>
					</div>
				</div>
			</div>

		</div>
		<!--// mArticle -->
	</div>

	<%@ include file="../../common/footer.jsp"%>
	
	<script type="text/javascript">
		function() {
			var con_test = confirm('잔여 캐쉬가 존재합니다! 탈퇴를 그대로 진행하시겠습니까?');
			if(con_test == true){
				var con = document.getElementById("wrongLayer");
				con.style.display = 'block';
			}
			else if(con_test == false){
			  document.write("취소를 누르셨군요.");
			}
	</script>
</body>
</html>