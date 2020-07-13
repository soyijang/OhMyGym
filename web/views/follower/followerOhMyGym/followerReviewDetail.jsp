<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
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
		top: 15%;
		width: 700px;
		height: 700px;
		background: #fff;
		margin: 0 auto;
		border-radius: 8px;
		background: #fff;
		border: 1px solid #ccc
	}
	.login_box .close {
		cursor: pointer
	}
	.amountBtn {
		width: 130px;
		height: 30px;
		font-weight: bold;
	}
	#amountArea {
		margin-top: 25px;
		text-align: center;
	}
	.close {
		margin-left: 10px; 
		border-style: none; 
		background: orangered;
		color: white;
	}
	tr {
		border-bottom: 1px solid gray;
	}
	#reviewTitle {
		font-weight: bold;
		font-size: 1.1em;
	}
	td {
		padding-top: 0;
		padding-bottom: 0;
	}
</style>
</head>
<body>
						<div class="login_wrap" style="display: none;">
                            <!-- <div class="dark_bg" onclick="jQuery('.login_wrap').fadeOut('slow')"></div> -->
                            <div class="login_box">
                                <div style="width: 100%; height: 30px; background: orangered; border-radius: 8px;">
                                    <div style="color: white; font-weight: bold; font-family: 'Noto Sans KR'; padding-top: 5px; width: 100%;text-align: center;">리뷰</div>
                                    <div align="center" style="margin-top: 40px;">
                                        <table width="650px" height="550px" style="border-top: 2px solid; border-bottom: 2px solid; border-collapse:collapse;">
                                            <tr style="height: 30px;">
                                                <td id="reviewTitle" colspan="2">제목제목제목제목</td>
                                            </tr>
                                            <tr style="height: 25px;">
												<td width="70%">작성자</td>
												<td>2020-06-08 17:58:41</td>
											</tr>
											<tr>
                                                <td colspan="2" height="350px">
													<!-- <textarea name="" id="" cols="30" rows="10"></textarea> -->
												</td>
                                            </tr>
                                        </table>
                                    </div>
                                    <div id="amountArea">
                                        <button class="close amountBtn" onclick="jQuery('.login_wrap').fadeOut('slow')" src="img_icon/closeIcon.png">닫기</button>
                                    </div>
                                </div>
                                <div class="login_content">
                                </div>
                            </div>
                        </div>
</body>
</html>