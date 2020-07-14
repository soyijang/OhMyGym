<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

        /*section Table 스타일*/
        div#trainer_function{
            margin-left: 150px;
            margin-top: 40px;
            text-align: center;
        }

        #trainer_welcome{
            font-family: "Noto Sans KR";
            font-style: normal;
            font-weight: bold;
            font-size: 60px;
            line-height: 87px;
            font-variant: small-caps;
        } 

        .link_text{
            text-decoration: none; 
            color: rgb(75, 75, 75);
            font-family: "Noto Sans KR";
            font-style: normal;
            font-weight: bold;
            font-size: 20px;
            line-height: 29px;
            font-variant: small-caps;
        }
</style>
</head>
<body>
	<%@ include file="../common/trainerNav.jsp" %>
    <section>
        <article>
            <div id="trainer_function" style="float: left;">
                <table id="function_menu" align="left" style="width: 550px;">
                    <tbody>
                        <tr>
                            <td id="trainer_welcome" colspan="2">
                                <a id="trainer_name"><%= loginUser.getName() %><!--트레이너이름--></a> 트레이너님<br>
                               	 환영합니다!
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <a style="font-size: 15px;"><br><br></a>
                            </td>
                            <td>
                                <a style="font-size: 15px;"><br><br></a>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <a id="myPage" class="link_text" href="" >
                                    <img src="../../resources/img_icon/myIcon.png" style="width: 92px; height: 93;"><br>
                                </a>
                            </td>
                            <td>
                                <a id="followergide" class="link_text" href="">
                                    <img src="../../resources/img_icon/authorIcon.png" style="width: 138px; height: 110;"><br>
                                </a>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <a id="myPage" class="link_text" href="" >
                                    	마이페이지
                                </a>
                            </td>
                            <td>
                                <a id="followergide" class="link_text" href="" >
                                    	팔로워관리
                                </a>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <a id="myPt" class="link_text" href=""><br>
                                    <img src="../../resources/img_icon/MyPTIcon.png" style="width: 92px; height: 93;"><br>
             
                                </a>
                            </td>
                            <td>
                                <a id="healthCenter" class="link_text" href=""><br>
                                    <img src="../../resources/img_icon/commuIcon.png" style="width: 92px; height: 93;"><br>
                                </a>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <a  id="myPt" class="link_text" href="" >
                                    OH! 마이피티
                                </a>
                            </td>
                            <td>
                                <a  id="healthCenter" class="link_text" href="" >
                                    	건강정보
                                </a>
                            </td>
                        </tr>
                    </tbody>
                </table>
          </div>
          <div id="trainer_backImg">
            <table align="right">
                <tbody>
                    <tr>
                        <td>
                            <img src="../../resources/img/background_MainImg1.png" width="650px" height="700px">
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>

    </article>

    </section>
    
    <div style="clear: both;">
    <%@ include file="../common/footer.jsp" %>
    </div>
</body>
</html>