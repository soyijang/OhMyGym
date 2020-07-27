<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.omg.jsp.followerFeedbackRoom.model.vo.*, java.util.*"%> 
<% 
	ArrayList<FeedbackRoom> feedbackList = (ArrayList<FeedbackRoom>) request.getAttribute("feedbackList");
%>
<!DOCTYPE html>
<html> 
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    * {
        font-family: "Noto Sans KR";
    }
    #tFeedbackTitleArea div {
        border: 2px double gray; 
        display: inline-block; 
        width: 1000px; 
        height: 40px;
        margin-left: 40px;
        font-size: 14px;
    }
    #tFeedbackArea {
        display: inline-block; 
        margin-left: 40px;
        margin-top: 10px;
    }
    #tFeedbackListArea {
        width: 960px; 
        height: 440px;
        border: 2px double gray;
        padding:20px;
        padding-top: 10px;
        overflow: auto;
        font-size: 0.8em;
    }
    #tFeedbackListArea table{
        border-collapse:collapse;
        width: 100%;
        text-align: center;
    }
    #tFeedbackListArea td {
        height: 40px;
        border-bottom: 1px solid gray;

    }
    #tFeedbackListArea th {
        height: 50px;
        border-bottom: 4px double gray;
    }
    #inputFeedbackBtn {
        border-style: none;
        display: inline-block;
        background: orangered;
        width: 100px;
        height: 30px;
        color: white;
        font-weight: bold;
        text-align: center;
        font-size: 14px;
    }
    img {
        vertical-align: middle;
    }
    td:nth-child(2) {
        padding-left: 30px;
        text-align: left;
    }
</style>
</head>
<body>
    <nav>
        <%@ include file="../../common/followerNav.jsp" %>
    </nav>
    <br>
    <aside style="float: left;">
        <!--OH마이짐 메뉴-->
        <%@ include file="fOhMyGymAside.jsp" %>
        <!--OH마이짐 메뉴 종료-->
    </aside>
    <section>
        <!--피드백룸 타이틀-->
        <article id="tFeedbackTitleArea">
            <div>
                <h1 style="margin-top: 8px;">&nbsp;&nbsp;&nbsp;피드백룸</h1>
            </div>
        </article>
        <!--피드백룸 타이틀 종료-->

        <!--피드백 목록 출력-->
        <article id="tFeedbackArea">
            <div id="tFeedbackListArea" align="center">
                <table align="center">
                    <tr>
                        <th style="width:100px;">No</th>
                        <th style="width:400px;">제목</th>
                        <th style="width:150px;">일시</th>
                        <th style="width:150px;">답변여부</th>
                    </tr>
                    <!-- 게시글 1도 없을때 조건문 처리 -->
                    <% if(feedbackList.size() > 0) { 
	                    	for(int i = 0; i < feedbackList.size(); i++) { %>
	                    <tr>
	                        <td>1</td>
	                        <td>
	                        	<a href=""><%= feedbackList.get(i).getFeedbackTitle() %></a>
	                        	<!-- DB에 업로드 날짜가 sysdate와 일치하고, 트레이너 답변 미작성인 경우 표시 -->
	                        	<img src="<%= request.getContextPath() %>/resources/tOhMyPtIcon/newIcon.png" style="margin-left: 15px;">
	                        </td>
	                        <td><%= feedbackList.get(i).getFeedbackUploadDate() + " " + feedbackList.get(i).getFeedbackUploadTime() %></td>
	                        <td>
	                        	<!-- ajax 이용해서 피드백 올라왔으면 display 속성값 변경 -->
	                        	<img style="display: none;" class="noFeedback" src="<%= request.getContextPath() %>/resources/fFeedbackImg/fFeedbackIcon1.png">
	                        	<img style="display: none;" class="yesFeedback" src="<%= request.getContextPath() %>/resources/fFeedbackImg/fFeedbackIcon2.png">
	                        </td>
	                    </tr>
	                    <% } %>
                    <% } else { %>
                    	<tr>
                    		<td colspan="4">작성된 피드백 글이 없습니다.</td>
                    	</tr>
                    <% } %>
                    
                </table>
            </div>
        </article>
        <!--피드백 목록 출력 종료-->

        <!--피드백 글 작성 버튼 구역-->
        <article style="position: relative; left: 80%; display: inline;">
            <div>
                <a id="inputFeedbackBtn" onclick="addFeedback();" style="padding-top:7px;">작성하기</a>
            </div>
        </article>
        
        <script>
        	<%-- 피드백 글 작성하는 페이지 주소 : href="<%=request.getContextPath()%>/follower/followerOhMyGym/followerFeedbackDetail.jsp" --%>
        	function addFeedback() {
        		var requestManageCode=<%= feedbackList.get(0).getRequestManageCode() %>;
        		location.href="<%= request.getContextPath() %>/views/follower/followerOhMyGym/followerFeedbackAdd.jsp?num=" + requestManageCode;
        	}
        </script>
        <!--피드백 글 작성 버튼 구역 종료-->
    </section>
    <br><br>
    <footer>
        <%@ include file="../../common/footer.jsp" %>
    </footer>
</body>
</html>