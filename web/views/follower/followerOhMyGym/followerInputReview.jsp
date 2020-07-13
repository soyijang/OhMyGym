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
    #fReviewsTitleArea div {
        border: 2px double gray; 
        display: inline-block; 
        width: 1000px; 
        height: 40px;
        margin-left: 40px;
        font-size: 14px;
    }
    #inputReviewArea {
        display: inline-block; 
        margin-left: 40px;
        margin-top: 10px;
    }
    #inputReview {
        width: 960px; 
        height: 550px;
        border: 2px double gray;
        padding:20px;
        padding-top: 10px;
        overflow: auto;
    }
    #inputReview input {
        border: none;
        margin-top: 5px;
    }
    #inputReview textarea {
        width: 100%;;
        height: 95%;
        resize: none;
    }
    #inputReview table{
        border-collapse:collapse;
        width: 100%;
        height: 99%;
        text-align: center;
    }
    #inputReview td {
        height: 40px;
        border-bottom: 1px solid gray;
    }
    #inputReview th {
        height: 50px;
        border-bottom: 2px double gray;
    }
    #inputReviewBtn {
        border-style: none;
        background: orangered;
        width: 100px;
        height: 30px;
        color: white;
        font-weight: bold;
    }
    #inputReviewTitle {
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
        <!--리뷰 타이틀-->
        <article id="fReviewsTitleArea">
            <div>
                <h1 style="margin-top: 8px;">&nbsp;&nbsp;&nbsp;리뷰 작성</h1>
            </div>
        </article>
        <!--리뷰 타이틀 종료-->

        <!--리뷰 입력 구역 출력-->
        <article id="inputReviewArea">
            <div id="inputReview" align="center">
                <table align="center">
                    <tr>
                        <td><input id="inputReviewTitle" type="text" placeholder="제목을 입력하세요."></td>
                    </tr>
                    <tr style="height: 70%;">
                        <td>
                            <textarea name="reviewWriter" id="reviewWriter"></textarea>
                        </td>
                    </tr>
                    <tr>
                        <td align="left">
                            <label style="float:left; width: 50px; font-weight: bold; padding-left: 5px;"></labe>별점</label><%@ include file="reviewStarContainer.jsp" %>
                        </td>
                    </tr>
                    <tr>
                        <td align="left">
                            <input type="file"><br>
                            <input type="file" style="margin-bottom: 5px;">
                        </td>
                    </tr>
                </table>
            </div>
        </article>
        <!--리뷰 입력 구역 출력 종료-->

        <!--피드백 글 작성 버튼 구역-->
        <article style="position: relative; left: 80%; display: inline;">
            <div>
                <button id="inputReviewBtn" type="submit">작성하기</button>
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