<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,com.omg.jsp.trainerList.model.vo.*"%>
<%
	ArrayList<followerList> lists = (ArrayList<followerList>) request.getAttribute("lists");
%>
<!DOCTYPE html>
<html lang="ko">
<head> 
    <meta charset="UTF-8">
    <style>
    * {
        font-family: "Noto Sans KR";
    }
    a {
        text-decoration: none;
        color: black;
    }
    #ohMyPtMenu td a {
        color: gray;
    }
    #titleArea div {
        border: 2px double gray; 
        display: inline-block; 
        width: 1000px; 
        height: 40px;
        margin-left: 40px;
        font-size: 14px;
    }
    #curriculumMenu #cMenu {
        border: 2px double gray;
        display: inline-block;
        width: 140px;
        height: 580px;
        margin-left: 40px;
        margin-top: 10px;
        padding: 10px;
    }
    #curriculumMenu div table {
        text-align: center;
        margin: 10px;
    }
    #curriculumMenu div table td {
        height: 40px;
        font-size: 14px;
    }
    #curriculumMenu button {
        border-top-left-radius: 20%;
        border-top-right-radius: 20%;
        border-bottom-left-radius: 20%;
        border-bottom-right-radius: 20%;
        border: 1px solid gray
    }
    #showMediaArea th {
        height: 42px;
        font-size: 15px;
        border-bottom: 5px double gray;
    }
    #outline{
        display:inline-block; 
        border: 2px double gray; 
        margin-top: 10px; 
        margin-left: 10px;
        width: 827px;
        height: 600px;
    }
    #cMenuButtonArea {
        position: absolute;
        display: inline-block;
        width: 130px;
        height: 20px;
        font-size: 5px;
        top: 751px;
        left: 265px;
    }
    #cMenuButtonArea button {
        width: 50px;
        height: 20px;
        font-weight: bold;
    }
    #cMenuButtonAre button {
        font-family: "Noto Sans KR";
    }
    img.ohfooter_logo{
        margin-left: -50%; 
        margin-bottom: 50%; 
        margin-top: 50%; 
    }
    #addMediaBtnArea {
        position: absolute;
        left: 417px;
        width: 827px;
        text-align: right;
    }
    #addMediaBtnArea button{
        background: orangered;
        border-style: none;
        color: white;
        font-weight: bold;
        height: 30px;
        width: 100px;
    }
    #cMenu a {
        text-decoration: none;
    }
    #showVideoList {
    	 margin-left: 20px; 
    	 margin-top: 20px; 
    	 width:773px; 
    	 text-align: center;
    	 border-collapse: collapse;
    	 border-bottom: 5px double gray;
    	 border-top: 5px double gray;
    }
    #showVideoList td {
    	height: 30px;
    	font-size: 13px;
    	border-bottom: 1px solid gray;
    }
    .curriArea {
    	width: 200px;
    	height: 160px;
    	border: 1px solid gray;
    	border-radius: 10px 10px 10px 10px;
    	display: inline-block;
    	margin-left: 50px;
    	margin-top: 50px;
    }
    .curriArea:hover {
		background: orangered;
		cursor: pointer;
		color: white;
	}
	.cMenuCurrititle:hover {
		color: orangered;
        cursor: pointer;
	}
	
	.user_name{
		font-size: 1.2em; 
		font-weight: bold; 
		margin-top: 15px;
	}
	
	.user_date{
		 font-size: 1.2em; 
		 font-weight: bold; 
		 margin-top: 15px;"
	}
	
	#followerListEle{
		border-radius: 10px; 
		margin: 15px; 
		padding-left: 25px;
		border: 1px solid lightgray; 
		width: 680px; 
		height: 150px;"
		transition: all ease 0.1s 0s;
	}
	
	#followerListEle:hover{
		border: 3px solid orangered; 
		transition: all ease 0.1s 0s;
	}
	
    </style>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    
</head>
<body>
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
	
	function checkHelthInfo(userId){
	     $.ajax({
			 url : "/omg/checkHelth.follower",
		     type : 'post',
		     data : {
		          	userId : userId
			       },
			       success : function(data) {
			    	   if(data.followerHeight != null) $(".height" + userId).text(data.followerHeight + "cm")
			    	   else {
			    		   $(".height" + userId).css("color","lightgray")
			    		   $(".height" + userId).text("미입력")
			    	   }
			    	   
			    	   if(data.followerWeight != null) $(".weight" + userId).text(data.followerWeight + "kg")
			    	   else{
			    		   $(".weight" + userId).css("color","lightgray")
			    		   $(".weight" + userId).text("미입력")
			    	   }
			    	   
			    	   if(data.followerPart != null) $(".part" + userId).text(data.followerPart)
			    	   else{
			    		   $(".part" + userId).css("color","lightgray")
			    		   $(".part" + userId).text("미입력")
			    	   }
			    	   
			 		},
			 		error : function(){
						profileManageCode = "";
			 		}
	     })
	}
	</script>
<%@ include file="../../common/trainerNav.jsp"%>

    <section  style="margin-left: 150px;">
        <!--커리큘럼 관리 타이틀-->
        <article id="titleArea">
            <div>
                <h1 style="margin-top: 6px;">&nbsp;&nbsp;&nbsp;<a href="<%= request.getContextPath() %>/selectCurriculumList.cu">팔로워 관리</a></h1>
            </div>
        </article>
        <!--커리큘럼 관리 타이틀 종료-->

        <!--커리큘럼메뉴-->
        <article id="curriculumMenu" style="float: left;">
            <div id="cMenu">
                <table>
                    <tr><td style="font-size: 14px; font-weight: bold; border-bottom: 2px solid gray;"><a href="">팔로워 순서 구분</a></td></tr>
                    <tr><td>이름순</td><tr>
                    <tr><td>아이디순</td><tr>
                    <tr><td>최근매칭순</td><tr>
                </table>
            </div>
        </article>
        <!--커리큘럼메뉴 종료-->

        <!--커리큘럼 출력-->
        <article id="showMediaArea">
            <div style="overflow-y: auto; overflow-x: hidden;" id="outline">
				<div id="followerListCont" style="padding-left: 50px;">
				
				<%for(int i = 0; i < lists.size(); i++){ %>
					<div id="followerListEle" >
						<div id="<%=lists.get(i).getFollowerId()%>"  style="display: inline-block;margin-left: 15px; margin-top: 25px; display: inline-block;" ><img class="<%=lists.get(i).getFollowerId()%>" width="90px" height="90px" style="border-radius: 70%; overflow: hidden;"></div>
                        <div id="user_profile"  style="margin-left: 15px; margin-top: 25px; display: inline-block; vertical-align: top;">
                        	<div class="user_name" ><%=lists.get(i).getFollowerName()%>&nbsp;&nbsp;&nbsp;&nbsp;<a class="height<%=lists.get(i).getFollowerId()%>"></a>&nbsp;&nbsp;&nbsp;&nbsp;<a class="weight<%=lists.get(i).getFollowerId()%>"></a></div><hr>
                        	<div class="user_date" ><a style="font-size: 0.6em;">매칭일 </a><%=lists.get(i).getMatchingDate()%>&nbsp;&nbsp;&nbsp;&nbsp;<a class="part<%=lists.get(i).getFollowerId()%>"></a></div>
                        </div>
					</div>
					<script>
						profileload("<%=lists.get(i).getFollowerId()%>");
						checkHelthInfo("<%=lists.get(i).getFollowerId()%>");
					</script>
				<%} %>
					
				</div>
            </div>
        </article>
        <!--커리큘럼 출력 종료-->
<!--         <article id="addMediaBtnArea">
            <button id="addMediaBtn">동영상 추가</button>
        </article> -->
    </section>
    <br><br><br><br>
  
    <!--footer start-->
    <%@ include file="../../common/footer.jsp"%>
    <!--footer end-->
    
</body>
</html>
