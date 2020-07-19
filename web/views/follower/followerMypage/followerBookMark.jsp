<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.omg.jsp.followerBookMark.model.vo.*, java.util.*";%>
<% ArrayList<BookMark> list = (ArrayList<BookMark>) request.getAttribute("bookmarklist"); 
   
%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="/omg/resources/css/fmypageContainer.css">
<link rel="stylesheet" type="text/css"
	href="/omg/resources/css/tjob.css">
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#right-container {
	width: 100%;
	height: 750px;
	background-image: url(resources/img/background_img1.png);
	background-attachment: fixed;
	color: white;
}

.list.article-list>.listItem {
	width: 100%;
	margin-bottom: -1px;
	padding: 15px 0;
	border-top: 1px solid #ddd;
	border-bottom: 1px solid #ddd;
	float: left;
}

.list.article-list>.listItem .articleImg {
	border: 1px solid #e8e8e8;
	overflow: hidden;
	margin-right: 15px;
	text-align: center;
	white-space: nowrap;
	position: relative;
	float: left;
	width: 210px;
	max-height: 160px;
}
</style>
</head>
<body>
	<%@ include file="../../common/followerNav.jsp"%>
	<section style="height: 800px;">
		<%@ include file="followerMypageAside.jsp"%>
		<div class="right-container">
			<div class="info-container">

					<h3 class="info-header">북마크 한 게시물</h3>

				<div>
					<ul class="news-article-list article-list list ui-area-article-list">
						
						<% for(BookMark b : list) { %>
						<li class="listItem">
							<div class="articleImg">
								<a href="#"><img src="../../resources/img/OHmyGymLogo.png"><b class="vamHelper"></b></a>
							</div>
							<div class="articleInfo info">
								<a href="/?m=news&amp;uid=42666"> 
								<p class="title mu-icon mu-icon-new" value="<%= b.getBoardNum() %>"> <span class="creplyCnt new"></span></p></a>
								<div class="subInfo info">
									<span class="date division">2시간 전</span><span class="view">
								</div>
								<div class="description">
									<a href="/?m=news&amp;uid=42666"><p>최근 무서운 기세로 스니커즈의
											자리를 노리는 뮬. 스니커즈냐 뮬이냐 그것이 문제로다! 무신사가 선별한 스니커즈와 뮬 중 마음에 드는 것에 한
											표를 행사하고 댓글 이벤트에 참여해보자. 무신사 포인트를 얻는 가장 쉬운 방법 중 하나다. 지금 보고 있는
											뉴스의 URL을 개인 SNS 계정에 공유하고 코멘트를 남기면 된다. 그런 ...</p></a>
								</div>
							</div>
						</li>
						<% } %>
					
						
						
					</ul>
				<!-- 	<button><img src="../../resources/button/bookmarkfix.png"> </button>
					<button><img src="../../resources/button/save.png"> </button> -->
					
						
					<br>
				<!-- 버튼영역 -->
				<div>
					<button style="background-color:gray; color: white; font-weight:bold;  width: 50px; height: 30px">수정</button>
					<button style="background-color:orangered; color: white; font-weight:bold;  width: 50px; height: 30px">저장</button>
				</div>

				</div>










			</div>
		</div>
	</section>

	<footer>
		<%@ include file="../../common/footer.jsp"%>
	</footer>
</body>
</html>