<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="/omg/resources/css/fmypageContainer.css">
    <link rel="stylesheet" type="text/css" href="/omg/resources/css/tjob.css">
<title>Insert title here</title>
</head>
<body>
	<header>
		<%@ include file="../../common/trainerNav.jsp"%>
	</header>

	<section style="height: 1500px;">
		<div class="mypage-contents">
			<%@ include file="trainerMypageAside.jsp"%>
			<div class="right-container">
				<div class="info-container">

					<div class="head_article">
						<h3 class="info-header">계정설정</h3>
					</div>

					<div class="info-body">
						<form>
							<div class="info-row">
								<div class="info-form-label">아이디</div>
								<div class="info-form-input">
									<input name="myid" type="text"
										class="id-input input-box" disabled="" value="<%= loginUser.getMemberId()%>">
								</div>
							</div>
							<div class="info-row">
								<div class="info-form-label">비밀번호</div>
								<div class="info-form-input">
									<input name="password" type="password"
										placeholder="영문 대소문자/숫자/특수문자(4~16자)" class="pw-input" value="">
								</div>
							</div>
							<div class="info-row">
								<div class="info-form-label">비밀번호 확인</div>
								<div class="info-form-input">
									<input name="re-pw-input" type="password" class="re-pw-input"
										maxlength="20" value="">
								</div>
							</div>
							<div class="info-row">
								<div class="info-form-label">이름</div>
								<div class="info-form-input">
									<div class="info-form-input-name">
										<input readonly="" name="first-name-input" type="text"
											placeholder="이름없음" class="first-name-input input-box"
											disabled="" value="<%= loginUser.getName() %>">
									</div>
									<p class="err-msg name-input">이름 변경이 필요하신 경우, 고객센터로 문의하여
										주세요.</p>
								</div>
							</div>
							<div class="info-row">
								<div class="info-form-label">이메일</div>
								<div class="info-form-input">
									<input name="email" type="text" placeholder="제목을 입력해주세요"
										class="email-input input-box" maxlength="50"
										value="<%=loginUser.getEmail()%>">
								</div>
							</div>
							<div class="info-row board-category">
								<div class="info-form-label">생년월일</div>
								<div class="info-form-input date">
									<div class="info-form-input-date">
									
										<input readonly="" name="birth_year" type="text"
											class="birth-year-input input-box" disabled="" value="1995"><input
											readonly="" name="birth_month" type="text"
											class="birth-month-input input-box" disabled="" value="02"><input
											readonly="" name="birth_day" type="text"
											class="birth-day-input input-box" disabled="" value="05">
									</div>
								</div>
							</div>
							<div class="info-row">
								<div class="info-form-label">성별</div>
								<div class="info-form-input">
									<label class="radio-label"><input type="radio" name="gender" value="1" checked="">여성</label>
									<label class="radio-label"><input type="radio" name="gender" value="0">남성</label>
								</div>
							</div>
							<div class="info-row board-category">
								<div class="info-form-label">국가번호</div>
								<div class="info-form-input board-form-category">
									<select name="country_code" class="nation-code select-box"><option
											value="82">한국(+82)</option>
										<option value="81">일본(+81)</option>
										<option value="1">미국(+1)</option>
										<option value="65">싱가포르(+65)</option>
										<option value="61">오스트레일리아(+61)</option>
										<option value="44">영국(+44)</option>
										<option value="84">베트남(+84)</option>
										<option value="233">가나(+233)</option>
										<option value="241">가봉(+241)</option>
										<option value="592">가이아나(+592)</option>
										<option value="220">감비아(+220)</option>
										<option value="44">건지(+44)</option>
										<option value="590">과들루프(+590)</option>
										<option value="502">과테말라(+502)</option>
										<option value="1">괌(+1)</option>
										<option value="379">교황청(+379)</option>
										<option value="1">그레나다(+1)</option>
										<option value="30">그리스(+30)</option>
										<option value="299">그린란드(+299)</option>
										<option value="224">기니(+224)</option>
										<option value="245">기니비사우(+245)</option>
										<option value="264">나미비아(+264)</option>
										<option value="674">나우루(+674)</option>
										<option value="234">나이지리아(+234)</option>
										<option value="672">남극 대륙(+672)</option>
										<option value="211">남수단(+211)</option>
										<option value="27">남아프리카 공화국(+27)</option>
										<option value="31">네덜란드(+31)</option>
										<option value="599">네덜란드령 앤틸리스(+599)</option>
										<option value="977">네팔(+977)</option>
										<option value="47">노르웨이(+47)</option>
										<option value="64">뉴질랜드(+64)</option>
										<option value="687">뉴칼레도니아(+687)</option>
										<option value="683">니우에(+683)</option>
										<option value="227">니제르(+227)</option>
										<option value="505">니카라과(+505)</option>
										<option value="886">대만(+886)</option>
										<option value="45">덴마크(+45)</option>
										<option value="1">도미니카(+1)</option>
										<option value="1">도미니카 공화국(+1)</option>
										<option value="49">독일(+49)</option>
										<option value="670">동티모르(+670)</option>
										<option value="856">라오스(+856)</option>
										<option value="231">라이베리아(+231)</option>
										<option value="371">라트비아(+371)</option>
										<option value="7">러시아(+7)</option>
										<option value="961">레바논(+961)</option>
										<option value="266">레소토(+266)</option>
										<option value="40">루마니아(+40)</option>
										<option value="352">룩셈부르크(+352)</option>
										<option value="250">르완다(+250)</option>
										<option value="218">리비아(+218)</option>
										<option value="262">리유니언(+262)</option>
										<option value="370">리투아니아(+370)</option>
										<option value="423">리히텐슈타인(+423)</option>
										<option value="261">마다가스카르(+261)</option>
										<option value="596">마르티니크(+596)</option>
										<option value="692">마셜 제도(+692)</option>
										<option value="262">마요트(+262)</option>
										<option value="853">마카오 특별 행정구(+853)</option>
										<option value="265">말라위(+265)</option>
										<option value="60">말레이시아(+60)</option>
										<option value="223">말리(+223)</option>
										<option value="44">맨 섬(+44)</option>
										<option value="52">멕시코(+52)</option>
										<option value="377">모나코(+377)</option>
										<option value="212">모로코(+212)</option>
										<option value="230">모리셔스(+230)</option>
										<option value="222">모리타니(+222)</option>
										<option value="258">모잠비크(+258)</option>
										<option value="382">몬테네그로(+382)</option>
										<option value="1">몬트세라트(+1)</option>
										<option value="373">몰도바(+373)</option>
										<option value="960">몰디브(+960)</option>
										<option value="356">몰타(+356)</option>
										<option value="976">몽골(+976)</option>
										<option value="95">미얀마(+95)</option>
										<option value="691">미크로네시아(+691)</option>
										<option value="678">바누아투(+678)</option>
										<option value="973">바레인(+973)</option>
										<option value="1">바베이도스(+1)</option>
										<option value="1">바하마(+1)</option>
										<option value="880">방글라데시(+880)</option>
										<option value="1">버뮤다(+1)</option>
										<option value="229">베냉(+229)</option>
										<option value="58">베네수엘라(+58)</option>
										<option value="32">벨기에(+32)</option>
										<option value="375">벨로루시(+375)</option>
										<option value="501">벨리즈(+501)</option>
										<option value="387">보스니아 헤르체고비나(+387)</option>
										<option value="267">보츠와나(+267)</option>
										<option value="591">볼리비아(+591)</option>
										<option value="257">부룬디(+257)</option>
										<option value="226">부르키나파소(+226)</option>
										<option value="47">부베이 섬(+47)</option>
										<option value="975">부탄(+975)</option>
										<option value="1">북마리아나 제도(+1)</option>
										<option value="850">북한(+850)</option>
										<option value="359">불가리아(+359)</option>
										<option value="55">브라질(+55)</option>
										<option value="673">브루나이(+673)</option>
										<option value="685">사모아(+685)</option>
										<option value="966">사우디아라비아(+966)</option>
										<option value="378">산마리노(+378)</option>
										<option value="239">상투메 프린시페(+239)</option>
										<option value="508">생 피에르 앤드 미클롱(+508)</option>
										<option value="221">세네갈(+221)</option>
										<option value="381">세르비아(+381)</option>
										<option value="248">세이셸(+248)</option>
										<option value="1">세인트 루시아(+1)</option>
										<option value="1">세인트 빈센트 그레나딘(+1)</option>
										<option value="1">세인트 크리스토퍼 네비스(+1)</option>
										<option value="290">세인트 헬레나, 어센션 및 트리스탄 다 쿠나(+290)</option>
										<option value="252">소말리아(+252)</option>
										<option value="677">솔로몬 제도(+677)</option>
										<option value="249">수단(+249)</option>
										<option value="597">수리남(+597)</option>
										<option value="94">스리랑카(+94)</option>
										<option value="268">스와질란드(+268)</option>
										<option value="46">스웨덴(+46)</option>
										<option value="41">스위스(+41)</option>
										<option value="34">스페인(+34)</option>
										<option value="421">슬로바키아(+421)</option>
										<option value="386">슬로베니아(+386)</option>
										<option value="963">시리아(+963)</option>
										<option value="232">시에라리온(+232)</option>
										<option value="971">아랍에미리트(+971)</option>
										<option value="297">아루바(+297)</option>
										<option value="374">아르메니아(+374)</option>
										<option value="54">아르헨티나(+54)</option>
										<option value="354">아이슬란드(+354)</option>
										<option value="509">아이티(+509)</option>
										<option value="353">아일랜드(+353)</option>
										<option value="994">아제르바이잔(+994)</option>
										<option value="93">아프가니스탄(+93)</option>
										<option value="376">안도라(+376)</option>
										<option value="355">알바니아(+355)</option>
										<option value="213">알제리아(+213)</option>
										<option value="244">앙골라(+244)</option>
										<option value="1">앤티가 바부다(+1)</option>
										<option value="47">얀마웬(+47)</option>
										<option value="247">어센션 섬(+247)</option>
										<option value="291">에리트리아(+291)</option>
										<option value="372">에스토니아(+372)</option>
										<option value="593">에콰도르(+593)</option>
										<option value="251">에티오피아(+251)</option>
										<option value="503">엘살바도르(+503)</option>
										<option value="1">영국령 버진 아일랜드(+1)</option>
										<option value="967">예멘(+967)</option>
										<option value="968">오만(+968)</option>
										<option value="43">오스트리아(+43)</option>
										<option value="962">요르단(+962)</option>
										<option value="256">우간다(+256)</option>
										<option value="598">우루과이(+598)</option>
										<option value="998">우즈베키스탄(+998)</option>
										<option value="380">우크라이나(+380)</option>
										<option value="681">월리스 푸투나(+681)</option>
										<option value="964">이라크(+964)</option>
										<option value="98">이란(+98)</option>
										<option value="972">이스라엘(+972)</option>
										<option value="20">이집트(+20)</option>
										<option value="39">이탈리아(+39)</option>
										<option value="91">인도(+91)</option>
										<option value="62">인도네시아(+62)</option>
										<option value="1">자메이카(+1)</option>
										<option value="260">잠비아(+260)</option>
										<option value="44">저지(+44)</option>
										<option value="240">적도 기니(+240)</option>
										<option value="995">조지아(+995)</option>
										<option value="86">중국(+86)</option>
										<option value="236">중앙 아프리카 공화국(+236)</option>
										<option value="253">지부티(+253)</option>
										<option value="350">지브롤터(+350)</option>
										<option value="263">짐바브웨(+263)</option>
										<option value="235">차드(+235)</option>
										<option value="420">체코 공화국(+420)</option>
										<option value="56">칠레(+56)</option>
										<option value="237">카메룬(+237)</option>
										<option value="238">카보베르데(+238)</option>
										<option value="7">카자흐스탄(+7)</option>
										<option value="974">카타르(+974)</option>
										<option value="855">캄보디아(+855)</option>
										<option value="1">캐나다(+1)</option>
										<option value="254">케냐(+254)</option>
										<option value="1">케이맨 제도(+1)</option>
										<option value="269">코모로(+269)</option>
										<option value="506">코스타리카(+506)</option>
										<option value="61">코코스 제도(+61)</option>
										<option value="225">코트디부아르(+225)</option>
										<option value="57">콜롬비아(+57)</option>
										<option value="242">콩고 공화국(+242)</option>
										<option value="243">콩고 민주 공화국(+243)</option>
										<option value="53">쿠바(+53)</option>
										<option value="965">쿠웨이트(+965)</option>
										<option value="682">쿡 제도(+682)</option>
										<option value="385">크로아티아(+385)</option>
										<option value="61">크리스마스 섬(+61)</option>
										<option value="996">키르기스스탄(+996)</option>
										<option value="686">키리바시(+686)</option>
										<option value="357">키프로스(+357)</option>
										<option value="992">타지키스탄(+992)</option>
										<option value="255">탄자니아(+255)</option>
										<option value="66">태국(+66)</option>
										<option value="1">터크스 케이커스 제도(+1)</option>
										<option value="90">터키(+90)</option>
										<option value="228">토고(+228)</option>
										<option value="690">토켈라우(+690)</option>
										<option value="676">통가(+676)</option>
										<option value="993">투르크메니스탄(+993)</option>
										<option value="688">투발루(+688)</option>
										<option value="216">튀니지(+216)</option>
										<option value="1">트리니다드 토바고(+1)</option>
										<option value="290">트리스탄다쿠냐(+290)</option>
										<option value="507">파나마(+507)</option>
										<option value="595">파라과이(+595)</option>
										<option value="92">파키스탄(+92)</option>
										<option value="675">파푸아뉴기니(+675)</option>
										<option value="680">팔라우(+680)</option>
										<option value="972">팔레스타인 자치 정부(+972)</option>
										<option value="298">페로 제도(+298)</option>
										<option value="51">페루(+51)</option>
										<option value="351">포르투갈(+351)</option>
										<option value="500">포클랜드 제도(+500)</option>
										<option value="48">폴란드(+48)</option>
										<option value="33">프랑스(+33)</option>
										<option value="594">프랑스령 기아나(+594)</option>
										<option value="689">프랑스령 폴리네시아(+689)</option>
										<option value="679">피지(+679)</option>
										<option value="358">핀란드(+358)</option>
										<option value="63">필리핀(+63)</option>
										<option value="36">헝가리(+36)</option>
										<option value="504">혼두라스(+504)</option>
										<option value="852">홍콩 특별 행정구(+852)</option></select>
								</div>
							</div>
							<div class="info-row">
								<div class="info-form-label">휴대폰번호</div>
								<div class="info-form-input">
									<input name="phone" type="text" pattern="[0-9]*"
										placeholder="- 없이 입력해 주세요" class="mobile-input input-box"
										maxlength="20" value="01099748184">
								</div>
							</div>
						</form>
					</div>
				</div>
				<div class="term-container">
					<div class="term-wrapper">
						<input readonly="" type="radio" name="isAgreeAllmarketing"
							class="term-input"><label class="term-label">추천상품,
							이벤트 및 마케팅 정보 수신에 동의(선택)</label>
					</div>
					<div class="term-wrapper sub-term">
						<input readonly="" type="radio" name="email_acceptance"
							class="term-input"><label class="term-label email">이메일</label><input
							readonly="" type="radio" name="sms_acceptance" class="term-input"><label
							class="term-label">SMS</label>
					</div>
				</div>
				<br>
					
				<!-- 버튼영역 -->
				<div>
					<button style="background-color:orangered; color: white; font-weight:bold;  width: 50px; height: 30px">저장</button>
					<button style="background-color:gray; color: white; font-weight:bold;  width: 50px; height: 30px">취소</button>
				</div>
			</div>
		</div>
	</section>

	<footer id="foot">
		<%@ include file="../../common/footer.jsp"%>
	</footer>

</body>
</html>