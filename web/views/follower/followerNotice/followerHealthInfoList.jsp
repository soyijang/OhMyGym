<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,com.omg.jsp.notice.model.vo.*"%>
     <% 
     ArrayList <HealthInfo> list = (ArrayList<HealthInfo>)request.getAttribute("list");
/*  	ArrayList<Attachment> fileList = (ArrayList<Attachment>) request.getAttribute("fileList");
 	Attachment titleImg = fileList.get(0); */
	System.out.println("HealthInfo list: "+list);
	%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<style>
    * {
        font-family: "Noto Sans KR";
    }
    section {
        width: 900px;
        height: 700px;
        /* border: 2px solid red; */
        float: left;
        margin-left: 30px;
    }
    #searchArea {
        text-align: right;
    }
    #searchBtn {
        text-align: center;
        background: orangered;
        color: white;
        border: none;
        width: 50px;
        height: 23px;
        margin-left: 10px;
    }
    #searchArea select {
        width: 70px;
        border: 1px solid gray;
    }
    #searchArea input[type="search"] {
        border: 1px solid gray;
        height: 23px;
    }
    #showNoticeList table {
        width: 900px;
        text-align: center;
        border-collapse:collapse;
        border-bottom: 5px double gray;
    }
    #showNoticeList tr td:nth-child(3) {
        text-align: left;
    }
    #showNoticeList td {
        font-size: 0.9em;
    }
    #showNoticeList img {
        width: 50px;
        height: 40px;
        vertical-align: middle;
    }
    #showNoticeList th {
        height: 40px;
        border-bottom: 5px double gray;
    }
    #showNoticeList td {
        height: 25px;
        border-bottom: 1px solid gray;
    }
    #showNoticeList tr td:nth-child(3) {
        padding-left: 10px;
    }
</style>
</head>
<body>
    <%@ include file="../../common/followerNav.jsp" %>

    <aside>
        <%@ include file="followerHealthInfoAside.jsp" %>
    </aside>
    <section>
        <!--헤더 영역-->
        <article id="menuTitleArea">
            <div>
                <h1 style="margin-top: 8px; font-size: 1.5em;">&nbsp;&nbsp;&nbsp;건강정보 게시판</h1>
            </div>
        </article>
        <!--헤더 영역 종료-->

        <!--검색 영역-->
        <article id="searchArea">
            <select name="search" id="searchSelect">
                <option value="title">제목</option>
                <option value="content">내용</option>
            </select>
            <input type="search" width="50"><input type="submit" value="검색" id="searchBtn">
        </article>
        <!--검색 영역 종료-->

        <br>    

        <!--리스트 출력 영역-->
        <article id="showNoticeList">
            <table>
                <tr>
                    <th width="50px">No</th>
                    <th width="110px">분류</th>
                    <th>제목</th>
                    <th>북마크</th>
                    <th width="60px">첨부파일</th>
                    <th width="100px">등록일</th>
                </tr>
               
            	<% for(HealthInfo n : list) { %>
				 <tr>
					<td><%=n.getBoardNum() %></td>
					<td><%=n.getBoardCode() %></td>
					<td><%=n.getBoardTitle()%></td>
					<td><%=n.getBookmarkCount()%></td>
					<td><button>다운로드</button>
				</td>
					<td><%=n.getWritedate() %></td>
				<% } %>
				</tr>
               
            </table>
        </article>
    </section>

    <br style="clear: both;"><br><br><br>
    
     <script>

     $(function() {
         $("#showNoticeList td").click(function(){
            var num = $(this).parent().children().eq(0).text();
           
           location.href="<%=request.getContextPath()%>/followSelectOneHealthInfo.no?num="+num;
           
         });
      });
     
   </script>
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

	
	</script>
    
    <footer>
    	<%@ include file="../../common/footer.jsp" %>
    </footer>
</body>
</html>