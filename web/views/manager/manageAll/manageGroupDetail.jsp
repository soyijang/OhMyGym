<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.omg.jsp.matching.model.vo.MatchingRequest"%>
 <% MatchingRequest groupInfo  = (MatchingRequest) request.getAttribute("groupResult");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<title>오마이짐 관리자 페이지</title>
<style>
        article#group_commu_article {
            position: absolute;  
            width: 1102px; 
            height: 86px; 
            left: 300px; 
            top: 100px;
        }

        article#group_commu_article div.commu_room_Name{
            padding: 20px 40px 40px 40px; 
            border: solid 1px #979797; 
            width: 850px; 
            height: 766px;
            border-radius: 9px;
            box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
            background: white;
        }

        p#commu_Trainer_Name{
            display: inline-block; 
            line-height: 60px; 
            padding-left: 20px; 
            vertical-align: middle; 
            width: 830px; 
            height: 60px;

            font-family: Noto Sans SC;
            font-size: 28px;
            font-weight: bold;
            color: #696969;
            background:  rgba(227, 227, 227, 1);
            border-radius: 9px;
        }

        div.commu_room_Board{
            position: absolute;
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

        nav#In_Board_nav{
            float: left;
            margin-left: 40px;
            margin-right: 20px;
        }

        div.side_container{
            padding-top: 25px;
            border: solid 1px #979797;
            width: 150px; 
            height: 100%;
        }

        div.side_container ul li{
            text-align: left;
            padding-top: 25px;
        }

        div#Board{
            width: 650px; 
            height: 900px;
        }

        div.Board_side_container{
            padding-top: 25px;
            text-align: left;

            position: absolute;
            width: 140px;
            height: 500px;
            left: 40px;
            top: 150px;

            background:  rgba(227, 227, 227, 0.47);
            border-radius: 9px;
        }

        div.post_part{
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

        div.post_part_comment{
            background: rgba(241, 241, 241, 0.25);
            margin-top: 15px;
            margin-bottom: 15px;

            font-family: "Noto Sans KR";
            font-size: 13px;
            border-radius: 9px;
            box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
        }

        div.add_comment{
            background: rgba(241, 241, 241, 0.25);
            font-family: "Noto Sans KR";
            font-size: 13px;
            border-radius: 9px;
            box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
        }

        .select{
            color: orangered;
        }

        div.Board_side_container ul.side_menu{
            margin-left: -19px;
        }

        div.Board_side_container ul.side_menu li{
            padding-bottom: 20px;;
        }

        div.Board_side_nav_btn{
            font-family: "Noto Sans KR";
            text-align: center; 
            background: white;
            width: 100px; 
            height: 25px; 
            padding-top: 12px;
            box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
        }

        div#board_btn_select{
            background: orangered;
            color: white;
        }

        em.user_name{
            margin-left: 8px;
            font-weight: bold;
            font-style: normal;
        }
        span.upload_time{
            margin-left: 8px;
            font-style: normal;
            font-weight: bold;
            font-size: 13px;
            color:rgb(145, 46, 0)
        }

        textarea.post_box{
            height: auto;
            border:none;
            padding:20px; 
            font-family: "Noto Sans KR";
            font-size: 14px; 
            color: gray;
            resize: none;
            overflow-y: hidden;
        }

        textarea.post_box:focus{
            outline: none;
        }

        textarea.comments_box{
            background:none; 
            border:none; 
            margin-left: 10px;
            outline: none;
            border:none;
            padding:20px; 
            font-family: "Noto Sans KR";
            font-size: 12px; 
            color: gray;
            resize: none;
            overflow-y: hidden;
        }

        textarea.comments_box:focus{
            outline: none;
        }
        
        summary:focus{
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

        button#add_comment_btn{
            margin-left:10px; 
            float: left; 
            width: 80px; 
            height: 35px; 
            border:none; 
            border-radius: 10px; 
            background: orangered; 
            color: white; 
            font-weight: bold;
        }

        button#add_comment_btn:hover{
            background: navy;
        }

        button#add_comment_btn:focus{
            outline: none;
        }

        div.add_part{
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

        button#addImgBtn{
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

        button#addImgBtn:hover{
            background: rgb(0, 0, 0); 
            color: rgb(255, 255, 255); 
            font-weight: bold; 

        }

        button#uploadBtn{
 
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

        button#uploadBtn:hover{
            background: navy; 
            color: rgb(255, 255, 255); 
            font-weight: bold; 
        }

        button:focus{
            outline: none;
        }

        textarea.add_postBox{
            border: none;
            resize: none;
        }

        textarea.add_postBox:focus{
            outline: none;
        }

</style>
</head>
<body>
	<%@ include file="../../common/managerNav.jsp"%>
	
	
	  <div class="container_top">
        <ul class="header_top_menu" id="header_top">
            <li id="webIntro">로그아웃</li>
            <li id="webClasses">마이페이지</li>
            </li>
        </ul>
    </div>
    <br>
    <br><br>
    <section>
        		<article id="group_commu_article">
			<div class="commu_room_Name">
				<p id="commu_Trainer_Name">
					<!--트레이너 이름-->
					<%=groupInfo.getTrainerName()%> 트레이너 그룹 소통방
				</p>
				<br>
				<div style="position: absolute; top: 115px; right: 170px">
				</div>
				<div class="commu_room_Board">
					<article>
						<div>
							<div id="Board">
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
        $(".post_box").height(1).height( $(".post_box").prop('scrollHeight'));
        $(".post_box").css("height", $(".post_box").height()/2);


        $(".comments_box").height(1).height( $(".comments_box").prop('scrollHeight'));
        $(".post_part_comment").css("height", $(".comments_box").height());
        $(".comments_box").css("height", $(".comments_box").height()/2);
    </script>
    <script>

	function selectAllPost(){
		$("#add_postBox").val('');
		var roomId = "<%=groupInfo.getGroupCommuNum()%>";
		$.ajax({
			url : "/omg/selectGroupCommu.follower",
			data : {
				roomId : roomId
			},
			type : "post",
			success : function(data) {
				for(var key in data){
					var $addPostPart = $("#postcontainer");
					$addPostPart.prepend("<div id='postcontainer'>" +
						"<div class='post_part' id='postcontent'>"+
						"<div class='user_img' style='display: inline-block;'>"+
						"<img class='"+data[key].groupUserId+"' width='50px' height='50px'></div>"+
						"<div id='user_profile' class='user_profile'>"+
						"<em class='user_name'>"+data[key].groupUserId+"</em><br>"+ 
						"<span class='upload_time'>"+data[key].groupDate+" "+data[key].groupDateTime+"</span></div><hr>"+
						"<div class='post_Content'>"+
						"<textarea class='post_box' cols='60' name='post_content' readonly>"+data[key].groupContent+"</textarea></div>"+	
						"<div id='post_Content_img'>"+"</div>"+
						"<div id='MarkAndLike' style='margin-top: 20px;'>"+
						"<span class='like' style='margin-right: 10px; font-weight: bold;'><a style='cursor: pointer;'><i class='fas fa-thumbs-up' style='margin-right: 5px;'></i>"+
						"좋아요</a><a id='postlike"+data[key].groupBoardNum+"'>"+0+"</a></span>"+
						"<span class='mark' style='font-weight: bold;'> <i class='far fa-bookmark' style='margin-right: 5px;'></i>"+
						"북마크 <a>"+"</a></span></div>"+
						"<details id='open_comment' open style='margin-top: 15px;'>"+
						"<summary>댓글</summary>"+
						"<div class='post_commentback'>"+
						"<div id='post_comments"+data[key].groupBoardNum+"'>"+"</div>"+
						"</div></div></details></div></div>");
					selectLikes(data[key].groupBoardNum);
			        profileload(data[key].groupUserId);
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
		console.log("댓글로드");
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
							"<div id='user_profile' style='display: block; float: left; margin-left: 15px; margin-top: 10px;'>"+
								"<em class='user_name_comment' style='font-size: 10px; display: block; float: left;'>"+
								data[key].commentUserId+
								"</em><br> <span class='upload_time_comment' style='font-size: 10px;'>"+"5분전"+"</span>	</div>"+
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
	
	
	$(function(){
		selectAllPost();
	})
	
  </script>
  
  <script>
		function updatePosts(){
	        $(".post_box").each(function(index,item){
	               $(item).height(1).height($(item).prop('scrollHeight'));
	               $(item).css("height", $(item).height());
	        })
	        updateReplys();
		}
	
		function updateReplys(){
			  $(".comments_box").each(function(index,item){
				  $(item).height(1).height($(item).prop('scrollHeight'));
				  $(item).parent(".post_part_comment").css("height", $(item).height());
				$(item).css("height", $(item).height() / 2);
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
 				},
 				error : function(){
 					console.log("좋아요 불러오기 실패");
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
			          console.log(profileManageCode);
			          $("."+userId).attr("src", "<%=request.getContextPath()%>/resources/test/"+profileManageCode); 
			 		},
			 		error : function(){
						profileManageCode = "";
			 		}
	     })
	}		
	profileload();
	
	</script>
</body>
</html>