<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

div.Board_side_nav_btn {
	font-family: "Noto Sans KR";
	text-align: center;
	background: white;
	width: 100px;
	height: 25px;
	padding-top: 12px;
	box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
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
</style>
</head>

<body>
	<%@ include file="../../common/followerNav.jsp"%>
	<section>
		<nav id="side_nav">
			<div class="side_container">
				<ul class="side_menu">
					<li><a
						style="font-size: 20px; font-weight: bold; margin-left: -10px;">OH!마이짐</a>
						<hr style="margin-left: -25px; border: 1.5px solid;"></li>
					<li><a style="font-size: 14px; font-weight: normal;">트레이닝
							룸</a>
						<hr></li>
					<li><a class="select"
						style="font-size: 14px; font-weight: normal;">그룹소통방</a>
						<hr></li>
					<li><a style="font-size: 14px; font-weight: normal;">챌린지</a>
						<hr></li>
				</ul>
			</div>
		</nav>
		<article id="group_commu_article">
			<div class="commu_room_Name">
				<p id="commu_Trainer_Name">
					<!--트레이너 이름-->
					트레이너 Y 그룹 소통방
				</p>
				<nav id="In_Board_nav">
					<div class="Board_side_container">
						<ul class="side_menu">
							<li style="padding-right: -20px;">
								<div class="Board_side_nav_btn">인기</div>
							</li>
							<li>
								<div class="Board_side_nav_btn" id="board_btn_select">최신</div>
							</li>
							<li>
								<div class="Board_side_nav_btn">운동</div>
							</li>
							<li>
								<div class="Board_side_nav_btn">식단</div>
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
										<img src="../../../resources/img/crush_ps.png" width="50px" height="50px" style="border-radius: 70%; overflow: hidden;">
									</div>
									<div id="user_profile" class="post_userprofile">
										<em class="user_name"> <!--업로드 유저명(DB에서 탐색)-->크러쉬
										</em><br>
										<!-- 사용자 프로필 -->
										<input type="file" name="selectuploadImg" id="selectuploadImg"
											onchange="loadImg(this)" style="display: none"> <a
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
									<div class="post_part">
									<!-- 사용자 프로필 -->
									<div class="user_img" style="display: inline-block;">
										<img src="../../../resources/img/crush_ps.png" width="50px"
											height="50px" style="border-radius: 70%; overflow: hidden;">
									</div>
									<div id="user_profile"
										style="display: inline-block; vertical-align: top;">
										<em class="user_name">
											<!--업로드 유저명(DB에서 탐색)-->크러쉬
										</em><br> <span class="upload_time">5분전</span>
									</div>
									<hr>
									<div class="post_Content">
										<textarea class="post_box" cols="60" name="post_content"
											readonly>  이상하게도 말일은 뭐가 이리 바쁜지 모르겠어요.그냥 눈만 감았다 뜬것 같은데 어...</textarea>
									</div>
									<div id="post_Content_img"
										style="padding: 20px; text-align: center;">
									</div>
									<div id="MarkAndLike" style="margin-top: 20px;">
										<span class="like"
											style="margin-right: 10px; font-weight: bold;"> <i
											class="fas fa-thumbs-up" style="margin-right: 5px;"></i>좋아요 <a>74</a>
										</span> <span class="mark" style="font-weight: bold;"> <i
											class="far fa-bookmark" style="margin-right: 5px;"></i>북마크 <a>20</a>
										</span>
									</div>
									<details id="open_comment" open style="margin-top: 15px;">
										<summary style="font-weight: bold; font-size: 0.9em;">댓글</summary>
										<div
											style="background: rgb(245, 245, 245); width: 100%; height: 100%;">
											
											<div id="post_comments">
											
												<div class="post_part_comment" style="padding: 5px;">
													<div class="user_img"
														style="display: block; float: left; margin-top: 10px;">
														<img src="../../resources/img/crush_ps.png" width="30px"
															height="30px"
															style="border-radius: 70%; overflow: hidden;">
													</div>
													<div id="user_profile"
														style="display: block; float: left; margin-left: 15px; margin-top: 10px;">
														<em class="user_name_comment"
															style="font-size: 10px; display: block; float: left;">
															<!--업로드 유저명(DB에서 탐색)-->크러쉬
														</em><br> <span class="upload_time_comment"
															style="font-size: 10px;">5분전</span>
													</div>
													<textarea class="comments_box" cols="55"
														name="post_comments_content"
														style="display: block; height: 60px; float: left;"
														readonly>동http://ko/♚♚히어로즈 오♚♚가입시동http://ko/♚♚히어로즈 오♚♚가입시동http://ko/♚♚히어로즈 오♚♚가입시동http://ko/♚♚히어로즈 오♚♚가입시동http://ko/♚♚히어로즈 오♚♚가입시동http://ko/♚♚히어로즈 오♚♚가입시</textarea>
												</div>
												
											</div>
											<form>
											
											<div id="add_comments">
												<div class="add_part_comment"
													style="padding: 5px; min-height: 40px;">
													<div style="float: left;">
														<textarea onclick="printData('히히헤헤호호');" placeholder="댓글을 입력해주세요."
															onkeydown="resize(this)" onkeyup="resize(this)"
															class="input_comments_box" cols="42"
															name="post_comments_content"
															style="float: left; margin-left: 30px; border-radius: 10px; resize: none; display: block; height: auto; float: left;"></textarea>
														<button onclick="addReply();" id="add_comment_btn">입력하기</button>
													</div>
												</div>
											</div>
											
											</form>
											</div>
											</details>
											</div>

								</div>
							</div>
						</div>
					</article>
				</div>
			</div>
		</article>
	</section>
	
	<script>

	function selectAllPost(){
		$("#add_postBox").val('');
		console.log("조회시작");
		$.ajax({
			url : "/omg/selectGroupCommu.follower",
			data : {},
			type : "post",
			success : function(data) {
				for(var key in data){
					var $addPostPart = $("#postcontainer");
					$addPostPart.prepend("<div id='postcontainer'>" +
						"<div class='post_part' id='postcontent'>"+
						"<div class='user_img' style='display: inline-block;'>"+
						"<img src='' width='50px' height='50px'></div>"+
						"<div id='user_profile' class='user_profile'>"+
						"<em class='user_name'>"+data[key].groupUserId+"</em><br>"+ 
						"<span class='upload_time'>"+data[key].groupDate+" "+data[key].groupDateTime+"</span></div><hr>"+
						"<div class='post_Content'>"+
						"<textarea class='post_box' cols='60' name='post_content' readonly>"+data[key].groupContent+"</textarea></div>"+	
						"<div id='post_Content_img'>"+"</div>"+
						"<div id='MarkAndLike' style='margin-top: 20px;'>"+
						"<span class='like' style='margin-right: 10px; font-weight: bold;'> <i class='fas fa-thumbs-up' style='margin-right: 5px;'></i>"+
						"좋아요<a>"+"</a></span>"+
						"<span class='mark' style='font-weight: bold;'> <i class='far fa-bookmark' style='margin-right: 5px;'></i>"+
						"북마크 <a>"+"</a></span></div>"+
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
					updatePosts();
				}
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
						console.log("#post_comments"+data[key].groupBoardNum);
						var $addCommentPart = $("#post_comments"+data[key].groupBoardNum);
						$addCommentPart.prepend("<div class='post_part_comment' style='padding: 5px;'>"+
							"<div class='user_img' style='display: block; float: left; margin-top: 10px;'>"+
								"<img src='' width='30px' height='30px' style='border-radius: 70%; overflow: hidden;'></div>"+
							"<div id='user_profile' style='display: block; float: left; margin-left: 15px; margin-top: 10px;'>"+
								"<em class='user_name_comment' style='font-size: 10px; display: block; float: left;'>"+
								data[key].commentUserId+
								"</em><br> <span class='upload_time_comment' style='font-size: 10px;'>"+"5분전"+"</span>	</div>"+
							"<textarea class='comments_box' cols='55' name='post_comments_content' style='display: block; height: 60px; float: left;' readonly>"+
							data[key].commentContent+"</textarea></div>");
						
						updateReplys();
					}
				},
				error : function(){
					console.log("싈패ㅜㅜㅜㅜㅜ");
				}
			})
	}
	
	
	$(function(){
		selectAllPost();
		selectAllComment();
	})
	
	
	</script>
		
		
	
	<script>
		function addresize(obj) {
			obj.style.height = "1px";
			obj.style.height = (12 + obj.scrollHeight) + "px";
		}

		var inputImg = 1;
		function loadImg(value) {
			if (value.files && value.files[0]) {
				var reader = new FileReader();

				reader.onload = function(e) {
					var inputImgArea = document.getElementById("add_img");
					inputImgArea.innerHTML += "<img id='titleImg"+inputImg+"' width='150' height='150'><br>";
					$("#titleImg" + inputImg).attr("src", e.target.result);
					inputImg = inputImg + 1;
				}
				reader.readAsDataURL(value.files[0]);
			}
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

		function addPost() {
			var writerId =  "test01";
			var writer = "한진희";
			var content = $("#add_postBox").val();
			$("#add_postBox").val('');
			console.log(writer);
			console.log(content);
			$.ajax({
				url : "/omg/insertGroupCommu.follower",
				data : {
					writer : writer,
					content : content,
					writerId : writerId
				},
				type : "post",
				success : function(data) {
					var $addPostPart = $("#postcontainer");
					$addPostPart.prepend("<div id='postcontainer'>" +
						"<div class='post_part' id='postcontent'>"+
						"<div class='user_img' style='display: inline-block;'>"+
						"<img src='' width='50px' height='50px'></div>"+
						"<div id='user_profile' class='user_profile'>"+
						"<em class='user_name'>"+data.groupUserId+"</em><br>"+ 
						"<span class='upload_time'>"+"</span></div><hr>"+
						"<div class='post_Content'>"+
						"<textarea class='post_box' cols='60' name='post_content' readonly>"+data.groupContent+"</textarea></div>"+	
						"<div id='post_Content_img'>"+"</div>"+
						"<div id='MarkAndLike' style='margin-top: 20px;'>"+
						"<span class='like' style='margin-right: 10px; font-weight: bold;'> <i class='fas fa-thumbs-up' style='margin-right: 5px;'></i>"+
						"좋아요<a>"+"</a></span>"+
						"<span class='mark' style='font-weight: bold;'> <i class='far fa-bookmark' style='margin-right: 5px;'></i>"+
						"북마크 <a>"+"</a></span></div>"+
						"<details id='open_comment' open style='margin-top: 15px;'>"+
						"<summary>댓글</summary>"+
						"<div class='post_commentback'>"+
						"<div id='post_comments'>"+"</div>"+
							"<div id='add_comments'>"+
									"<div class='add_part_comment' style='padding: 5px; min-height: 40px;'>"+
										"<div style='float: left;'>"+
											"<textarea onclick='printData();' placeholder='댓글을 입력해주세요.' onkeydown='resize(this)' onkeyup='resize(this)'class='input_comments_box' cols='42' name='post_comments_content' style='float: left; margin-left: 30px; border-radius: 10px; resize: none; display: block; height: auto; float: left;'>"+
											"</textarea>"+
											"<button id='add_comment_btn'>입력하기</button>"+
											"</div></div></div></div></details></div></div>");
			        $(".post_box").each(function(index,item){
			               $(item).height(1).height( $(item).prop('scrollHeight'));
			               $(item).css("height", $(item).height());
			        })
			        console.log("글작성");
				},
				error : function() {
					console.log("실패!")
				}

			})	
		}
	</script>

	<script>
		function printData(value) {
			console.log(value);
		}
		
		function addReply(value) {
			
 			var writerId =  "test01";
  			var writer = "한진희";
 			var replyContent = $("#input_comment"+value).val();
 			var postId = value;
 			console.log(replyContent);

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
 					console.log($addCommentPart);
 					$addCommentPart.prepend("<div class='post_part_comment' style='padding: 5px;'>"+
							"<div class='user_img' style='display: block; float: left; margin-top: 10px;'>"+
								"<img src='' width='30px' height='30px' style='border-radius: 70%; overflow: hidden;'></div>"+
							"<div id='user_profile' style='display: block; float: left; margin-left: 15px; margin-top: 10px;'>"+
								"<em class='user_name_comment' style='font-size: 10px; display: block; float: left;'>"+
								data.commentUserId+
								"</em><br> <span class='upload_time_comment' style='font-size: 10px;'>"+"5분전"+"</span>	</div>"+
							"<textarea class='comments_box' cols='55' name='post_comments_content' style='display: block; height: 60px; float: left;' readonly>"+
							data.commentContent+"</textarea></div>");
 					
 					updateReplys();
 				},
 				error : function(){
 					console.log("싈패ㅜㅜㅜㅜㅜ");
 				}
 			})
		}
	</script>


	<div
		style="position: absolute; top: 1100px; margin-left: 0px; margin-right: 0px;">
		<%@ include file="../../common/footer.jsp"%>
	</div>

</body>
</html>