<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.omg.jsp.matching.model.vo.MatchingRequest"%>
<% MatchingRequest matchInfo  = (MatchingRequest) request.getAttribute("matchResult");%>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.1/css/all.min.css"
	rel="stylesheet">
<style>
body {
	overflow-x: hidden;
}

nav#side_nav {
	font-family: Noto Sans SC;
	position: absolute;
	width: 178px;
	height: 724px;
	left: 100px;
}

nav#side_nav div.side_container {
	border: solid 1px rgb(103, 103, 103);
	width: 150px;
	height: 800px;
	border-radius: 9px;
	box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
}
/*article 스타일*/
article#group_commu_article {
	position: absolute;
	width: 1102px;
	height: 86px;
	left: 300px;
}

article#group_commu_article div.commu_room_Name {
	padding: 20px 40px 40px 40px;
	border: solid 1px #979797;
	width: 1000px;
	height: 766px;
	border-radius: 9px;
	box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
}

p#commu_Trainer_Name {
	display: inline-block;
	line-height: 60px;
	padding-left: 20px;
	vertical-align: middle;
	width: 890px;
	height: 60px;
	font-family: Noto Sans SC;
	font-size: 28px;
	font-weight: bold;
	color: #696969;
	background: rgba(227, 227, 227, 0.47);
	border-radius: 9px;
}

div.commu_room_Board {
	position: absolute;
	left: 200px;
	top: 150px;
	/* border: solid 1px black; */
	width: 650px;
	height: 600px;
	overflow: auto;
	overflow-x: hidden;
	padding-left: 100px;
	padding-bottom: 30px;
	border-radius: 9px;
	background: rgba(227, 227, 227, 0.47);
}

nav#In_Board_nav {
	float: left;
	margin-left: 40px;
	margin-right: 20px;
}

div.side_container {
	padding-top: 25px;
	border: solid 1px #979797;
	width: 150px;
	height: 100%;
}

div.side_container ul li {
	text-align: left;
	padding-top: 25px;
}

div#Board {
	width: 650px;
	height: 900px;
}

div.Board_side_container {
	padding-top: 25px;
	text-align: left;
	position: absolute;
	width: 140px;
	height: 500px;
	left: 40px;
	top: 150px;
	background: rgba(227, 227, 227, 0.47);
	border-radius: 9px;
}

div.post_part {
	background: white;
	width: 500px;
	/* width: 500px; 
            height: 300px; */
	margin-top: 25px;
	margin-bottom: 25px;
	font-family: "Noto Sans KR";
	border-radius: 9px;
	box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
	padding: 20px;
}

div.post_part_comment {
	background: rgba(241, 241, 241, 0.25);
	margin-top: 15px;
	margin-bottom: 15px;
	font-family: "Noto Sans KR";
	font-size: 13px;
	border-radius: 9px;
	box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
}

div.add_comment {
	background: rgba(241, 241, 241, 0.25);
	font-family: "Noto Sans KR";
	font-size: 13px;
	border-radius: 9px;
	box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
}

.select {
	color: orangered;
}

div.Board_side_container ul.side_menu {
	margin-left: -19px;
}

div.Board_side_container ul.side_menu li {
	padding-bottom: 20px;;
}

div.Board_side_nav_btn1, div.Board_side_nav_btn2, div.Board_side_nav_btn3, div.Board_side_nav_btn4 {
	font-family: "Noto Sans KR";
	text-align: center;
	background: white;
	width: 100px;
	height: 25px;
	padding-top: 12px;
	box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
	cursor: pointer;
}

div#board_btn_select {
	background: orangered;
	color: white;
}

em.user_name {
	margin-left: 8px;
	font-weight: bold;
	font-style: normal;
}

span.upload_time {
	margin-left: 8px;
	font-style: normal;
	font-weight: bold;
	font-size: 13px;
	color: rgb(145, 46, 0)
}

textarea.post_box {
	height: auto;
	border: none;
	padding: 20px;
	font-family: "Noto Sans KR";
	font-size: 14px;
	color: gray;
	resize: none;
	overflow-y: hidden;
}

textarea.post_box:focus {
	outline: none;
}

textarea.comments_box {
	background: none;
	border: none;
	margin-left: 10px;
	outline: none;
	border: none;
	padding: 20px;
	font-family: "Noto Sans KR";
	font-size: 12px;
	color: gray;
	resize: none;
	overflow-y: hidden;
}

textarea.comments_box:focus {
	outline: none;
}

summary:focus {
	outline: none;
}

footer {
	background: rgb(247, 247, 247);
	font-family: "Noto Sans KR";
	font-size: 11px;
	font-weight: 400;
	margin-left: 150px;
	margin-right: 150px;
}

p {
	color: rgb(116, 116, 116);
}

img.footer_logo {
	margin-right: 80px;
}

img.footer-icon {
	margin-right: 0px;
}

button#add_comment_btn {
	margin-left: 10px;
	float: left;
	width: 80px;
	height: 35px;
	border: none;
	border-radius: 10px;
	background: orangered;
	color: white;
	font-weight: bold;
}

button#add_comment_btn:hover {
	background: navy;
}

button#add_comment_btn:focus {
	outline: none;
}

div.add_part {
	background: white;
	width: 500px;
	min-height: 100px;
	margin-top: 25px;
	margin-bottom: 25px;
	font-family: "Noto Sans KR";
	border-radius: 9px;
	box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
	padding: 20px;
	display: none;
}

#addImgBtn {
	border: none;
	border-radius: 8px;
	font-size: 0.8em;
	width: 80px;
	height: 20px;
	background: rgb(181, 181, 181);
	color: rgb(0, 0, 0);
	font-weight: bold;
	margin-top: 5px;
	margin-left: 10px;
}

button#addImgBtn:hover {
	background: rgb(0, 0, 0);
	color: rgb(255, 255, 255);
	font-weight: bold;
}

button#uploadBtn {
	border: none;
	border-radius: 8px;
	width: 90px;
	height: 25px;
	background: orangered;
	color: rgb(255, 255, 255);
	font-weight: bold;
	margin-top: 5px;
	margin-left: 15px;
}

button#uploadBtn:hover {
	background: navy;
	color: rgb(255, 255, 255);
	font-weight: bold;
}

button:focus {
	outline: none;
}

textarea.add_postBox {
	border: none;
	resize: none;
}

textarea.add_postBox:focus {
	outline: none;
}

.post_userprofile {
	display: inline-block;
	vertical-align: top;
}

/*포스트 스타일부분*/
div.user_img{
	display: inline-block;
}

div.user_img img{
	border-radius: 70%; 
	overflow: hidden;
}

div.user_profile{
	display: inline-block; 
	vertical-align: top;
}

div.post_Content_img{
	padding: 20px; 
	text-align: center;
}

#open_comment{
	margin-top: 15px;
}

#open_comment summary{
	font-weight: bold; 
	font-size: 0.9em;
}

div.post_commentback{
	background: rgb(245, 245, 245); 
	width: 100%; 
	height: 100%;"
}

div.Board_side_nav_btn{
	cursor: pointer;
}
</style>
</head>

<body>
	<%@ include file="../../common/trainerNav.jsp"%>
    <aside style="float: left;">
        <!--OH마이피티 메뉴-->
        <%@ include file="trainerOhMyPtAside.jsp" %>
        <!--OH마이피티 메뉴 종료-->
    </aside>
		<article id="group_commu_article">
			<div class="commu_room_Name">
				<p id="commu_Trainer_Name">
					<!--트레이너 이름-->
					<%=loginUser.getName()%> 트레이너 그룹 소통방
				</p>
				<nav id="In_Board_nav">
					<div class="Board_side_container">
						<ul class="side_menu">
							<li style="padding-right: -20px;">
								<div class="Board_side_nav_btn1" id="board_btn_select" onclick="selectDiv('최신');">최신</div>
							</li>
							<li>
								<div class="Board_side_nav_btn2"  onclick="selectDiv('인기');">인기</div>
							</li>
							<li>
								<div class="Board_side_nav_btn3"  onclick="selectDiv('운동');">운동</div>
							</li>
							<li>
								<div class="Board_side_nav_btn4"  onclick="selectDiv('식단');">식단</div>
							</li>
						</ul>
					</div>
				</nav>
				<br>
				<div style="position: absolute; top: 115px; right: 170px">
					<button onclick="onInputPost();"
						style="font-weight: bold; border: 2px solid rgb(255, 30, 0); background: orangered; color: white; border-radius: 8px;">글쓰기</button>
				</div>
				<div class="commu_room_Board">
					<article>
						<div>
							<div id="Board">
								<div class="add_part">
									<!-- 사용자 프로필 -->
									<div class="user_img" style="display: inline-block;">
										<img class="<%=loginUser.getMemberId()%>"src="" width="50px" height="50px" style="border-radius: 70%; overflow: hidden;">
									</div>
									<div id="user_profile" class="post_userprofile">
										<em class="user_name"><%=loginUser.getName()%>
										</em>
										<select style="float: right;" id="postType">
											<option>운동</option>
											<option>식단</option>
										</select>
										 
										<br>
										<!-- 사용자 프로필 -->
										<form id="ImgUploadForm">
										<input type="file" name="selectuploadImg" id="selectuploadImg"
											onchange="loadImg(this)" style="display: none"></form> <a
											id="addImgBtn" style=""
											onclick="document.all.selectuploadImg.click()">이미지추가</a>
										<button id="uploadBtn" onclick="addPost();"
											style="margin-top: 5px; margin-left: 200px;">업로드</button>
										<button onclick="offInputPost();">닫기</button>
									</div>
									<hr>
									<div class="add_postcontent"
										style="border-radius: 8px; border: 1px solid rgb(193, 193, 193); margin-left: 25px;">
										<div class="add_postBox">
											<textarea id="add_postBox" class="add_postBox"
												onkeydown="addresize(this)" onkeyup="addresize(this)"
												cols="62" name="addpost" placeholder="하고싶은 말을 적어주세요."></textarea>
											<div id="add_img" style="text-align: center;"></div>
										</div>
									</div>

								</div>
								<div id="postcontainer">
								</div>
							</div>
						</div>
					</article>
				</div>
			</div>
		</article>
	</section>
	
	<script>

	function selectAllPost(value){
		$("#postcontainer").children().remove();
		$("#add_postBox").val('');
		var roomId = "<%=matchInfo.getGroupCommuNum()%>";
		$.ajax({
			url : "/omg/selectGroupCommu.follower",
			data : {
				roomId : roomId,
				type : value
			},
			type : "post",
			success : function(data) {
				for(var key in data){
					var $addPostPart = $("#postcontainer");
					if(value == '최신' || value== '인기'){
						$addPostPart.prepend("<div id='postcontainer'>" +
								"<div class='post_part' id='postcontent'>"+
								"<div class='user_img' style='display: inline-block;'>"+
								"<img class='"+data[key].groupUserId+"' width='50px' height='50px'></div>"+
								"<div id='user_profile' class='user_profile'>"+
								"<em class='user_name'>"+data[key].groupUserId+"</em><br>"+ 
								"<span class='upload_time'>"+data[key].groupDate+" "+data[key].groupDateTime+"</span></div>"+
								"<div style='display: inline-block; float: right;'><i class='fas fa-ellipsis-v'></i></div>"+"<div style='margin-left: 60px; font-size: 0.8em; font-weight: bold;'>#"+data[key].groupType+"</div><hr>"+
								"<div class='post_Content'>"+
								"<textarea class='post_box' cols='60' name='post_content' readonly>"+data[key].groupContent+"</textarea></div>"+	
								"<div id='post_Content_img'>"+"<img style='border-radius: 10px; margin-left: 150px; width: 200px; height: 200px;' id='postFile"+data[key].groupBoardNum+"'>"+"</div>"+
								"<div id='MarkAndLike' style='margin-top: 20px;'>"+
								"<span class='like' style='margin-right: 10px; font-weight: bold;'><a onclick='addLike("+data[key].groupBoardNum+");' style='cursor: pointer;'><i class='fas fa-thumbs-up' style='margin-right: 5px;'></i>"+
								"좋아요</a><a id='postlike"+data[key].groupBoardNum+"'>"+0+"</a></span>"+
								"<span class='mark' style='font-weight: bold;'><i class='far fa-bookmark' style='margin-right: 5px; font-weight: bold; cursor: pointer;' id='postMark"+data[key].groupBoardNum+"' onclick='addBookMark("+data[key].groupBoardNum+")'>북마크</i>"+
								"<a>"+"</a></span></div>"+
								"<details id='open_comment' open style='margin-top: 15px;'>"+
								"<summary>댓글</summary>"+
								"<div class='post_commentback'>"+
								"<div id='post_comments"+data[key].groupBoardNum+"'>"+"</div>"+
									"<div id='add_comments'>"+
											"<div class='add_part_comment' style='padding: 5px; min-height: 40px;'>"+
												"<div style='float: left;'>"+
													"<textarea id='input_comment"+data[key].groupBoardNum+"' onclick='printData("+data[key].groupBoardNum+");' placeholder='댓글을 입력해주세요.' onkeydown='resize(this)' onkeyup='resize(this)'class='input_comments_box' cols='42' name='post_comments_content' style='float: left; margin-left: 30px; border-radius: 10px; resize: none; display: block; height: auto; float: left;'>"+
													"</textarea>"+
													"<button id='add_comment_btn' onclick='addReply("+data[key].groupBoardNum+");'>입력하기</button>"+
													"</div></div></div></div></details></div></div>");
							selectLikes(data[key].groupBoardNum);
					        profileload(data[key].groupUserId);
					        imgPostload(data[key].groupBoardNum);
					        selectBookMark(data[key].groupBoardNum);
					}else{
						if(data[key].groupType == value){
							$addPostPart.prepend("<div id='postcontainer'>" +
								"<div class='post_part' id='postcontent'>"+
								"<div class='user_img' style='display: inline-block;'>"+
								"<img class='"+data[key].groupUserId+"' width='50px' height='50px'></div>"+
								"<div id='user_profile' class='user_profile'>"+
								"<em class='user_name'>"+data[key].groupUserId+"</em><br>"+ 
								"<span class='upload_time'>"+data[key].groupDate+" "+data[key].groupDateTime+"</span></div>"+
								"<div style='display: inline-block; float: right;'><i class='fas fa-ellipsis-v'></i></div>"+"<div style='margin-left: 60px; font-size: 0.8em; font-weight: bold;'>#"+data[key].groupType+"</div><hr>"+
								"<div class='post_Content'>"+
								"<textarea class='post_box' cols='60' name='post_content' readonly>"+data[key].groupContent+"</textarea></div>"+	
								"<div id='post_Content_img'>"+"<img style='border-radius: 10px; margin-left: 150px; width: 200px; height: 200px;' id='postFile"+data[key].groupBoardNum+"'>"+"</div>"+
								"<div id='MarkAndLike' style='margin-top: 20px;'>"+
								"<span class='like' style='margin-right: 10px; font-weight: bold;'><a onclick='addLike("+data[key].groupBoardNum+");' style='cursor: pointer;'><i class='fas fa-thumbs-up' style='margin-right: 5px;'></i>"+
								"좋아요</a><a id='postlike"+data[key].groupBoardNum+"'>"+0+"</a></span>"+
								"<span class='mark' style='font-weight: bold;'><i class='far fa-bookmark' style='margin-right: 5px; font-weight: bold; cursor: pointer;' id='postMark"+data[key].groupBoardNum+"' onclick='addBookMark("+data[key].groupBoardNum+")'>북마크</i>"+
								"<a>"+"</a></span></div>"+
								"<details id='open_comment' open style='margin-top: 15px;'>"+
								"<summary>댓글</summary>"+
								"<div class='post_commentback'>"+
								"<div id='post_comments"+data[key].groupBoardNum+"'>"+"</div>"+
									"<div id='add_comments'>"+
											"<div class='add_part_comment' style='padding: 5px; min-height: 40px;'>"+
												"<div style='float: left;'>"+
													"<textarea id='input_comment"+data[key].groupBoardNum+"' onclick='printData("+data[key].groupBoardNum+");' placeholder='댓글을 입력해주세요.' onkeydown='resize(this)' onkeyup='resize(this)'class='input_comments_box' cols='42' name='post_comments_content' style='float: left; margin-left: 30px; border-radius: 10px; resize: none; display: block; height: auto; float: left;'>"+
													"</textarea>"+
													"<button id='add_comment_btn' onclick='addReply("+data[key].groupBoardNum+");'>입력하기</button>"+
													"</div></div></div></div></details></div></div>");
							selectLikes(data[key].groupBoardNum);
					        profileload(data[key].groupUserId);
					        imgPostload(data[key].groupBoardNum);
					        selectBookMark(data[key].groupBoardNum);
						}	
					}
				}
				updatePosts();
				selectAllComment();
			},
			error : function() {
				console.log("실패!")
			}
		})
	}
	
	function selectAllComment(){

		$.ajax({
				url : "/omg/selectGroupReply.follower",
				data : {},
				type : "post",
				success : function(data) {
					for(var key in data){
						var $addCommentPart = $("#post_comments"+data[key].groupBoardNum);
						$addCommentPart.prepend("<div class='post_part_comment' style='padding: 5px;'>"+
							"<div class='user_img' style='display: block; float: left; margin-top: 10px;'>"+
								"<img class='"+data[key].commentUserId+"' width='30px' height='30px' style='border-radius: 70%; overflow: hidden;'></div>"+
							"<div id='user_profile' style='display: block; float: left; margin-left: 15px;'>"+
								"<em class='user_name_comment' style='font-size: 10px; font-weight: bold; display: block; float: left;'>"+
								data[key].commentUserId+
								"</em><br> <span class='upload_time_comment' style='font-size: 10px;'>"+data[key].commentDate+"<br>"+data[key].commentTime+"</span></div>"+
							"<textarea class='comments_box' cols='55' name='post_comments_content' style='display: block; height: 60px; float: left;' readonly>"+
							data[key].commentContent+"</textarea></div>");
						
						updateReplys();
				        profileload(data[key].commentUserId);
					}
				},
				error : function(){
					console.log("싈패ㅜㅜㅜㅜㅜ");
				}
			})
	}
	
	
// 	$(function(){
// 		selectAllPost();
// 	})
	
	
	</script>
	<script>
		function addresize(obj) {
			obj.style.height = "1px";
			obj.style.height = (12 + obj.scrollHeight) + "px";
		}
		
	</script>

	<script>
		function updatePosts(){
	        $(".post_box").each(function(index,item){
	               $(item).height(1).height($(item).prop('scrollHeight'));
	               $(item).css("height", $(item).height());
	        })
	        updateReplys();
		}
	
		function onInputPost() {
			$(".add_part").css("display", "block");
			profileload(<%=loginUser.getMemberId()%>);
		}

		function offInputPost() {
			$(".add_part").css("display", "none");
		}
	
		function updateReplys(){
			  $(".comments_box").each(function(index,item){
				  $(item).height(1).height($(item).prop('scrollHeight'));
				  $(item).parent(".post_part_comment").css("height", $(item).height());
				$(item).css("height", $(item).height() / 2);
			  })
		}

	</script>

	<script>
		function resize(obj) {
			obj.style.height = "1px";
			obj.style.height = (12 + obj.scrollHeight) + "px";
			$(obj).parent().parent("div .add_part_comment").css("height",$(obj).height() + 12);
		}
		var fileCode = "";
		function addPost() {
			var roomId = "<%=matchInfo.getGroupCommuNum()%>";
			var writerId =  "<%=loginUser.getMemberId()%>";
			var writer = "<%=loginUser.getName()%>";
			var content = $("#add_postBox").val();
			var postType = $("#postType option:selected").val();
			console.log("입력파일코드: " + fileCode)
			$("#add_postBox").val('');
			$.ajax({
				url : "/omg/insertGroupCommu.follower",
				data : {
					roomId : roomId,
					writer : writer,
					content : content,
					writerId : writerId,
					postType : postType,
					fileCode : fileCode
				},
				type : "post",
				success : function(data) {
					console.log("입력? " + fileCode);
					var $addPostPart = $("#postcontainer");
					$addPostPart.prepend("<div id='postcontainer'>" +
						"<div class='post_part' id='postcontent'>"+
						"<div class='user_img' style='display: inline-block;'>"+
						"<img class='"+data.groupUserId+"' width='50px' height='50px'></div>"+
						"<div id='user_profile' class='user_profile'>"+
						"<em class='user_name'>"+data.groupUserId+"</em><br>"+ 
						"<span class='upload_time'>"+"방금전"+"</span></div>"+
						"<div style='display: inline-block; float: right;'><i class='fas fa-ellipsis-v'></i></div>"+"<div style='margin-left: 60px; font-size: 0.8em; font-weight: bold;'>#"+data.groupType+"</div><hr>"+
						"<div class='post_Content'>"+
						"<textarea class='post_box' cols='60' name='post_content' readonly>"+data.groupContent+"</textarea></div>"+	
						"<div id='post_Content_img'>"+"<img style='border-radius: 10px; margin-left: 150px; width: 200px; height: 200px;' id='postFile"+data.groupBoardNum+"'>"+"</div>"+
						"<div id='MarkAndLike' style='margin-top: 20px;'>"+
						"<span class='like' style='margin-right: 10px; font-weight: bold;'><a onclick='addLike("+data.groupBoardNum+");' style='cursor: pointer;'><i class='fas fa-thumbs-up' style='margin-right: 5px;'></i>"+
						"좋아요</a>"+"<a id='postlike"+data.groupBoardNum+"'>"+"</a></span>"+
						"<span class='mark' style='font-weight: bold;'><i class='far fa-bookmark' style='margin-right: 5px; font-weight: bold; cursor: pointer;' id='postMark"+data.groupBoardNum+"' onclick='addBookMark("+data.groupBoardNum+")'>북마크</i></a>"+
						"<a>"+"</a></span></div>"+
						"<details id='open_comment' open style='margin-top: 15px;'>"+
						"<summary>댓글</summary>"+
						"<div class='post_commentback'>"+
						"<div id='post_comments"+data.groupBoardNum+"'>"+"</div>"+
							"<div id='add_comments'>"+
									"<div class='add_part_comment' style='padding: 5px; min-height: 40px;'>"+
										"<div style='float: left;'>"+
											"<textarea id='input_comment"+data.groupBoardNum+"' placeholder='댓글을 입력해주세요.' onkeydown='resize(this)' onkeyup='resize(this)'class='input_comments_box' cols='42' name='post_comments_content' style='float: left; margin-left: 30px; border-radius: 10px; resize: none; display: block; height: auto; float: left;'>"+
											"</textarea>"+
											"<button id='add_comment_btn'  onclick='addReply("+data.groupBoardNum+");' >입력하기</button>"+
											"</div></div></div></div></details></div></div>");
			        $(".post_box").each(function(index,item){
			               $(item).height(1).height( $(item).prop('scrollHeight'));
			               $(item).css("height", $(item).height());
			        profileload(data.groupUserId);
			        imgPostload(data.groupBoardNum);
			        $("#add_img").children().remove()
			        fileCode = "";
			        })
				},
				error : function() {
					console.log("실패!")
				}

			})
		}

	</script>
	
	<script>
	
	var inputImg = 1;

		function loadImg(value) {
			if (value.files && value.files[0]) {
				var reader = new FileReader();
	
				reader.onload = function(e) {
					var inputImgArea = document.getElementById("add_img");
					inputImgArea.innerHTML += "<form id='ImgUploadForm"+inputImg+"'>"+
					
					"<img id='titleImg"+inputImg+"' width='200' height='200' style='border-radius: 10px;'></form><br>";
					$("#titleImg" + inputImg).attr("src", e.target.result);
					inputImg = inputImg + 1;
					upfileImg();
				}
				reader.readAsDataURL(value.files[0]);
			}
		}
		
		
		
		function upfileImg(){
			var form = $('#ImgUploadForm')[0];
            console.log(form)
            var data = new FormData(form);
            
            $.ajax({
            	url : "/omg/upFile.all",
                type : 'post',
                data : data,
                contentType : false,
                processData : false, 
               success : function(data) {
 	            	alert("업로드 되었습니다.");
 	            	fileCode = data.fileCode;
 				},
 				error : function(){
 					alert("업로드 에 실패했습니다");
 				}
            })
		}
		
	</script>
	<script>
		function printData(value) {
			console.log(value);
		}
		
		function addReply(value) {
			var writerId =  "<%=loginUser.getMemberId()%>";
			var writer = "<%=loginUser.getName()%>";
 			var replyContent = $("#input_comment"+value).val();
 			var postId = value;
 			$("#input_comment"+value).val('');

 			$.ajax({
 				url : "/omg/insertGroupReply.follower",
 				data : {
 					writer : writer,
 					content : replyContent,
 					writerId : writerId,
 					postId : postId
 				},
 				type : "post",
 				success : function(data) {
 					var $addCommentPart = $("#post_comments"+data.groupBoardNum);
 					$addCommentPart.prepend("<div class='post_part_comment' style='padding: 5px;'>"+
							"<div class='user_img' style='display: block; float: left; margin-top: 10px;'>"+
								"<img class='"+data.commentUserId+"' width='30px' height='30px' style='border-radius: 70%; overflow: hidden;'></div>"+
							"<div id='user_profile' style='display: block; float: left; margin-left: 15px; margin-top: 10px;'>"+
								"<em class='user_name_comment' style='font-size: 10px; font-weight: bold; display: block; float: left;'>"+
								data.commentUserId+
								"</em><br> <span class='upload_time_comment' style='font-size: 10px;'>방금전</span></div>"+
							"<textarea class='comments_box' cols='55' name='post_comments_content' style='display: block; height: 60px; float: left;' readonly>"+
							data.commentContent+"</textarea></div>");
 					 profileload(data.commentUserId);
 					updateReplys();
 				},
 				error : function(){
 					console.log("싈패ㅜㅜㅜㅜㅜ");
 				}
 			})
		}
	</script>
	
	<script>
		function checkLikes(value){
			var postId = value;
			var likeId =  "<%=loginUser.getMemberId()%>";
			var msg = "non";
			$.ajax({
 				url : "/omg/addCountLike.follower",
 				data : {
 					postId : postId,
 					likeId : likeId,
 					msg : msg
 				},
 				type : "post",
 				success : function(data) {
 					if(data){
 						$("#postlike"+value).css("color","black");
 					} else {
 						$("#postlike"+value).css("color","orangered");
 					}
 				},
 				error : function(){
 					console.log("좋아요 스타일 불러오기 실패");
 				}
 			})
		}
	
	
		function selectLikes(value){
			var postId = value;
			$.ajax({
 				url : "/omg/checkLike.follower",
 				data : {
 					postId : postId
 				},
 				type : "post",
 				success : function(data) {
 					 $("#postlike"+postId).text(data);
 					checkLikes(value);
 				},
 				error : function(){
 					console.log("좋아요 불러오기 실패");
 				}
 			})
		}
	
		function addLike(value){
			var likeId =   "<%=loginUser.getMemberId()%>";
 			var likeCount = $("#postlike"+value).text();
 			var postId = value;
 			var msg = "add";

 			$.ajax({
 				url : "/omg/addCountLike.follower",
 				data : {
 					likeId : likeId,
 					postId : postId,
 					likeCount: likeCount,
 					msg : msg
 				},
 				type : "post",
 				success : function(data) {
 					selectLikes(postId);
 					if(data){
 						$("#postlike"+value).css("color","orangered");
 					} else {
 						$("#postlike"+value).css("color","black");
 					}
 				},
 				error : function(){
 					console.log("싈패ㅜㅜㅜㅜㅜ");
 				}
 			})
		}
	
	</script>
	
	<script>
	//좋아요 코드를복사해서 북마크 하는것으로 수정할것
	function checkBookMark(value){
		var postId = value;
		var markedId =  "<%=loginUser.getMemberId()%>";
		var msg = "non";
		$.ajax({
				url : "/omg/addBookMark.follower",
				data : {
					postId : postId,
					markedId : markedId,
					msg : msg
				},
				type : "post",
				success : function(data) {
					if(data){
						$("#postMark"+value).css("color","black");
					} else {
						$("#postMark"+value).css("color","orangered");
					}
				},
				error : function(){
					console.log("북마크 스타일 불러오기 실패");
				}
			})
	}


	function selectBookMark(value){
		var postId = value;
		$.ajax({
				url : "/omg/checkBookMark.follower",
				data : {
					postId : postId
				},
				type : "post",
				success : function(data) {
					 checkBookMark(value);
				},
				error : function(){
					console.log("북마크 불러오기 실패");
				}
			})
	}

	function addBookMark(value){
			var markedId =   "<%=loginUser.getMemberId()%>";
			var postId = value;
			var msg = "add";

			$.ajax({
				url : "/omg/addBookMark.follower",
				data : {
					markedId : markedId,
					postId : postId,
					msg : msg
				},
				type : "post",
				success : function(data) {
					selectLikes(postId);
					if(data){
						$("#postMark"+value).css("color","orangered");
					} else {
						$("#postMark"+value).css("color","black");
					}
				},
				error : function(){
					console.log("싈패");
				}
			})
	}

	
	</script>
	<!-- 프로필 사진을 불러오는 ajax 스크립트 -->
	<script>
	selectDiv("최신");
		function selectDiv(value){
			
			
			selectAllPost(value)
			
			if(value == '최신'){
				$(".Board_side_nav_btn1").attr('id', 'board_btn_select');
				$(".Board_side_nav_btn2").removeAttr('id');
				$(".Board_side_nav_btn3").removeAttr('id');
				$(".Board_side_nav_btn4").removeAttr('id');
			} else if (value == '인기'){
				$(".Board_side_nav_btn1").removeAttr('id');
				$(".Board_side_nav_btn2").attr('id', 'board_btn_select');
				$(".Board_side_nav_btn3").removeAttr('id');
				$(".Board_side_nav_btn4").removeAttr('id');
			} else if (value == '운동'){
				$(".Board_side_nav_btn1").removeAttr('id');
				$(".Board_side_nav_btn2").removeAttr('id');
				$(".Board_side_nav_btn3").attr('id', 'board_btn_select');
				$(".Board_side_nav_btn4").removeAttr('id');
			} else if (value == '식단'){
				$(".Board_side_nav_btn1").removeAttr('id');
				$(".Board_side_nav_btn2").removeAttr('id');
				$(".Board_side_nav_btn3").removeAttr('id');
				$(".Board_side_nav_btn4").attr('id', 'board_btn_select');
			}
			
		}
	
	
	</script>
	<script>
	var imgManageCode;

	function imgPostload(boardId){
		
	     $.ajax({
			 url : "/omg/postload.all",
		     type : 'post',
		     data : {
		    	 	boardId : boardId
			       },
			       success : function(data) {
			    	   imgManageCode = data.fileManageName;
			    	   if(imgManageCode != 'EMPTY') $("#postFile"+boardId).attr("src", "<%=request.getContextPath()%>/resources/test/"+imgManageCode); 
			    	   else $("#postFile"+boardId).remove()
			       },
			 		error : function(){
			 			imgManageCode = "";
			 		}
	     })
	}		
	
	</script>
	<script>
	var profileManageCode;

	function profileload(userId){   
	     $.ajax({
			 url : "/omg/loadProfile.all",
		     type : 'post',
		     data : {
		          	userId : userId
			       },
			       success : function(data) {
			          profileManageCode = data.fileManageName;
			          $("."+userId).attr("src", "<%=request.getContextPath()%>/resources/test/"+profileManageCode); 
			 		},
			 		error : function(){
						profileManageCode = "";
			 		}
	     })
	}		
	profileload();
	
	</script>
	<div style="position: absolute; top: 1100px; margin-left: 0px; margin-right: 0px;">
		<%@ include file="../../common/footer.jsp"%>
	</div>

</body>
</html>