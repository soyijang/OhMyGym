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
        border-bottom: 2px double gray;
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
                    <tr>
                        <td>1</td>
                        <td><a href="">운동이 습관이 되기까지 #1회차</a><img src="../../resources/tOhMyPtIcon/newIcon.png" style="margin-left: 15px;"></td>
                        <td>2020-07-08 16:43:52</td>
                        <td><img src="../../resources/fFeedbackImg/fFeedbackIcon1.png"></td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td><a href="">운동이 습관이 되기까지 #1회차</a></td>
                        <td>2020-07-08 16:43:52</td>
                        <td><img src="../../resources/fFeedbackImg/fFeedbackIcon2.png"></td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td><a href="">운동이 습관이 되기까지 #1회차</a></td>
                        <td>2020-07-08 16:43:52</td>
                        <td><img src="../../resources/fFeedbackImg/fFeedbackIcon2.png"></td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td><a href="">운동이 습관이 되기까지 #1회차</a></td>
                        <td>2020-07-08 16:43:52</td>
                        <td><img src="../../resources/fFeedbackImg/fFeedbackIcon2.png"></td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td><a href="">운동이 습관이 되기까지 #1회차</a></td>
                        <td>2020-07-08 16:43:52</td>
                        <td><img src="../../resources/fFeedbackImg/fFeedbackIcon2.png"></td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td><a href="">운동이 습관이 되기까지 #1회차</a></td>
                        <td>2020-07-08 16:43:52</td>
                        <td><img src="../../resources/fFeedbackImg/fFeedbackIcon2.png"></td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td><a href="">운동이 습관이 되기까지 #1회차</a></td>
                        <td>2020-07-08 16:43:52</td>
                        <td><img src="../../resources/fFeedbackImg/fFeedbackIcon2.png"></td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td><a href="">운동이 습관이 되기까지 #1회차</a></td>
                        <td>2020-07-08 16:43:52</td>
                        <td><img src="../../resources/fFeedbackImg/fFeedbackIcon2.png"></td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td><a href="">운동이 습관이 되기까지 #1회차</a></td>
                        <td>2020-07-08 16:43:52</td>
                        <td><img src="../../resources/fFeedbackImg/fFeedbackIcon2.png"></td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td><a href="">운동이 습관이 되기까지 #1회차</a></td>
                        <td>2020-07-08 16:43:52</td>
                        <td><img src="../../resources/fFeedbackImg/fFeedbackIcon2.png"></td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td><a href="">운동이 습관이 되기까지 #1회차</a></td>
                        <td>2020-07-08 16:43:52</td>
                        <td><img src="../../resources/fFeedbackImg/fFeedbackIcon2.png"></td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td><a href="">운동이 습관이 되기까지 #1회차</a></td>
                        <td>2020-07-08 16:43:52</td>
                        <td><img src="../../resources/fFeedbackImg/fFeedbackIcon2.png"></td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td><a href="">운동이 습관이 되기까지 #1회차</a></td>
                        <td>2020-07-08 16:43:52</td>
                        <td><img src="../../resources/fFeedbackImg/fFeedbackIcon2.png"></td>
                    </tr>
                </table>
            </div>
        </article>
        <!--피드백 목록 출력 종료-->

        <!--피드백 글 작성 버튼 구역-->
        <article style="position: relative; left: 80%; display: inline;">
            <div>
                <a id="inputFeedbackBtn" href="<%=request.getContextPath()%>/views/fOhMyGym/fFeedbackDetail.jsp" style="padding-top:7px;">작성하기</a>
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