<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
        .container #page_NAME{
            margin-top: 1px;
            margin-left: 50px;
            float: left;
        }

        .container #header_bottom_sidemenu{
            margin-right: 140px;
        }

        ul.sideMenu li{
            width: 120px;
        }

        ul.sideMenu li:hover{
            background-color: orangered;
            color:white;
            transition: all ease 0.25s 0s;
        }

        ul.sideMenu li:hover div{
            color:white;
            transition: all ease 0.25s 0s;
        }

        ul.sideMenu ul {
            display: none;
            margin-left: -1400px;
        }

        ul.sideMenu li ul li{
            width: 2400px;
        }
        ul.sideMenu li ul li a{
            margin-left: 30px;
        }
        ul.sideMenu li:hover > ul{
            padding-top: 20px;
            height: 25px;
            text-align: center;
            float: left;
            background: rgba(255,69,0,1);
            transition: all ease 0.25s 0s;
            display: block;
        }
        ul.sideMenu li:hover > ul li a:hover{
            background: rgb(179, 21, 0);
            transition: all ease 0.25s 0s;
        }
        
        .container{
            min-width: 1200px;
            width: 100%;
            height: 70px;
            border-top: solid 2px orangered;
            border-bottom: solid 2px orangered;
            margin-top: 11px;
        }

        #navigateID ul li { 
            list-style: none; 
            color: rgb(63, 63, 63);
            float: right;
            text-align: center; 
            font-weight: bolder;
            font-size: 14px;
            margin-top: -13px;
        }

        ul#header_bottom_sidemenu li ul li {
            color: white;
            text-align: center;
            margin-left: 200px;
            margin-top: -4px;
        }

        /*section Table 스타일*/
        div#follower_function{
            margin-left: 150px;
            margin-top: 40px;
            text-align: center;
        }

        #follower_welcome{
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
	<%@ include file="../common/followerNav.jsp" %>

    <section>
        <article>
            <div id="follower_function" style="float: left;">
                <table id="function_menu" align="left" style="width: 550px;">
                    <tbody>
                        <tr>
                            <td id="follower_welcome" colspan="2">
                                <a id="follower_name"><!--팔로워이름--></a> 팔로워님<br>
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
                                <a id="myPage" class="link_text" href="">
                                    <img src="../../resources/img_icon/MyPTIcon.png" style="width: 138px; height: 110;"><br>
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
                                <a id="trainingRoom" class="link_text" href="" >
                                    	트레이닝룸
                                </a>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <a id="healthCenter" class="link_text" href=""><br>
                                    <img src="../../resources/img_icon/wellness.png" style="width: 92px; height: 93;"><br>
             
                                </a>
                            </td>
                            <td>
                                <a id="groupRoom" class="link_text" href=""><br>
                                    <img src="../../resources/img_icon/commuIcon.png" style="width: 92px; height: 93;"><br>
                                </a>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <a  id="healthCenter" class="link_text" href="" >
                                    	건강관리
                                </a>
                            </td>
                            <td>
                                <a  id="groupRoom" class="link_text" href="" >
                                   	 그룹소통방
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