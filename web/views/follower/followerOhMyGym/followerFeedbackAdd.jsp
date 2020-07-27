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
    #fFeedbackAddArea {
        display: inline-block; 
        margin-left: 40px;
        margin-top: 10px;
    }
    #fFeedbackAdd {
        width: 960px; 
        height: 440px;
        border: 2px double gray;
        padding:20px;
        padding-top: 10px;
        overflow: auto;
    }
    #fFeedbackAdd input {
        border: none;
        margin-top: 5px;
    }
    #fFeedbackAdd textarea {
        width: 100%;;
        height: 95%;
        resize: none;
    }
    #fFeedbackAdd table{
        border-collapse:collapse;
        width: 100%;
        height: 99%;
        text-align: center;
    }
    #fFeedbackAdd td {
        height: 40px;
        border-bottom: 1px solid gray;
    }
    #fFeedbackAdd th {
        height: 50px;
        border-bottom: 2px double gray;
    }
    #inputFeedbackBtn {
        border-style: none;
        background: orangered;
        width: 100px;
        height: 30px;
        color: white;
        font-weight: bold;
    }
    #fFeedbackTitle {
        width: 100%;
        height: 20px;
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
        <article id="fFeedbackAddArea">
            <div id="fFeedbackAdd" align="center">
                <table align="center">
                    <tr>
                        <td><input id="fFeedbackTitle" name="feedbackTitle" type="text" placeholder="제목을 입력하세요."></td>
                    </tr>
                    <tr style="height: 70%;">
                        <td>
                            <textarea name="feedbackContent" id="fFeedbackContent"></textarea>
                        </td>
                    </tr>
                    <tr>
                        <td align="left">
                            <input type="file" name="file"><br>
                        </td>
                    </tr>
                </table>
            </div>
        </article>
        <!--피드백 목록 출력 종료-->


        <!--피드백 글 작성 버튼 구역-->
        <article style="position: relative; left: 80%; display: inline;">
            <div>
                <button id="inputFeedbackBtn" type="submit">작성하기</button>
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