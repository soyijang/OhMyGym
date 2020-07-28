<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,com.omg.jsp.notice.model.vo.HealthInfo, com.omg.jsp.member.model.vo.*"%>
    <% 
    HealthInfo healthInfo = (HealthInfo) request.getAttribute("healthInfo");
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<style>
.titles{
   text-align: center;
   color: orangered;
   font-size: 30px;
   font-weight: bold;
   border-bottom: 5px solid orangered;
   margin: 50px;
}
.titles-a{
   color: black;
   font-size: 11px;
}
.mainBox{
   border: 1px solid silver;
   margin: 50px;
   display: table;
   width: 1400px;
   margin-left: 77px;
}
.subtopBox{
   padding: 35px;
}
#imgs{
   float: right;
}
.circle{
   width: 50px;
   height: 50px;
   border-radius: 50%;
   background: blue;
   color: white;
   font-weight: bold;
   font-size: 10px;
   text-align: center;
   position: relative;
   top:40px;
   
}
.healthTitle{
   margin-left: 180px;
   font-size: 33px;
   font-weight: bold;
   text-decoration: underline;
}
.viewLine{
   float: right;
}
.view{
   color: silver;
   font-size: 15px;
   float: right;
   margin-left: 7px;
}
#left{
   margin-left: 15px;
}
#blackFont{
   color: black;
   font-weight: bold;
}
.subBottomBox{
   border-top:  3px solid silver;
   width: 1350px;
   margin: 30px;
}
.imgT{
   margin: 15px;
   margin-left: 20px;
}
.imgWH{
   width: 450px;
   height: 360px;
}
#btn{
   float: right;
   margin-right: 250px;
   border: 0px;
   background: white;
   font-size: 20px;
   font-weight: bold;
   cursor: pointer;
}
#btn1 {
		margin-left: 1400px;
        width: 80px;
        height: 25px;
        border: none;
        background: orangered;
        color: white;
        font-weight: 500;
}

</style>
<body>
       <%@ include file="../../common/followerNav.jsp" %>



      <div class="titles">
      <div class="titles-a">관심분야 or 전문분야</div>
         HOTOPIC
      </div>
      <div class="mainBox">
         <div class="subtopBox">
            <div style="float: left;">건강정보알리미</div>
	          
            <div class="circle">알림이</div>
            <div class="healthTitle"><%=healthInfo.getBoardTitle() %></div>
            
            <br>
            <div class="viewLine">
            	<img id="postMark" src="/omg/resources/img/bookmark 1bookmark.png" onclick="postMark();">
               <div class="view" id="left"><%=healthInfo.getWritedate() %>&nbsp;&nbsp;&nbsp;<%=healthInfo.getWriteTime()%></div>
               <div class="view" id="blackFont"><%=healthInfo.getViewCount()%></div>
               <div class="view">조회수</div>
               
            </div>
         </div>
         <div class="subBottomBox"><br><br><br>
       <img id="foodimg" src="/omg/resources/img/20200408523403 1health.png" style="height: 360px; width: 600px; ;"> 
    
        <br><br><br><br>
        <%=healthInfo.getBoardContent()%>
        
         </div>
      </div>
      <button id="btn1" onclick="history.back(-1)">목록으로</button>
      <br><br>
       <footer>
    	<%@ include file="../../common/footer.jsp" %>
    </footer>
    
    <script>
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

	
	
</body>
</html>