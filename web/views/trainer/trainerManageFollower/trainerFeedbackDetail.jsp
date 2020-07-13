<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
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
        <%@ include file="../../common/trainerNav.jsp" %>
    </nav>
    <br>
    <aside style="float: left;">
        <!--OH마이짐 메뉴-->
        <%@ include file="trainerManageAside.jsp" %>
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
                        <td><input id="fFeedbackTitle" type="text" value="제목 출력 영역"></td>
                    </tr>
                    <tr style="height: 75%;">
                        <td>
                            <div align="center">
                                <div id="ShowMediaArea">회원동영상출력</div><br>
                                <div id="fFeedbackContentArea">
                                    <textarea name="" id="fFeedbackContent" style="height: 150px;"></textarea>
                                </div>
                            </div>
                        </td>
                    </tr>
                </table>

                 <!-- 트레이너 답글 출력 영역    --------------------------------------------------------------------------답글 달았을 경우
                 <article>
                    <div id="trainerRepleArea">
                        <img src="../../resources/tOhMyPtIcon/fFeedbackReple.png" align="left">
                        <div id="trainerReple">
                            <div id="trainerProfile" style="background: yellow;"></div>
                        </div>
                        <div id="trainerRepleDate">2020-06-08 16:24:58</div>
                    </div>
                </article>
                트레이너 답글 출력 영역 종료 -->

                <!--답글 달지 않았을 경우 트레이너 답글 입력 영역-->
                <article>
                    <div id="trainerRepleArea" align="right">
                        <textarea name="inputTrainerReple" id="inputTrainerReple" style="width: 100%; height: 140px; vertical-align: middle; resize: none;"></textarea>
                        <input type="submit" value="등록" style="background: orangered; text-align: center; font-family: 'Noto Sans KR';font-weight: bold; color: white; width: 100px; height: 30px; margin-left: 10px;">
                    </div>
                </article>
                <!--답글 달지 않았을 경우 트레이너 답글 입력 영역 종료-->
            </div>
        </article>
        <!--피드백 내용 출력 종료 -->

    </section>
    <br><br>
    <footer>
        <%@ include file="../../common/footer.jsp" %>
    </footer>
</body>
</html>