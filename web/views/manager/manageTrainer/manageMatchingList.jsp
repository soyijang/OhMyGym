<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    section {
        width: 1220px;
        margin-left: 200px;
    }
    #menutitle {
        font-weight: bold; 
        font-size: 1.5em; 
        padding-top: 30px; 
        padding-left: 30px;
    }
    #inputFollower {
        margin-right: 50px;
        font-size: 0.9em;
    }
    #inputFollower input {
        margin-left: 10px;
        width: 150px;
    }
    #inputFollower button {
        width: 100px;
        height: 1.7em;
        color: white;
        border: none;
        font-weight: bold;
        background: orangered;
        margin-left: 30px;
    }
    #inputFollower label {
        font-weight: bold;
    }
    #memberInfo {
        text-align: center; 
        width: 900px;
    }
    #memberInfo tr:nth-child(4), #memberInfo tr:nth-child(3) {
        height: 50px;
    }
    #memberInfoArea {
        width: 1020px;
        font-size: 0.9em;
        display: inline-block;
        border: 1px solid gray;
        border-top-left-radius: 5% 20%;
        border-top-right-radius: 5% 20%;
        border-bottom-left-radius: 5% 20%;
        border-bottom-right-radius: 5% 20%;
    }
    #trainingRoomInfo td {
        font-size: 0.9em;
    }
    #trainingRoomInfo div{
        border-top-left-radius: 10% 15%;
        border-top-right-radius: 10% 15%;
        border-bottom-left-radius: 10% 15%;
        border-bottom-right-radius: 10% 15%;
    }
    a {
        color: black;
    }
    a:hover {
        cursor: pointer;
        text-decoration: underline;
    }
    .betweenDiv {
        width:45px; 
        height:350px; 
        display: inline-block;
    }
    .tableArea {
        display: inline-block; 
        width:480px; 
        height:350px;
    }
    .tableOutline {
        width:480px; 
        height:300px; 
        border: 1px solid gray; 
        display: inline-block;
    }
    .showBoard {
        width: 450px; 
        margin-top: 5px; 
        margin-bottom: 5px; 
        height: 250px; 
        text-align: center;
        border-bottom: 2px double gray;
        border-collapse: collapse; 
    }
    th {
        border-bottom: 2px double gray;
    }
    .countWriting {
        margin-left: 30px;
        font-size: 0.8em;
    }
</style>
</head>
<body>
    <%@ include file="../../common/managerNav.jsp"%>

    <section>
        <!--메뉴 타이틀 영역-->
        <article id="menuTitleArticle">
            <p id="menutitle">트레이닝룸 조회</p>
        </article>
        <!--메뉴 타이틀 영역 종료-->

        <br>

        <!--검색 영역-->
        <article id="searchArticle">
            <div id="inputFollower" align="right">
                <form action="" method="POST">
                    <label>팔로워 ID</label><input type="text">
                    <button type="submit">검 색</button>
                </form>
            </div>
        </article>
        <!--검색 영역 종료-->

        <br>

        <!--팔로워/트레이너 프로필 출력-->
        <article align="center">
            <div id="memberInfoArea" align="center">
                <table id="memberInfo">
                    <tr style="font-weight: bold;">
                        <td colspan="3">팔로워</td>
                        <td colspan="3">트레이너</td>
                    </tr>
                    <tr>
                        <td rowspan="4" width="160px">팔로워 프로필사진</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td rowspan="4" width="160px">트레이너 프로필사진</td>
                    </tr>
                    <tr>
                        
                        <td style="font-weight: bold;">ID</td>
                        <td>팔로워ID출력</td>
                        <td style="font-weight: bold;">ID</td>
                        <td>트레이너ID출력</td>
                        
                    </tr>
                    <tr>
                        <td style="font-weight: bold;">닉네임</td>
                        <td>팔로워 닉네임 출력</td>
                        <td style="font-weight: bold;">닉네임</td>
                        <td>트레이너 닉네임 출력</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </div>
        </article>
        <!--팔로워/트레이너 프로필 출력 영역 종료-->

        <br>

        <article id="trainingRoomInfo" style="margin-right: 100px; margin-left: 100px;">
            
            <div class="tableArea">

                <!--트레이닝룸 보기-->
                <label class="countWriting">게시글 00개</label>
                <div class="tableOutline" align="center">
                    <table class="showBoard">
                        <tr>
                            <th colspan="3" height="50" style="font-size: 1.1em;"><a href="">트레이닝룸</a></th>
                        </tr>
                        <tr>
                            <th width="45px">No.</th>
                            <th>제목</th>
                            <th width="100px">작성일</th>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td><a href="">트레이닝룸게시글제목</a></td>
                            <td>2020-06-14</td>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td><a href="">트레이닝룸게시글제목</a></td>
                            <td>2020-06-14</td>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td><a href="">트레이닝룸게시글제목</a></td>
                            <td>2020-06-14</td>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td><a href="">트레이닝룸게시글제목</a></td>
                            <td>2020-06-14</td>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td><a href="">트레이닝룸게시글제목</a></td>
                            <td>2020-06-14</td>
                        </tr>
                    </table>
                </div>
            </div>
            <!--트레이닝룸 보기 종료-->
            <div class="betweenDiv"></div>

            <!--피드백룸 보기-->
            <div class="tableArea">
                <label class="countWriting">게시글 00개</label>
                <div class="tableOutline" align="center">
                    <table class="showBoard">
                        <tr>
                            <th colspan="3" height="50" style="font-size: 1.1em;"><a href="">피드백룸</a></th>
                        </tr>
                        <tr>
                            <th width="45px">No.</th>
                            <th>제목</th>
                            <th width="100px">작성일</th>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td><a href="">트레이닝룸게시글제목</a></td>
                            <td>2020-06-14</td>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td><a href="">트레이닝룸게시글제목</a></td>
                            <td>2020-06-14</td>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td><a href="">트레이닝룸게시글제목</a></td>
                            <td>2020-06-14</td>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td><a href="">트레이닝룸게시글제목</a></td>
                            <td>2020-06-14</td>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td><a href="">트레이닝룸게시글제목</a></td>
                            <td>2020-06-14</td>
                        </tr>
                    </table>
                </div>
            </div>
            <!--피드백룸 보기 종료-->
            
            <br>

            <!--밥스타그램 보기-->
            <div class="tableArea">
                <label class="countWriting">게시글 00개</label>
                <div class="tableOutline" align="center">
                    <table class="showBoard">
                        <tr>
                            <th colspan="3" height="50" style="font-size: 1.1em;"><a href="">밥스타그램</a></th>
                        </tr>
                        <tr>
                            <th width="45px">No.</th>
                            <th>제목</th>
                            <th width="100px">작성일</th>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td><a href="">트레이닝룸게시글제목</a></td>
                            <td>2020-06-14</td>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td><a href="">트레이닝룸게시글제목</a></td>
                            <td>2020-06-14</td>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td><a href="">트레이닝룸게시글제목</a></td>
                            <td>2020-06-14</td>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td><a href="">트레이닝룸게시글제목</a></td>
                            <td>2020-06-14</td>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td><a href="">트레이닝룸게시글제목</a></td>
                            <td>2020-06-14</td>
                        </tr>
                    </table>
                </div>
            </div>
            <!--밥스타그램 보기 종료-->

            <div class="betweenDiv"></div>

            <!--건강상태기록 보기-->
            <div class="tableArea">
                <label class="countWriting">게시글 00개</label>
                <div class="tableOutline" align="center">
                    <table class="showBoard">
                        <tr>
                            <th colspan="3" height="50" style="font-size: 1.1em;"><a href="">건강상태기록</a></th>
                        </tr>
                        <tr>
                            <th width="45px">No.</th>
                            <th>제목</th>
                            <th width="100px">작성일</th>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td><a href="">트레이닝룸게시글제목</a></td>
                            <td>2020-06-14</td>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td><a href="">트레이닝룸게시글제목</a></td>
                            <td>2020-06-14</td>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td><a href="">트레이닝룸게시글제목</a></td>
                            <td>2020-06-14</td>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td><a href="">트레이닝룸게시글제목</a></td>
                            <td>2020-06-14</td>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td><a href="">트레이닝룸게시글제목</a></td>
                            <td>2020-06-14</td>
                        </tr>
                    </table>
                </div>
            </div>
            <!--건강상태기록 보기 종료-->
        </article>

        
    </section>
</body>
</html>