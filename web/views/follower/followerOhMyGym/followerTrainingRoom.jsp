<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
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
    #titleArea div {
        border: 2px double gray; 
        display: inline-block; 
        width: 1000px; 
        height: 40px;
        margin-left: 40px;
        font-size: 14px;
    }
    /* #showMediaArea th {
        height: 42px;
        font-size: 15px;
    } */
    #showMediaArea {
        display:inline-block; 
        border: 2px double gray; 
        margin-top: 10px; 
        margin-left: 40px;
        width: 1000px;
        height: 650px;
    }
    #thumbnailArea {
        width: 300px;
        height: 264px;
    }
    .mediaInfo {
        width: 300px;
        height: 280px;
        /* border: 1px solid gray; */
        display: inline-block;
        margin: 10px;
    }
    .thumbnail {
        width: 280px;
        height: 170px;
        border: 1px solid gray;
        margin-top: 5px;
    }
    .uploadDate, .mediaTitle {
        width: 180px;
        text-align: left;
        padding-left: 10px;
        display: inline-block;
    }
    .mediaTitle {
        margin-top: 5px;
        font-weight: bold; 
        font-size: 15px;     
    }
    .learningCheck {
        clear: both; 
        width: 80px; 
        height: 30px; 
        border-radius: 50px 50px 50px 50px / 50px 50px 50px 50px;
        font-weight: bold;
        color: white;
        background: orangered;
        text-align: center;
        display: table-cell;
        vertical-align: middle;
    }
    </style>
</head>
<body>
<%@ include file="../../common/followerNav.jsp"%>
    <aside style="float: left;">
        <!--OH마이짐 메뉴-->
        <%@ include file="fOhMyGymAside.jsp" %>
        <!--OH마이짐 메뉴 종료-->
    </aside>

    <section>
        <!--트레이닝룸 타이틀-->
        <article id="titleArea">
            <div>
                <h1 style="margin-top: 6px;">&nbsp;&nbsp;&nbsp;트레이닝룸</h1>
            </div>
        </article>
        <!--트레이닝룸 타이틀 종료-->

        <!--동영상 출력-->
        <article id="showMediaArea">
            <div style="height: 650px; overflow-y: scroll;">
                <table align="center">
                    <tr align="center">
                        <td class="mediaInfo">
                            <div>6</div>
                            <div id="thumbnailArea">
                                <div class="thumbnail">동영상썸네일</div>
                                <div style="width: 200px; float: left;">
                                    <div class="mediaTitle">트레이닝 영상 제목</div>
                                    <div class="uploadDate">2020-06-08 15:57:21</div>
                                </div>
                            <div style="display:inline-block; width: 80px; height: 30px; margin-top: 10px;">
                                <div class="learningCheck">완료</div>
                            </div>
                            </div>
                        </td>
                        <td class="mediaInfo">
                            <div>6</div>
                            <div id="thumbnailArea">
                                <div class="thumbnail">동영상썸네일</div>
                                <div style="width: 200px; float: left;">
                                    <div class="mediaTitle">트레이닝 영상 제목</div>
                                    <div class="uploadDate">2020-06-08 15:57:21</div>
                                </div>
                            <div style="display:inline-block; width: 80px; height: 30px; margin-top: 10px;">
                                <div class="learningCheck">완료</div>
                            </div>
                            </div>
                        </td>
                        <td class="mediaInfo">
                            <div>6</div>
                            <div id="thumbnailArea">
                                <div class="thumbnail">동영상썸네일</div>
                                <div style="width: 200px; float: left;">
                                    <div class="mediaTitle">트레이닝 영상 제목</div>
                                    <div class="uploadDate">2020-06-08 15:57:21</div>
                                </div>
                            <div style="display:inline-block; width: 80px; height: 30px; margin-top: 10px;">
                                <div class="learningCheck">완료</div>
                            </div>
                            </div>
                        </td>
                    </tr>
                    <tr align="center">
                        <td class="mediaInfo">
                            <div>6</div>
                            <div id="thumbnailArea">
                                <div class="thumbnail">동영상썸네일</div>
                                <div style="width: 200px; float: left;">
                                    <div class="mediaTitle">트레이닝 영상 제목</div>
                                    <div class="uploadDate">2020-06-08 15:57:21</div>
                                </div>
                            <div style="display:inline-block; width: 80px; height: 30px; margin-top: 10px;">
                                <div class="learningCheck">완료</div>
                            </div>
                            </div>
                        </td>
                        <td class="mediaInfo">
                            <div>6</div>
                            <div id="thumbnailArea">
                                <div class="thumbnail">동영상썸네일</div>
                                <div style="width: 200px; float: left;">
                                    <div class="mediaTitle">트레이닝 영상 제목</div>
                                    <div class="uploadDate">2020-06-08 15:57:21</div>
                                </div>
                            <div style="display:inline-block; width: 80px; height: 30px; margin-top: 10px;">
                                <div class="learningCheck">완료</div>
                            </div>
                            </div>
                        </td>
                        <td class="mediaInfo">
                            <div>6</div>
                            <div id="thumbnailArea">
                                <div class="thumbnail">동영상썸네일</div>
                                <div style="width: 200px; float: left;">
                                    <div class="mediaTitle">트레이닝 영상 제목</div>
                                    <div class="uploadDate">2020-06-08 15:57:21</div>
                                </div>
                            <div style="display:inline-block; width: 80px; height: 30px; margin-top: 10px;">
                                <div class="learningCheck">완료</div>
                            </div>
                            </div>
                        </td>
                    </tr>
                    <tr align="center">
                        <td class="mediaInfo">
                            <div>6</div>
                            <div id="thumbnailArea">
                                <div class="thumbnail">동영상썸네일</div>
                                <div style="width: 200px; float: left;">
                                    <div class="mediaTitle">트레이닝 영상 제목</div>
                                    <div class="uploadDate">2020-06-08 15:57:21</div>
                                </div>
                            <div style="display:inline-block; width: 80px; height: 30px; margin-top: 10px;">
                                <div class="learningCheck">완료</div>
                            </div>
                            </div>
                        </td>
                        <td class="mediaInfo">
                            <div>6</div>
                            <div id="thumbnailArea">
                                <div class="thumbnail">동영상썸네일</div>
                                <div style="width: 200px; float: left;">
                                    <div class="mediaTitle">트레이닝 영상 제목</div>
                                    <div class="uploadDate">2020-06-08 15:57:21</div>
                                </div>
                            <div style="display:inline-block; width: 80px; height: 30px; margin-top: 10px;">
                                <div class="learningCheck">완료</div>
                            </div>
                            </div>
                        </td>
                        <td class="mediaInfo">
                            <div>6</div>
                            <div id="thumbnailArea">
                                <div class="thumbnail">동영상썸네일</div>
                                <div style="width: 200px; float: left;">
                                    <div class="mediaTitle">트레이닝 영상 제목</div>
                                    <div class="uploadDate">2020-06-08 15:57:21</div>
                                </div>
                            <div style="display:inline-block; width: 80px; height: 30px; margin-top: 10px;">
                                <div class="learningCheck">완료</div>
                            </div>
                            </div>
                        </td>
                    </tr>
                </table>
            </div>
        </article>
        <!--동영상 출력 종료-->

    </section>
    <br><br><br><br>
    <!--footer start-->
    <%@ include file="../../common/footer.jsp"%>
    <!--footer end-->
    
</body>
</html>