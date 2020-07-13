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
    #asideArea {
        /* border: 1px solid gray; */
        width: 300px;
        height: 500px;
        margin-left: 20px;
        margin-top: 30px;
    }
    #profilePhoto {
        border: 2px solid gray;
        width: 150px;
        height: 150px;
        border-radius: 50% 50% 50% 50%;
        margin-top: 80px;
        background-repeat: no-repeat;
        background-image: url('../../resources/challengeImg/image 56.png'); 
        background-position: center; 
        background-size: cover;
    }
    #danceIcon {
        width: 60%;
        height: 60%;
    }
    #titleArea div {
        border: 2px double gray; 
        display: inline-block; 
        width: 1000px; 
        height: 40px;
        margin-left: 40px;
        font-size: 14px;
    }
    #inpuHealthInfo {
        margin-top: 20px;
        width: 1000px;
        height: 496px;
        border: 2px solid gray;
        display: inline-block; 
        margin-left: 40px;
        overflow-y: scroll;
    }
    #bodyInfo {
        /* border: 2px double gray; */
        margin-top: 20px;
        /* margin-left: 10px; */
        width: 80%;
        text-align: center;
    }
    #bodyInfo tr {
        height: 40px;
    }
    .msg {
        display: inline-block;
        width: 200px;
        height: 30px;
        background: orangered;
        color: white;
        border-top-left-radius: 5% 20%;
        border-top-right-radius: 5% 20%;
        border-bottom-left-radius: 5% 20%;
        border-bottom-right-radius: 5% 20%;
        text-align: center;
        vertical-align: middle;
        font-weight: bold;
    }
    th {
        font-size: 0.9em;
    }
    #inputInfoBtn {
        display: inline-block;
        width: 200px;
        height: 30px;
        background: #000080;
        color: white;
        border-top-left-radius: 5% 20%;
        border-top-right-radius: 5% 20%;
        border-bottom-left-radius: 5% 20%;
        border-bottom-right-radius: 5% 20%;
        text-align: center;
        vertical-align: middle;
        font-weight: bold;
        cursor: pointer;
    }
    .login_wrap {
            display: none;
            position: fixed;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            z-index: 10000
        }

        .dark_bg {
            position: absolute;
            width: 100%;
            height: 100%;
            background: #000;
            filter: alpha(opacity=60);
            opacity: .6;
            -moz-opacity: .6
        }

        .login_box {
            position: relative;
            top: 25%;
            width: 635px;
            height: 300px;
            background: #fff;
            margin: 0 auto;
            border-radius: 8px;
            background: #fff;
            border: 1px solid #ccc
        }

        .login_box .close {
            /* position: absolute;
            right: 6px;
            top: 6px; */
            cursor: pointer
        }
        .amountBtn {
            width: 130px;
            height: 30px;
            font-weight: bold;
        }
        #amountArea {
            margin-top: 30px;
            text-align: center;
        }
</style>
</head>
<body>
    <nav>
        <%@ include file="../../common/followerNav.jsp"%>
    </nav>
    
    <aside style="display: inline-block; float: left; width: 20%;" align="center">
        <div id="asideArea" align="center">
            <div id="profilePhoto"></div>
            <table id="bodyInfo">
                <tr>
                    <td colspan="2">
                        <button id="inputInfoBtn" onclick="jQuery('.login_wrap').fadeIn('slow');">정보 입력하기</button>
                        <div class="login_wrap" style="display: none;">
                            <div class="dark_bg" onclick="jQuery('.login_wrap').fadeOut('slow')"></div>
                            <div class="login_box">
                                <div style="width: 100%; height: 30px; background: orangered; border-radius: 8px;">
                                    <div style="color: white; font-weight: bold; font-family: 'Noto Sans KR'; padding-top: 5px; width: 100%; text-align: center;">내 상태 기록하기</div>
                                    <div align="center" style="margin-top: 40px;">
                                        <form action="">
                                                <table width="400px" height="140px" style="border-top: 2px solid; border-bottom: 2px solid; border-collapse:collapse;">
                                                    <tr style="text-align: center; border-bottom: 1px solid gray;">
                                                        <th width="200px" style="background: #F5F5F5;">&nbsp;몸무게</th>
                                                        <td width="200px">&nbsp;<input type="text" style="width: 150px;">kg</td>
                                                    </tr>
                                                    <tr style="text-align: center; border-bottom: 1px solid gray;">
                                                        <th style="background: #F5F5F5;">&nbsp;운동 시간</th>
                                                        <td>&nbsp;<input type="text" style="width: 50px;">시간  <input type="text" style="width: 50px;">분</td>
                                                    </tr>
                                                    <tr style="text-align: center; border-bottom: 1px solid gray;">
                                                        <th style="background: #F5F5F5;">&nbsp;수면 시간</th>
                                                        <td>&nbsp;<input type="text" style="width: 50px;">시간  <input type="text" style="width: 50px;">분</td>
                                                    </tr>
                                                </table>
                                            </div>
                                            <div id="amountArea">
                                                <button class="close amountBtn" onclick="jQuery('.login_wrap').fadeOut('slow')" src="img_icon/closeIcon.png">취소</button>
                                                <button class="amountBtn" type="submit" style="margin-left: 10px; border-style: none; background: orangered;">확인</button>
                                            </div>
                                        </form>
                                </div>
                                <div class="login_content">
                                </div>
                            </div>
                        </div>
                    </td>
                </tr>
                <tr>
                    <th width="100px;">키</th>
                    <td>178.7cm</td>
                </tr>
                <tr>
                    <th>몸무게</th>
                    <td>68.2kg</td>
                </tr>
                <tr>
                    <th>운동시간</th>
                    <td>2시간 30분</td>
                </tr>
                <tr>
                    <th>수면시간</th>
                    <td>7시간 0분</td>
                </tr>
                <tr>
                    <th colspan="2">트레이닝 종료까지</td>
                </tr>
                <tr>
                    <td colspan="2"><div class="msg">D - 27</div></th>
                </tr>
            </table>
        </div>
    </aside>

	<section>
        
        <article id="titleArea">
            <div>
                <h1 style="margin-top: 8px;">&nbsp;&nbsp;&nbsp;내 상태 기록</h1>
            </div>
        </article>
        <article>
            <div id="inpuHealthInfo" align="center">
                <div style="width: 30%; height: 40%; border: 1px solid gray; width: 90%; height:95%; margin-top: 10px;">
                    체중, 수면시간, 운동시간 그래프
                </div>
            </div>
        </article>
    </section>
    <br><br>
    <footer style="clear: both;">
        <%@ include file="../../common/footer.jsp"%>
    </footer>
</body>
</html>