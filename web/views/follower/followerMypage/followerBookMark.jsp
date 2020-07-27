<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.omg.jsp.followerBookMark.model.vo.*, java.util.*" %>
<% ArrayList<BookMark> list = (ArrayList<BookMark>) request.getAttribute("bookmarklist"); 
   ArrayList<GroupBookMark> list2 = (ArrayList<GroupBookMark>) request.getAttribute("groupbookmarklist"); 
%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="/omg/resources/css/fmypageContainer.css">
<link rel="stylesheet" type="text/css" href="/omg/resources/css/tjob.css">
	
	
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
	<section style="height: 1500px;">
		<%@ include file="followerMypageAside.jsp"%>
		<div class="right-container">
			<div class="info-container">


				<div>
					<ul class="news-article-list article-list list ui-area-article-list">
					<h3 class="info-header">북마크 한 오마이짐 게시물</h3>
					<p>※ 북마크기능을 통해 원하는 게시물만 모아볼 수 있습니다.<br>※ 북마크는 최근에 담긴 게시물부터 모여집니다.<br>※ 'x'버튼을 누르면 북마크에서 사라집니다.</p>	
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
						
						
						<% for(GroupBookMark b : list2) { %>
						<li class="listItem" >
							
							<div class="articleImg" style="height: 150px;">
								<a href="#" ><img src="../../resources/img/OHmyGymLogo.png"></a>
							</div>
							<div class="articleInfo info" style="height: 150px;">
								
							<!-- 삭제버튼 -->
							<button onclick="deleteBookmark2('<%=b.getGroupBoardNum()%>', '<%=b.getMemberId()%>');" name="deleteImg" style="text-align: right; ">
							 <img  src="/omg/resources/img_icon/delete.png" style="height: 20px; width: 20px; margin-bottom: 8px;"></button>
								
								<!-- 본문 -->
								<div class="subInfo info">
									<% 
										String boardcode = b.getGroupBoardNum();
										String boardname = "";
										switch(boardcode){
										case "10" : boardname = "공지사항"; break;
										}
									%>
									<%= boardname %>
									<span class="date division"><%= b.getGroupDate() %></span>
								</div>
								
								<div class="description">
									<a href=""><p><%= b.getGroupContent() %></p></a>
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
	
		/* 일반게시물 북마크 삭제용 */
		function deleteBookmark(boardNum, userId) {
			
			var boardNum = boardNum;
			var userId = userId;
			
			document.getElementById("saveBoardNum").value = boardNum;
			document.getElementById("saveUserId").value = userId;
			
			$("#deleteOneBookMark").attr("action","<%= request.getContextPath() %>/update.bm");
			$("#deleteOneBookMark").submit();
			
		}
		/* 그룹소통방 북마크 삭제용 */
		function deleteBookmark2(boardNum, userId) {
			
			var boardNum = boardNum;
			var userId = userId;
			
			document.getElementById("saveBoardNum").value = boardNum;
			document.getElementById("saveUserId").value = userId;
			
			$("#deleteOneBookMark").attr("action","<%= request.getContextPath() %>/groupUpdate.bm");
			$("#deleteOneBookMark").submit();
			
		} 
	
	</script>
	
	
</body>
</html>