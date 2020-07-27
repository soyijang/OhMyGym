<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, com.omg.jsp.file.model.vo.*, com.omg.jsp.followerFeedbackRoom.model.vo.*"%> 
<% 
	HashMap<String, Object> feedbackInfo = (HashMap<String, Object>) request.getAttribute("feedbackInfo");
	FeedbackRoom feedback = (FeedbackRoom) feedbackInfo.get("feedback");
	Files video = (Files) feedbackInfo.get("video");
	System.out.println(video.getFilePath() + "/" + video.getFileManageName());
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
    #fShowFeedbackArea {
        display: inline-block; 
        margin-left: 40px;
        margin-top: 10px;
    }
    #fShowFeedback {
        width: 960px; 
        height: 600px;
        border: 2px double gray;
        padding:20px;
        padding-top: 10px;
        overflow: auto;
    }
    #fShowFeedback input {
        border: none;
        margin-top: 5px;
    }
    #fShowFeedback textarea {
        width: 100%;;
        height: 95%;
        resize: none;
    }
    #fShowFeedback table{
        border-collapse:collapse;
        width: 100%;
        height: 70%;
        text-align: center;
    }
    #fShowFeedback td {
        height: 40px;
        border-bottom: 1px solid gray;
    }
    #fShowFeedback th {
        height: 50px;
        border-bottom: 2px double gray;
    }
    #changeFeedbackBtn, #deleteFeedbackBtn {
        border-style: none;
        background: orangered;
        width: 100px;
        height: 30px;
        color: white;
        font-weight: bold;
    }
    #deleteFeedbackBtn {
        background: gray;
    }
    #fFeedbackTitle {
        width: 100%;
        height: 20px;
    }
    #fFeedbackContentArea {
        width: 100%; 
        background: lightpink;
    }
    #ShowMediaArea {
        width: 300px;
        height: 200px;
        border: 1px solid gray;
        display: inline-block;
        position: relative;
    }
    #fFeedbackContent {
        width: 900px;
        resize: none;
        overflow-y: scroll; 
        overflow-x: hidden; 
        border: none; 
    }
    #trainerRepleArea {
        margin-top: 20px;
    }
    #trainerReple {
        border: 2px solid orangered; 
        width: 93%; 
        height: 155px; 
        margin: 0 auto; 
        border-radius: 40px 40px 40px 40px / 40px 40px 40px 40px;
    }
    #trainerProfile {
        height: 100px; 
        width: 100px; 
        border: 1px solid gray; 
        border-radius: 50% 50% 50% 50% / 50% 50% 50% 50%;
        margin-top: 20px; 
        margin-left: 20px;
    }
    #trainerRepleDate {
        margin-right: 40px; 
        font-family: 'Noto Sans KR'; 
        font-weight: bold; 
        display: inline-block; 
        margin-left: 50px;
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

        <!--피드백 내용 출력 영역-->
        <article id="fShowFeedbackArea">
            <div id="fShowFeedback">
                <table align="center">
                    <tr>
                        <td style="text-align: left;">
                        	<b><%= feedback.getFeedbackTitle() %></b>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: left;">
                        	업로드 일자 : <%= feedback.getFeedbackUploadDate() + " " + feedback.getFeedbackUploadTime() %>
                        </td>
                    </tr>
                    <tr style="height: 75%;">
                        <td>
                            <div align="center">
                            	<br><br>
                                <!-- <div id="ShowMediaArea">회원동영상출력</div><br> -->
                                <video style="width:400px; height: 250px;" controls>
                                	<source src="<%= request.getContextPath() + "/" + video.getFilePath() + "/" + video.getFileManageName() %>">
                                </video>
                                <div id="fFeedbackContentArea">
                                    <textarea name="" id="fFeedbackContent" style="height: 150px;"><%= feedback.getFeedbackContent() %></textarea>
                                </div>
                            </div>
                        </td>
                    </tr>
                </table>
                 <!--트레이너 답글 출력 영역-->
                 <article>
                    <div id="trainerRepleArea" style="display: none;">
                        <img src="../../resources/tOhMyPtIcon/fFeedbackReple.png" align="left">
                        <div id="trainerReple">
                            <div id="trainerProfile" style="background: yellow;"></div>
                        </div>
                        <div id="trainerRepleDate">2020-06-08 16:24:58</div>
                    </div>
                </article>
                <!--트레이너 답글 출력 영역 종료-->
            </div>
        </article>
        <!--피드백 내용 출력 종료-->

        <!--피드백 글 작성 버튼 구역-->
        <article style="position: relative; left: 72%; display: inline;">
            <div>
                <button id="changeFeedbackBtn" type="submit" style="margin-right: 15px;">수정하기</button>
                <button id="deleteFeedbackBtn" type="submit">삭제하기</button>
            </div>
        </article>
        <!--피드백 글 작성 버튼 구역 종료-->

    </section>
    <br><br>
    <footer>
        <%@ include file="../../common/footer.jsp" %>
    </footer>
</body>
</html>