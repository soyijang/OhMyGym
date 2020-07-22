<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.1/css/all.min.css"
	rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript"
	src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script>
            var IMP = window.IMP; // 생략가능
            IMP.init('imp38858725'); // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
    </script>
<style>
body {
	overflow-x: hidden;
}

.NavLink {
	padding-top: 30px;
	width: 120px;
	height: 40px;
}

.container_top {
	display: block;
	color: rgb(105, 111, 116);
	font-size: 0.8em;
	font-family: "Noto Sans KR";
	font-weight: 900;
	line-height: 1.25em;
	margin-right: 100px;
}

.container_top ul li {
	list-style: none;
	float: right;
	margin-left: 20px;
	margin-right: 10px;
}

nav {
	display: block;
	color: rgb(117, 117, 117);
	font-size: 0.8em;
	font-family: "Noto Sans KR";
	font-weight: bold;
	line-height: 1.25em;
}

nav ul {
	list-style: none;
}

.container #page_NAME {
	margin-top: 1px;
	margin-left: 50px;
	float: left;
}

.container #header_bottom_sidemenu {
	margin-right: 140px;
}

ul.sideMenu li {
	width: 120px;
}

ul.sideMenu li:hover {
	background-color: orangered;
	color: white;
	transition: all ease 0.25s 0s;
}

ul.sideMenu li:hover div {
	color: white;
	transition: all ease 0.25s 0s;
}

ul.sideMenu ul {
	display: none;
	margin-left: -1400px;
}

ul.sideMenu li ul li {
	width: 2400px;
}

ul.sideMenu li ul li a {
	margin-left: 30px;
}

ul.sideMenu li:hover>ul {
	padding-top: 20px;
	height: 25px;
	text-align: center;
	float: left;
	background: rgba(255, 69, 0, 1);
	transition: all ease 0.25s 0s;
	display: block;
}

ul.sideMenu li:hover>ul li a:hover {
	background: rgb(179, 21, 0);
	transition: all ease 0.25s 0s;
}

.container {
	min-width: 1200px;
	width: 100%;
	height: 70px;
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

table.cash_table {
	border-top: 3px solid #444444;
	border-bottom: 1px solid #444444;
	width: 450px;
}

table.cash_table tr td:nth-child(2n) {
	color: rgb(0, 0, 0);
	background: #dfdfdf;
}

table.cash_table tr th:nth-child(2n) {
	color: rgb(0, 0, 0);
	background: #dfdfdf;
}

table.cash_table td, table.cash_table th {
	border-bottom: 1px solid #4e4e4e;
}

table.cash_table th {
	font-size: 0.75em;
	text-align: left;
	font-weight: 600;
}

table.cash_table td {
	font-size: 1.25em;
	text-align: right;
	font-weight: 900;
	padding-right: 10px;
}

/*사이드메뉴*/
nav#side_nav {
	font-family: "Noto Sans KR";
	position: absolute;
	width: 178px;
	height: 724px;
	left: 150px;
}

nav#side_nav div.side_container {
	border: solid 1px rgb(103, 103, 103);
	width: 150px;
	height: 800px;
	border-radius: 9px;
	box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
}

div.side_container {
	padding-top: 25px;
	border: solid 1px #979797;
	width: 150px;
	height: 100%;
}

div.side_container ul li {
	text-align: left;
	padding-top: 25px;
}

td.cash_table_row {
	border-bottom: solid 1px black;
}
/*아팈클*/
div.cash_content {
	padding: 20px;
}

table.cash_list {
	width: 100%;
	border-top: 1px solid #444444;
	border-collapse: collapse;
	text-align: center;
}

table.cash_list thead {
	background: orangered;
	color: white;
}

table.cash_list th, table.cash_list td {
	border-bottom: 1px solid #444444;
	padding: 10px;
}

/*푸터*/

.buy_wrap {
	display: none;
	position: fixed;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	z-index: 10000
}

.return_wrap {
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
	filter: alpha(opacity = 60);
	opacity: .6;
	-moz-opacity: .6
}

.buy_box {
	position: relative;
	top: 15%;
	width: 485px;
	height: 350px;
	background: #fff;
	margin: 0 auto;
	border-radius: 8px;
	background: #fff;
	border: 1px solid #ccc
}

.buy_box .close {
	position: absolute;
	right: 6px;
	top: 6px;
	width: 16px;
	height: 16px;
	cursor: pointer
}

.return_box {
	position: relative;
	top: 15%;
	width: 485px;
	height: 300px;
	background: #fff;
	margin: 0 auto;
	border-radius: 8px;
	background: #fff;
	border: 1px solid #ccc
}

.return_box .close {
	position: absolute;
	right: 6px;
	top: 6px;
	width: 16px;
	height: 16px;
	cursor: pointer
}

table.follower_cash {
	float: left;
	height: 190px;
}

table.follower_cash tbody tr th {
	font-size: 1.3em;
	font-weight: normal;
	text-align: left;
}

table.follower_cash tbody tr td {
	font-size: 1.8em;
	font-weight: bold;
	text-align: center;
}

button.cashbtn {
	border-radius: 5px;
	border: none;
	background: orangered;
	color: white;
	width: 80px;
	height: 30px;
}

button.cashbtn:focus {
	outline: none;
}

button.cashbtn_main {
	width: 145px;
	height: 35px;
	border: none;
	border-radius: 5px;
	outline: none;
	clear: both;
	background: orangered;
	font-weight: bold;
	font-size: 0.8em;
	color: white;
	box-shadow: 0 2px 4px 0 rgba(0, 0, 0, 0.2), 0 2px 5px 0
		rgba(0, 0, 0, 0.19);
}

.return_box {
	position: relative;
	top: 15%;
	width: 485px;
	height: 300px;
	background: #fff;
	margin: 0 auto;
	border-radius: 8px;
	background: #fff;
	border: 1px solid #ccc
}

.return_box .close {
	position: absolute;
	right: 6px;
	top: 6px;
	width: 16px;
	height: 16px;
	cursor: pointer
}

button.returnbtn {
	border-radius: 5px;
	border: 2px solid orangered;
	background: white;
	font-weight: bold;
	color: black;
	width: 120px;
	height: 30px;
}

button.returnbtn:focus {
	outline: none;
}

.select {
	color: orangered;
	font-weight: bold;
}

textarea#returnTermTxt {
	width: 240px;
	height: 70px;
	resize: none;
	display: none;
}

td.return_list_row {
	border-bottom: solid 1px black;
}
/*아팈클*/
div.cash_content {
	padding: 20px;
}

table.return_list {
	width: 100%;
	border-top: 1px solid #444444;
	border-collapse: collapse;
	text-align: center;
}

table.return_list thead {
	background: orangered;
	color: white;
}

table.return_list th, table.return_list td {
	border-bottom: 1px solid #444444;
	padding: 10px;
}

div#return_list_div {
	display: none;
}
</style>
<title>Insert title here</title>
</head>


<body>
	<div class="return_wrap" style="display: none;">
		<div class="dark_bg" onclick="jQuery('.return_wrap').fadeOut('slow')"></div>
		<div class="return_box">
			<div
				style="width: 100%; height: 30px; background: orangered; border-radius: 8px;">
				<div
					style="color: white; font-weight: bold; font-family: 'Noto Sans KR'; margin-left: 200px; padding-top: 5px;">오머니
					환급신청</div>
				<img class="close" onclick="jQuery('.return_wrap').fadeOut('slow')"
					src="/omg/resources/img_icon/closeIcon.png" width="20px"
					height="20px">
			</div>
			<div class="buy_content" style="text-align: center;">
				<div class="cash_have_Text">
					<!-- <a style="font-size: 1.7em; font-weight: bold;">현재 오머니: <span class="cash_have_value" style="color: orangered;">1000</span></a>보유캐쉬 -->
					<br>

					<div class="customer_ohMoney_return"
						style="text-align: center; margin: auto;">
						<div style="font-size: 1.3em; font-weight: bold;">
							환급가능금액: <a id="canRefundMoney">0</a>원
						</div>
					</div>
					<br>
					<div style="font-weight: bold; font-size: 0.8em;">원하시는 환급 금액을
						입력해주세요</div>
					<input type="text" id="returnOhmoney" onkeyup="checkRefund();"
						placeholder="금액입력" style="font-size: 1em;">&nbsp;원<br>
					<a style="font-size: 0.8em; color: black;">환급가능한 최소 금액은 5000원
						입니다.</a><br> <a id="warnMsg"
						style="font-size: 0.8em; color: red; display: none;">환급가능 액수보다
						큰 금액은 환급해드릴 수 없습니다.</a><br> <input type="checkbox" id="checkTerm"
						name="checkTerm" onclick="checkIsAbled();"><label
						style="font-size: 0.9em; font-weight: bold;">환급이용약관(필수)</label><a
						id="termTxt" onclick="showTerm();"
						style="margin-left: 20px; cursor: pointer; font-size: 0.8em;">약관보기</a>
					<br>
					<textarea id="returnTermTxt" readonly>- 제 1 장 총칙 -
                        </textarea>
					<br>
					<br>
					<button id="submitRefund" onclick="submitRefund();"
						class="returnbtn" style="color: lightgray;">환급신청하기</button>
				</div>
			</div>
		</div>
	</div>



	<div class="buy_wrap" style="display: none;">
		<div class="dark_bg" onclick="jQuery('.buy_wrap').fadeOut('slow')"></div>
		<div class="buy_box">
			<div
				style="width: 100%; height: 30px; background: orangered; border-radius: 8px;">
				<div
					style="color: white; font-weight: bold; font-family: 'Noto Sans KR'; margin-left: 200px; padding-top: 5px;">오머니
					충전</div>
				<img class="close" onclick="jQuery('.buy_wrap').fadeOut('slow')" src="/omg/resources/img_icon/closeIcon.png" width="20px" height="20px">
			</div>
			<div class="buy_content" style="text-align: center;">
				<div class="cash_have_Text">
					<!-- <a style="font-size: 1.7em; font-weight: bold;">현재 오머니: <span class="cash_have_value" style="color: orangered;">1000</span></a>보유캐쉬 -->
					<br>

					<div class="customer_ohMoney_content"
						style="text-align: center; margin: auto;">
						<table class="cash_table" style="table-layout: fixed; margin-left: 18px; margin-top: 35px; height: 90px;">
							<tbody>
								<tr>
									<th>현재 보유 오머니</th>
									<th>충전할 오머니</th>
									<th>충전후 오머니</th>
								</tr>
								<tr>
									<td id="have_OhMoney">0원</td>
									<td id="add_OhMoney">0원</td>
									<td id="addAfter_OhMoney">0원</td>
								</tr>
							</tbody>
						</table>
					</div>
					<br> <a
						style="margin-right: 300px; font-weight: bold; font-size: 0.9em;">충전할
						오머니 선택</a>
					<form>
						<hr style="width: 90%; height: 2px; background: black;">
						<input type="radio" value="10" style="cursor: pointer"
							name="money" onclick="showMoney(10)">10원&nbsp; <input
							type="radio" value="10000" style="cursor: pointer" name="money"
							onclick="showMoney(10000)">10000원&nbsp; <input
							type="radio" value="15000" style="cursor: pointer" name="money"
							onclick="showMoney(15000)">15000원&nbsp;
						<hr style="width: 90%; height: 0.5px; background: black;">
					</form>
					<br>
					<button onclick="startPay();" class="cashbtn">충전하기</button>

				</div>
			</div>
		</div>
	</div>
		<%@ include file="followerMypageAside.jsp"%>
		<script>
			var userId ="<%=loginUser.getMemberId()%>";
		</script>
	<section>
		<article id="cash_article" style="position: absolute; left: 370px;">
			<div class="cash_content"
				style="border: 1px solid black; width: 1000px; height: 825px; border-radius: 9px; box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);">
				<div>
					<p style="margin-left: 10px; font-size: 1.8em; font-weight: bold;">나의
						OH 머니</p>
					<div
						style="background: rgb(240, 240, 240); height: 220px; border-radius: 10px; border-top: 2px solid rgb(223, 223, 223);">
						<table class="follower_cash" style="width: 55%; margin-bottom: 50px; border-right: 1px solid rgb(193, 193, 193); margin-right: 20px; padding: 10px;">
							<tbody>
								<tr>
									<th>사용가능 오머니</th>
								</tr>
								<tr>
									<td id="usableOhMoney"></td>
								</tr>
							</tbody>
						</table>
						<table class="follower_cash" style="width: 35%; margin-bottom: 50px; padding: 10px; margin-top: 20px;">
							<tr>
								<th>환급가능 오머니</th>
								<td id="returnOhMoney">0원</td>
							</tr>
							<tr>
								<th>환급불가 오머니</th>
								<td id="cantreturnOhMoney">0원</td>
							</tr>
						</table>
					</div>
					<button class="cashbtn_main"
						onclick="jQuery('.buy_wrap').fadeIn('slow');">
						<i class="fas fa-hand-holding-usd"></i>오머니 충전하기
					</button>
					<button class="cashbtn_main"
						onclick="jQuery('.return_wrap').fadeIn('slow');">
						<i class="fas fa-undo-alt"></i>&nbsp;오머니 환급신청하기
					</button>
					<button class="cashbtn_main" id="listChangeBtn"
						onclick="changeList();">환급목록 조회</button>
					<script>
                        var cashList = true;
                        var btnText = document.getElementById("listChangeBtn");

                        function changeList(){
                            if(cashList){
                                $("#cash_list_div").css("display","none");
                                $("#return_list_div").css("display","block");

                                btnText.innerText = '사용목록 조회';
                                cashList = false;
                            } else {
                                $("#cash_list_div").css("display","block");
                                $("#return_list_div").css("display","none");

                                btnText.innerText = '환급목록 조회';
                                cashList = true;
                            }
                        }
                    </script>
					<br>
					<br>

					<div id="cash_list_div">
						<table class="cash_list" id="cash_list">
							<thead>
								<tr>
									<th>NO.</th>
									<th>일시</th>
									<th>구분</th>
									<th>내역</th>
									<th>금액</th>
									<th>잔액</th>
								</tr>
							</thead>
							<tbody>
							</tbody>
						</table>
					</div>
					<div id="return_list_div">
						<table class="return_list" id="return_list">
							<thead>
								<tr>
									<th>NO.</th>
									<th>일시</th>
									<th>금액</th>
									<th>영수증파일</th>
									<th>진행상태</th>
								</tr>
							</thead>
							<tbody>
							</tbody>
						</table>
						

						<script>
                        callList();
                        function callList(){

                   	 		$.ajax({
                   	 			url : "/omg/listOhMoney.follower",
                   	 			data : {
                   	 				userId : userId
                   	 			},
                   	 			type : "post",
                   	 			success : function(data) {
                   	 				
                   	 				var $listPos = $("#cash_list tbody");
                                	$("#cash_list > tbody > tr").remove();
                   	 				var listnum = data.length;
                   	 				var listcount = 0;
                   	 				for(var key in data){
                   	 					$listPos.append("<tr>"+
                                        	"<td>"+listnum+"</td>"+
                                        	"<td>"+data[key].ohmoneyDate+"</td>"+
                                        	"<td>"+data[key].ohmoneyType+"</td>"+
                                        	"<td>"+data[key].content+"</td>"+
                                        	"<td>"+data[key].ohmoneyAmount+"</td>"+
                                        	"<td>"+data[key].balance+"</td></tr>");
                   	 					listnum = listnum - 1;
                   	 					listcount = listcount + 1;
                   	 					if(listcount > 8){
                   	 						break;
                   	 					}
                   	 				}	
                   	 			},
                   	 			error : function() {
                   	 				console.log("실패!")
                   	 			}
                    		})
                        }
                        
                        checkRefundList();
                        var managerId;
                        function checkRefundList(){
                        	
                        	$.ajax({
                   	 			url : "/omg/refundList.follower",
                   	 			data : {
                   	 				userId : userId
                   	 			},
                   	 			type : "post",
                   	 			success : function(data) {
                   	 			var $ReturnlistPos = $("#return_list tbody");
                            	$("#return_list > tbody > tr").remove();
                	 				var Relistnum = data.length;
                	 				var Relistcount = 0;
                	 				for(var key in data){
                	 					$ReturnlistPos.append("<tr>"+
                                    	"<td>"+"<a style='display:none;' id=RefundManager"+data[key].refundNum+">"+data[key].managerId +"</a>"+Relistnum+"</td>"+
                                    	"<td>"+data[key].refundDate+"</td>"+
                                    	"<td id=Refundmoney"+data[key].refundNum+">"+data[key].money+"</td>"+
                                    	"<td>"+"<a style='cursor: pointer;' onclick='Download("+data[key].fileCode+")'><i class='fas fa-file'></i></a>"+"</td>"+
                                    	"<td><button id=btn"+data[key].refundNum+" onclick='checkReturn("+data[key].refundNum+");'>"+data[key].refundState+"</button></td></tr>");
                	 					Relistnum = Relistnum - 1;
                	 					Relistcount = Relistcount + 1;
                	 					if(Relistcount > 8){
                	 						break;
                	 					}
                	 				}
                   	 			},
                   	 			error : function() {
                   	 				console.log("실패!")
                   	 			}
                    		})
                        }
                        
                        function Download(val){
                    		location.href = "<%=request.getContextPath()%>/downFile.all?num="+val;                    	
                        }
                        </script>
					</div>
				</div>
			</div>
		</article>
	</section>
	<script>
        var turnTerm = false;

        function showTerm(){
            if(turnTerm == false){
                $('#returnTermTxt').css("display","inline-block");
                $('.return_box').css("height","350px");

                var txt = document.getElementById("termTxt");
                txt.innerText = "약관접기";
                turnTerm = true;
            } else{
                $('#returnTermTxt').css("display","none");
                $('.return_box').css("height","300px");

                var txt = document.getElementById("termTxt");
                txt.innerText = "약관보기";
                turnTerm = false;
            }

        }
        
        var canRefund = false;
        
        function checkRefund(){
        	if(Number(refundBalance) < Number($('#returnOhmoney').val())){
        		$('#warnMsg').css('display','block');
        		canRefund = false;
        	} else {
        		if(Number($('#returnOhmoney').val()) < 5000 ){
            		canRefund = false;
        		} else {
	        		$('#warnMsg').css('display','none');
	        		canRefund = true;
        		}
        	}
            checkIsAbled();
        }
        
        function checkIsAbled(){
        	if(canRefund && $("input:checkbox[name=checkTerm]").is(":checked")){
				$('#submitRefund').css('color','black');
				$('#submitRefund').removeAttr('disabled');
        	} else {
				$('#submitRefund').css('color','lightgray');
				$('#submitRefund').attr('disabled');
        	}
        }
        
        function submitRefund(){
        	var money = $('#returnOhmoney').val();
        	if(money < Number(refundBalance)){
        		 $('#returnOhmoney').val('');
	   	 		$.ajax({
	   	 			url : "/omg/submitReFund.follower",
	   	 			data : {
	   	 				userId : userId,
	   	 				money : money
	   	 			},
	   	 			type : "post",
	   	 			success : function(data) {
	   					alert("환급신청되었습니다.");
	                    checkRefundList();
	   					jQuery('.return_wrap').fadeOut('slow')
	   	 			},
	   	 			error : function() {
	   	 				console.log("실패!")
	   	 			}
	    		})
        	}
        }
    </script>

	<script>
                    	var balance = 0;
                    	var refundBalance = 0;
                    	var nofundBalance = 0;
                    	
                        var money = 0;
                        function removeComma(str){
                            return parseInt(str.replace(/,/g,""));
                        }

                        function showMoney(money){
                            var showAddMoney = document.getElementById("add_OhMoney");
                            var moneyVar  = 0;
                            moneyVar = money;
                            showAddMoney.innerText = moneyVar.toLocaleString() + "원";

                            var showAfterMoney= document.getElementById("addAfter_OhMoney");
                            var showHaveMoney= document.getElementById("have_OhMoney");
                            
                            var afterMoneyVar = 0;
                            afterMoneyVar = removeComma(showHaveMoney.innerText.replace("원","")) + money;
                            showAfterMoney.innerText = afterMoneyVar.toLocaleString() + "원";
                        }


                        function startPay(){
                            var check_count = document.getElementsByName("money").length;
                            for (var i=0; i<check_count; i++) {
                                if (document.getElementsByName("money")[i].checked == true) {
                                    money = document.getElementsByName("money")[i].value;
                                }
                            }

                            if(money == 0){
                                alert("원하시는 오머니 충전 액수를 선택해 주세요");
                            }else{
                                IMP.request_pay({
                                    pg : 'html5_inicis',
                                    pay_method : 'card',
                                    merchant_uid : 'merchant_' + new Date().getTime(),
                                    name : 'OH MONEY (오 머니)',
                                    amount : money,
                                    buyer_email : '<%=loginUser.getEmail()%>',
                                    buyer_name : '<%=loginUser.getName()%>',
                                    buyer_tel :'<%=loginUser.getPhone()%>',
                                    buyer_addr : '<%=loginUser.getAddress()%>',
                                    buyer_postcode : '123-456',
                                    m_redirect_url : ''//결제완료후 보낼 컨트롤러의 메소드명
                                }, function(rsp) {
                                    if ( rsp.success ) {
                                        var msg = '결제가 완료되었습니다.';
                                        msg += '고유ID : ' + rsp.imp_uid;
                                        msg += '상점 거래ID : ' + rsp.merchant_uid;
                                        msg += '결제 금액 : ' + rsp.paid_amount;
                                        msg += '카드 승인번호 : ' + rsp.apply_num;
                                        addMoney(money);
                                        jQuery('.buy_wrap').fadeOut('slow')
                                    } else {
                                        var msg = '결제에 실패하였습니다.';
                                        msg += '에러내용 : ' + rsp.error_msg;
                                    }
                                    alert(msg);
                                });
                            }
                        }
                        
                        function comma(str) {
                            str = String(str);
                            return str.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');
                        }
                        
                        
                        function checkMoney(){
                       	 		$.ajax({
                       	 			url : "/omg/checkOhMoney.follower",
                       	 			data : {
                       	 				userId : userId,
                       	 			},
                       	 			type : "post",
                       	 			success : function(data) {
                       	 				$('#have_OhMoney').text(comma(data.balance) + "원");
                       	 				$('#usableOhMoney').text(comma(data.balance) + "원");
                       	 				$('#returnOhMoney').text(comma(data.refundBal) + "원");
                       	 				$('#cantreturnOhMoney').text(comma(data.nofundBal) + "원");
                       	 				$('#canRefundMoney').text(comma(data.refundBal));
                       	 				balance = data.balance;
                       	 				refundBalance = data.refundBal;
                       	 				nofundBalance = data.nofundBal;
   
                       	 			},
                       	 			error : function() {
                       	 				console.log("실패!")
                       	 			}
                        		})
                        }
                        checkMoney();
                        function addMoney(value){

                     		var addmoney = value;
                     		var content = "카드 결제로 인한 정상 충전";
                     		var means = "카드";
                     		var userBalance = balance;
                     		var userReBal = refundBalance;
                     		var userNoBal = nofundBalance;
                     		
                   	 		$.ajax({
                   	 			url : "/omg/addOhMoney.follower",
                   	 			data : {
                   	 				userId : userId,
                   	 				addmoney : addmoney,
                   	 				content : content,
                   	 				means : means,
                   	 				userBalance : userBalance,
                   	 				userReBal : userReBal,
                   	 				userNoBal : userNoBal
                   	 			},
                   	 			type : "post",
                   	 			success : function(data) {
                   	 			 	checkMoney();
                                    callList();
                   	 			},
                   	 			error : function() {
                   	 				console.log("실패!")
                   	 			}
                    		})
                        }
                       	 		
                       
                    </script>
					<script>

                            function checkReturn(number){
                            	if($("#btn"+number).text()=="확인대기"){
	                                var isOk = confirm("환급을 완료하셨다면 확인해주세요!");
	                                
	                 
	                                var numberVal = number;
	                                
	                                
	                                console.log(numberVal);
	                                if(isOk){
	                                	
	                                	var returnMoney = $("#Refundmoney"+numberVal).text();
	                                	var returnManager = $("#RefundManager"+numberVal).text();
	                                	
	                                	console.log(returnMoney);
	                                	
	                                	$.ajax({
	                           	 			url : "/omg/checkOkReturn.follower",
	                           	 			data : {
	                           	 				numberVal : numberVal
	                           	 			},
	                           	 			type : "post",
	                           	 			success : function(data) {
		                           	 			
	                                    		var content = "사용자 요청에 의한 환급";
	                                     		var userBalance = balance;
	                                     		var userReBal = refundBalance;
	                                     		var userNoBal = nofundBalance;
	                           	 				
		                           	 			$.ajax({
		                               	 			url : "/omg/returnMoney.follower",
		                               	 			data : {
		                               	 				returnMoney : returnMoney,
		                               	 				returnManager : returnManager,
		                               	 				userId : userId,
		                               	 				content : content,
		                               	 				userBalance : userBalance,
		                               	 				userReBal : userReBal,
		                               	 				userNoBal : userNoBal
		                               	 			},
		                               	 			type : "post",
		                               	 			success : function(data) {
		                               	 				checkMoney();
		                               	 			},
		                               	 			error : function() {
		                               	 				console.log("실패!")
		                               	 			}
		                                		})
		                           	 				
		                                            $("#btn"+numberVal).attr('disabled','true');
		                                            $("#btn"+numberVal).text("최종확인");
		                           	 			},
		                           	 			error : function() {
		                           	 				console.log("실패!")
		                           	 			}
	                            		})
	                                	//확인으로 변경하는 ajax 구현
	                                	//해당 ajax에서는 환급가능 오머니 액수를 깎아야 한다.
	                                	//영수증을 받아볼수 있는 기능도 구현해야함      	
	                                }
                            	} else {
                            		console.log("대기중이 아님");
                            	}
                            }                   
                        </script>

	<div
		style="position: absolute; top: 1100px; margin-left: 0px; margin-right: 0px;">
		<%@ include file="../../common/footer.jsp"%>
	</div>

</body>
</html>