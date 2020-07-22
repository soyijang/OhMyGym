<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.omg.jsp.followerBookMark.model.vo.*, java.util.*" %>
<% ArrayList<BookMark> list = (ArrayList<BookMark>) request.getAttribute("bookmarklist"); %>

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
	<section style="height: 1000px;">
		<%@ include file="followerMypageAside.jsp"%>
		<div class="right-container">
			<div class="info-container">

					<h3 class="info-header">북마크 한 게시물</h3>

				<div>
					<ul class="news-article-list article-list list ui-area-article-list">
						
						<% for(BookMark b : list) { %>
						<li class="listItem" >
							
							<div class="articleImg" style="height: 150px;">
								<a href="#" ><img src="../../resources/img/OHmyGymLogo.png"></a>
							</div>
							<div class="articleInfo info" style="height: 150px;">
								
							<!-- 헤드라인 -->
							<a href="#"><b style="font-size: large;"><%= b.getBoardTitle() %></b></a>
							
							<!-- 삭제버튼 -->
							<button onclick="deleteBookmark('<%=b.getBoardNum()%>', '<%=b.getMemberId()%>');" name="deleteImg" style="text-align: right; ">
							 <img  src="/omg/resources/img_icon/delete.png" style="height: 20px; width: 20px; margin-bottom: 8px;"></button>
								
								<!-- 본문 -->
								<div class="subInfo info">
									<% 
										String boardcode = b.getBoardCode();
										String boardname = "";
										switch(boardcode){
										case "10" : boardname = "공지사항"; break;
										}
									%>
									<%= boardname %>
									<span class="date division"><%= b.getWriteDate() %></span>
								</div>
								<div class="description">
									<a href=""><p><%= b.getBoardContent() %></p></a>
								</div>
							</div>
						</li>
						<% } %>
					</ul>
					<br>

				<!-- 삭제용 -->
				<div style="display: none;">
	      			<form id="deleteOneBookMark" method="post">
						<input id="saveBoardNum" name="saveBoardNum" type="text" >
						<input id="saveUserId" name="saveUserId" type="text">
					</form>
				</div>

				</div>
			</div>
		</div>
	</section>
	<footer>
		<%@ include file="../../common/footer.jsp"%>
	</footer>
	
	<script type="text/javascript">
	
		function deleteBookmark(boardNum, userId) {
			
			var boardNum = boardNum;
			var userId = userId;
			
			document.getElementById("saveBoardNum").value = boardNum;
			document.getElementById("saveUserId").value = userId;
			
			$("#deleteOneBookMark").attr("action","<%= request.getContextPath() %>/update.bm");
			$("#deleteOneBookMark").submit();
			
		}
	
	</script>
	
	
</body>
</html>