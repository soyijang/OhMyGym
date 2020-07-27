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

	<div style="display:none; ">
		<%@ include file="followerMypageAside.jsp" %>
	</div>

	<div id="cMain" align="center" class="">
		<div id="mArticle" class="">
			<div class="dimmed_layer" style="display: none"></div>
			<h2 id="daumBody" class="screen_out">회원탈퇴 안내동의 본문</h2>
			<div class="myinfo_intro intro_out">
				<div class="cont_intro">
					<img src="/omg/resources/messsage/delete.png">
				</div>
			</div>
			
				<div class="info_agree">

					<div class="info_user">
						<strong class="tit_agree">오마이짐 아이디 재사용 및 복구 불가 안내</strong> 
						<span class="txt_agree">회원탈퇴 진행 시 본인을 포함한 타인 모두 
							<em class="emph_g">아이디 재사용이나 복구가 불가능합니다.</em>
							<br> 신중히 선택하신 후 결정해주세요.
						</span> 
						<span class="check_notice"> 
							<input type="checkbox" id="idAgree" name="idAgree"> 동의
						</span>
					</div>

					<div class="info_user">
						<strong class="tit_agree">내정보 및 개인형 서비스 이용 기록 삭제 안내</strong> 
						<span class="txt_agree">내정보 및 개인형 서비스 이용기록이 모두 삭제되며,
							<em class="emph_g">삭제된 데이터는 복구되지 않습니다.</em><br>삭제되는 서비스를 확인하시고, 필요한 데이터는 미리 백업을 해주세요.
						</span>
						<dl class="list_agree">
							<dt class="tit_service">트레이닝이력</dt>
							<dd class="txt_service">트레이닝 매칭 신청 및 진행 영상 등 삭제</dd>
							<dt class="tit_service">건강정보</dt>
							<dd class="txt_service">키, 몸무게, 체지방률 등 건강정보 이력 삭제</dd>
							<dt class="tit_service">문의내역</dt>
							<dd class="txt_service">1:1 문의내용 삭제</dd>
							<dt class="tit_service">내정보</dt>
							<dd class="txt_service">닉네임, 전화번호, 주소 등 정보 삭제</dd>
							<dt class="tit_service">오머니</dt>
							<dd class="txt_service lst">오머니 충전 및 사용 이력 삭제</dd>
							<dt class="tit_service">식단내역</dt>
							<dd class="txt_service lst">식단기록 내역삭제</dd>
						</dl>
						<span class="check_notice"> 
							<input type="checkbox" id="serviceAgree" name="serviceAgree">동의
						</span>
					</div>

					<div class="info_user">
						<strong class="tit_agree">게시판형 서비스에 등록한 게시글 삭제 불가 안내</strong> 
						<span class="txt_agree">삭제를 원하는 게시글이 있다면 반드시 회원탈퇴 전 비공개 처리하거나
							삭제하시기 바랍니다.<br>탈퇴 후에는 회원정보가 삭제되어 본인 여부를 확인할 수 있는 방법이 없어, 
							<em class="emph_g">게시글을 임의로 삭제해드릴 수 없습니다.</em>
						</span>
						<dl class="list_agree">
							<dt class="tit_service">1:1 문의</dt>
							<dd class="txt_service">나의 질문 및 답변, 내가 남긴 의견 등</dd>
							<dt class="tit_service">그룹소통방</dt>
							<dd class="txt_service">그룹소통방 게시물 및 댓글</dd>
							<dt class="tit_service">이벤트</dt>
							<dd class="txt_service">이벤트 참여 댓글 및 사진</dd>
							<dt class="tit_service">챌린지</dt>
							<dd class="txt_service">챌린지 참여 인증 사진</dd>
							<dt class="tit_service">기타</dt>
							<dd class="txt_service">공적인 영역의 게시물과 댓글, 의견 등</dd>
						</dl>
						<span class="check_notice"> 
							<input type="checkbox" id="boardAgree" name="boardAgree">동의
						</span>
					</div>
				</div>
				<div class="wrap_btn">
					<button >
						<a href="/omg/index.jsp"><img src="/omg/resources/button/deleteno.png"></a>
					</button>
					<div onclick="popup();">
						<img src="/omg/resources/button/deletenext.png">
					</div>
				</div>
				
				
<!--구현실패 
			회원탈퇴_안내동의 팝업
			<div id="wrongLayer" class="userinfo_layer"
				style="top: 300px; margin-left: 188px; display: none;">
				<div class="inner_myinfo_layer">
					<div class="layer_head">
						<strong class="screen_out">회원탈퇴 안내동의 레이어</strong>
					</div>
					<div>
						<textarea rows="10" cols="50">탈퇴사유를 입력해주세요.</textarea>
					</div>
					<div class="layer_body" style="text-align: center;">
						<strong class="tit_layer" >오마이짐 탈퇴는 되돌릴 수 없습니다.<br>정말 탈퇴하시겠습니까?</strong>
						<div class="btn_process">
							<button type="button" class="btn_comm btn_ok">
								<span class="screen_out">확인</span>
							</button>
						</div>
					</div>
				</div>
			</div> -->
			
		</div>
	</div>

	<%@ include file="../../common/footer.jsp"%>
	
	<script type="text/javascript">
	
		function popup() {
			var con_test = confirm('잔여 캐쉬가 존재합니다! 탈퇴를 그대로 진행하시겠습니까?');
			
			if(con_test == true){
				location.replace('/omg/update.wd');
				var finalcon = confirm("탈퇴처리가 완료되었습니다!");
			}
			else if(con_test == false){
			  location.href('views/follower/followerMypage/followerWithdraw.jsp');
			}
		}
	</script>
</body>
</html>