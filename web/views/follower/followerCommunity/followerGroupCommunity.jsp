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

.NavLink {
	padding-top: 30px;
	width: 120px;
	height: 40px;
}

.container_top {
	display: block;
	color: rgb(105, 111, 116);
	font-size: 0.8em;
	font-family: "Noto Sans KR";
	font-weight: 900;
	line-height: 1.25em;
	margin-right: 100px;
}

.container_top ul li {
	list-style: none;
	float: right;
	margin-left: 20px;
	margin-right: 10px;
}

nav {
	display: block;
	color: rgb(117, 117, 117);
	font-size: 0.8em;
	font-family: "Noto Sans KR";
	font-weight: bold;
	line-height: 1.25em;
}

nav ul {
	list-style: none;
}

.container #page_NAME {
	margin-top: 1px;
	margin-left: 50px;
	float: left;
}

.container #header_bottom_sidemenu {
	margin-right: 140px;
}

ul.sideMenu li {
	width: 120px;
}

ul.sideMenu li:hover {
	background-color: orangered;
	color: white;
	transition: all ease 0.25s 0s;
}

ul.sideMenu li:hover div {
	color: white;
	transition: all ease 0.25s 0s;
}

ul.sideMenu ul {
	display: none;
	margin-left: -1400px;
}

ul.sideMenu li ul li {
	width: 2400px;
}

ul.sideMenu li ul li a {
	margin-left: 30px;
}

ul.sideMenu li:hover>ul {
	padding-top: 20px;
	height: 25px;
	text-align: center;
	float: left;
	background: rgba(255, 69, 0, 1);
	transition: all ease 0.25s 0s;
	display: block;
}

ul.sideMenu li:hover>ul li a:hover {
	background: rgb(179, 21, 0);
	transition: all ease 0.25s 0s;
}

.container {
	min-width: 1200px;
	width: 100%;
	height: 70px;
	margin-top: 11px;
}

#navigateID ul li {
	list-style: none;
	color: rgb(63, 63, 63);
	float: right;
	text-align: center;
	font-weight: bolder;
	font-size: 14px;
	margin-top: -13px;
}

ul#header_bottom_sidemenu li ul li {
	color: white;
	text-align: center;
	margin-left: 200px;
	margin-top: -4px;
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
								<form>
									<div class="add_part">
										<!-- 사용자 프로필 -->

										<div class="user_img" style="display: inline-block;">
											<img src="../../resources/img/crush_ps.png" width="50px"
												height="50px" style="border-radius: 70%; overflow: hidden;">
										</div>
										<div id="user_profile"
											style="display: inline-block; vertical-align: top;">
											<em class="user_name">
												<!--업로드 유저명(DB에서 탐색)-->크러쉬
											</em><br>
											<!-- 사용자 프로필 -->

											<input type="file" name="selectuploadImg"
												id="selectuploadImg" onchange="loadImg(this)"
												style="display: none">
											<a id="addImgBtn" style=""
												onclick="document.all.selectuploadImg.click()">이미지추가</a>
											<button id="uploadBtn"
												style="margin-top: 5px; margin-left: 200px;">업로드</button>
											<button onclick="offInputPost();">닫기</button>
										</div>
										<hr>
										<div class="add_postcontent"
											style="border-radius: 8px; border: 1px solid rgb(193, 193, 193); margin-left: 25px;">
											<div class="add_postBox">
												<textarea class="add_postBox" onkeydown="addresize(this)"
													onkeyup="addresize(this)" cols="62" name="addpost"
													placeholder="하고싶은 말을 적어주세요."></textarea>
												<div id="add_img" style="text-align: center;"></div>
											</div>
										</div>
										<script>
	                                            function addresize(obj) {
	                                              obj.style.height = "1px";
	                                              obj.style.height = (12+obj.scrollHeight)+"px";
	                                            }
	
	                                            var inputImg = 1;
	                                            function loadImg(value) {
	                                                if(value.files && value.files[0]) {
	                                                    var reader = new FileReader();
	                                                    
	                                                    reader.onload = function(e) {
	                                                        var inputImgArea = document.getElementById("add_img");
	                                                        inputImgArea.innerHTML += "<img id='titleImg"+inputImg+"' width='150' height='150'><br>";
	                                                        $("#titleImg"+inputImg).attr("src", e.target.result);
	                                                        inputImg = inputImg + 1;
	                                                    }
	                                                    reader.readAsDataURL(value.files[0]);
	                                                }
			                                    }
	                                        </script>
									</div>
								</form>
								<div class="post_part">
									<!-- 사용자 프로필 -->
									<div class="user_img" style="display: inline-block;">
										<img src="../../resources/img/crush_ps.png" width="50px"
											height="50px" style="border-radius: 70%; overflow: hidden;">
									</div>
									<div id="user_profile"
										style="display: inline-block; vertical-align: top;">
										<em class="user_name">
											<!--업로드 유저명(DB에서 탐색)-->크러쉬
										</em><br> <span class="upload_time">5분전</span>
									</div>
									<!-- 사용자 프로필 -->
									<hr>
									<div class="post_Content">
										<textarea class="post_box" cols="60" name="post_content"
											readonly>  이상하게도 말일은 뭐가 이리 바쁜지 모르겠어요.그냥 눈만 감았다 뜬것 같은데 어...</textarea>
									</div>
									<div id="post_Content_img"
										style="padding: 20px; text-align: center;">
										<img
											src="data:image/jpeg;base64,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">
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
														<textarea placeholder="댓글을 입력해주세요."
															onkeydown="resize(this)" onkeyup="resize(this)"
															class="input_comments_box" cols="42"
															name="post_comments_content"
															style="float: left; margin-left: 30px; border-radius: 10px; resize: none; display: block; height: auto; float: left;"></textarea>
														<button id="add_comment_btn">입력하기</button>
													</div>
												</div>
											</div>
											</form>
											<script>
                                                    function resize(obj) {
                                                       obj.style.height = "1px";
                                                       obj.style.height = (12+obj.scrollHeight)+"px";
                                                       $(".add_part_comment").css("height", $(".input_comments_box").height()+12);
                                                     }
                                            </script>
										</div>
									</details>
								</div>
							</div>
						</div>
					</article>
				</div>
			</div>
		</article>
	</section>
	<script>
        function onInputPost(){
            $(".add_part").css("display","block");
        }

        function offInputPost(){
            $(".add_part").css("display","none");
        }

        $(".comments_box").height(1).height( $(".comments_box").prop('scrollHeight'));
        $(".post_part_comment").css("height", $(".comments_box").height());
        $(".comments_box").css("height", $(".comments_box").height()/2);
    </script>
	<div
		style="position: absolute; top: 1100px; margin-left: 0px; margin-right: 0px;">
		<%@ include file="../../common/footer.jsp"%>
	</div>

</body>
</html>