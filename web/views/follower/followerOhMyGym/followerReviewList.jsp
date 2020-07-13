<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
    #showReviewArea {
        display:inline-block; 
        border: 2px double gray; 
        margin-top: 10px; 
        margin-left: 40px;
        width: 1000px;
        height: 650px;
    }
    #thumbnailArea {
        width: 300px;
        height: 250px;
        cursor: pointer;
    }
    .reviewInfo {
        width: 300px;
        height: 300px;
        /* border: 1px solid gray; */
        display: inline-block;
        margin: 10px;
    }
    .thumbnail {
        width: 250px;
        height: 180px;
        border: 1px solid gray;
        margin-top: 5px;
    }
    .uploadDate, .reviewTitle, .reviewWriter {
        text-align: left;
        padding-left: 21px;
        display: inline-block;
    }
    .uploadDate, .reviewWriter{
        width: 150px;
        font-size: 0.7em;
        margin-top: 5px;
    }
    .reviewWriter {
        float: left;
    }
    .reviewTitle {
        width: 100%;
        margin-top: 5px;
        font-weight: bold; 
        font-size: 15px;     
    }
    #inputReviewBtn {
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
</style>
</head>
<body>
	<%@ include file="followerReviewDetail.jsp" %>
    <nav>
        <%@ include file="../../common/followerNav.jsp" %>
    </nav>

    <aside style="float: left;">
        <!--OH마이짐 메뉴-->
        <%@ include file="fOhMyGymAside.jsp" %>
        <!--OH마이짐 메뉴 종료-->
    </aside>

    <section>
        <!--리뷰 타이틀-->
        <article id="titleArea">
            <div>
                <h1 style="margin-top: 6px;">&nbsp;&nbsp;&nbsp;트레이닝 리뷰</h1>
            </div>
        </article>
        <!--리뷰 타이틀 종료-->

        <!--리뷰 출력-->
        <article id="showReviewArea">
            <div style="height: 650px; overflow-y: scroll;">
                <table align="center">
                    <tr align="center">
                        <td class="reviewInfo">
                            <div>6</div>
                            <div id="thumbnailArea" onclick="jQuery('.login_wrap').fadeIn('slow')">
                                <div class="thumbnail">리뷰썸네일</div>
                                <div style="width: 93%;" align="left">
                                    <div class="reviewTitle">리뷰 제목리뷰 제목리뷰 제목리뷰 제목</div>
                                    <div class="uploadDate">2020-06-08 15:57:21</div>
                                    <div class="reviewWriter">작성자작성자작성자</div><%@ include file="reviewStarContainer.jsp"%>
                                </div>
                            </div>
                        </td>
                        <td class="reviewInfo">
                            <div>6</div>
                            <div id="thumbnailArea" onclick="jQuery('.login_wrap').fadeIn('slow')">
                                <div class="thumbnail">리뷰썸네일</div>
                                <div style="width: 93%;" align="left">
                                    <div class="reviewTitle">리뷰 제목리뷰 제목리뷰 제목리뷰 제목</div>
                                    <div class="uploadDate">2020-06-08 15:57:21</div>
                                    <div class="reviewWriter">작성자작성자작성자</div><%@ include file="reviewStarContainer.jsp"%>
                                </div>
                            </div>
                        </td>
                        <td class="reviewInfo">
                            <div>6</div>
                            <div id="thumbnailArea" onclick="jQuery('.login_wrap').fadeIn('slow')">
                                <div class="thumbnail">리뷰썸네일</div>
                                <div style="width: 93%;" align="left">
                                    <div class="reviewTitle">리뷰 제목리뷰 제목리뷰 제목리뷰 제목</div>
                                    <div class="uploadDate">2020-06-08 15:57:21</div>
                                    <div class="reviewWriter">작성자작성자작성자</div><%@ include file="reviewStarContainer.jsp"%>
                                </div>
                            </div>
                        </td>
                        <td class="reviewInfo">
                            <div>6</div>
                            <div id="thumbnailArea" onclick="jQuery('.login_wrap').fadeIn('slow')">
                                <div class="thumbnail">리뷰썸네일</div>
                                <div style="width: 93%;" align="left">
                                    <div class="reviewTitle">리뷰 제목리뷰 제목리뷰 제목리뷰 제목</div>
                                    <div class="uploadDate">2020-06-08 15:57:21</div>
                                    <div class="reviewWriter">작성자작성자작성자</div><%@ include file="reviewStarContainer.jsp"%>
                                </div>
                            </div>
                        </td>
                        <td class="reviewInfo">
                            <div>6</div>
                            <div id="thumbnailArea" onclick="jQuery('.login_wrap').fadeIn('slow')">
                                <div class="thumbnail">리뷰썸네일</div>
                                <div style="width: 93%;" align="left">
                                    <div class="reviewTitle">리뷰 제목리뷰 제목리뷰 제목리뷰 제목</div>
                                    <div class="uploadDate">2020-06-08 15:57:21</div>
                                    <div class="reviewWriter">작성자작성자작성자</div><%@ include file="reviewStarContainer.jsp"%>
                                </div>
                            </div>
                        </td>
                        <td class="reviewInfo">
                            <div>6</div>
                            <div id="thumbnailArea" onclick="jQuery('.login_wrap').fadeIn('slow')">
                                <div class="thumbnail">리뷰썸네일</div>
                                <div style="width: 93%;" align="left">
                                    <div class="reviewTitle">리뷰 제목리뷰 제목리뷰 제목리뷰 제목</div>
                                    <div class="uploadDate">2020-06-08 15:57:21</div>
                                    <div class="reviewWriter">작성자작성자작성자</div><%@ include file="reviewStarContainer.jsp"%>
                                </div>
                            </div>
                        </td>
                        <td class="reviewInfo">
                            <div>6</div>
                            <div id="thumbnailArea" onclick="jQuery('.login_wrap').fadeIn('slow')">
                                <div class="thumbnail">리뷰썸네일</div>
                                <div style="width: 93%;" align="left">
                                    <div class="reviewTitle">리뷰 제목리뷰 제목리뷰 제목리뷰 제목</div>
                                    <div class="uploadDate">2020-06-08 15:57:21</div>
                                    <div class="reviewWriter">작성자작성자작성자</div><%@ include file="reviewStarContainer.jsp"%>
                                </div>
                            </div>
                        </td>
                        <td class="reviewInfo">
                            <div>6</div>
                            <div id="thumbnailArea" onclick="jQuery('.login_wrap').fadeIn('slow')">
                                <div class="thumbnail">리뷰썸네일</div>
                                <div style="width: 93%;" align="left">
                                    <div class="reviewTitle">리뷰 제목리뷰 제목리뷰 제목리뷰 제목</div>
                                    <div class="uploadDate">2020-06-08 15:57:21</div>
                                    <div class="reviewWriter">작성자작성자작성자</div><%@ include file="reviewStarContainer.jsp"%>
                                </div>
                            </div>
                        </td>
                        <td class="reviewInfo">
                            <div>6</div>
                            <div id="thumbnailArea" onclick="jQuery('.login_wrap').fadeIn('slow')">
                                <div class="thumbnail">리뷰썸네일</div>
                                <div style="width: 93%;" align="left">
                                    <div class="reviewTitle">리뷰 제목리뷰 제목리뷰 제목리뷰 제목</div>
                                    <div class="uploadDate">2020-06-08 15:57:21</div>
                                    <div class="reviewWriter">작성자작성자작성자</div><%@ include file="reviewStarContainer.jsp"%>
                                </div>
                            </div>
                        </td>
                </table>
            </div>
        </article>
        <!--리뷰 출력 종료-->

        <!--리뷰 작성 버튼 구역-->
        <article style="position: relative; left: 80%; display: inline;">
            <div>
                <a id="inputReviewBtn" href="<%=request.getContextPath()%>/views/fOhMyGym/inputReview.jsp" style="padding-top:7px;">리뷰 작성하기</a>
            </div>
        </article>
        <!--리뷰 작성 버튼 구역 종료-->
    </section>

    <br><br><br><br>
    <!--footer start-->
    <%@ include file="../../common/footer.jsp"%>
    <!--footer end-->
</body>
</html>