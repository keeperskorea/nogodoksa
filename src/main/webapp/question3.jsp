<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1" >  <!-- 반응형 웹에서 사용하는 meta tag -->
<link rel="stylesheet" href="css/style_sub.css">
<link rel="stylesheet" href="css/style_sub2.css">
<!-- <link rel="stylesheet" href="css/style.css"> -->
<!-- <link rel="stylesheet" href="css/style_log.css"> -->
<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/nogodoksa_footer.css">
<link rel="stylesheet" href="css/nogodoksa_header.css">
<title>고독사예방국민운동</title>
</head>
<style>

</style>
<body>
    <% 
        String userID = null;
    	if (session.getAttribute("userID") != null){
            userID = (String) session.getAttribute("userID");
    	}
	%>
	<header><jsp:include page="nogodoksaHeader.jsp"></jsp:include></header>
	 <div class="wrap">
        <!-- top메뉴 -->
        <div class="main_top">
            
            <!-- header메뉴 -->

            <!-- banner -->
            <div class="banner">
                <h1 class="banner_tit">문제제기</h1>
                <div class="sub_menu_w">
                    <a href="/NoGodoksa/main.jsp"><div class="home_btn">
                        <img src="/NoGodoksa/images/icon-home@3x.png">
                    </div></a>
                    <div class="sub_tit"><a href="/NoGodoksa/question.jsp">고독사의 경고</a></div>
                    <ul class="s_menu">
                        <li><a href="/NoGodoksa/question.jsp">고독사의 경고</a></li>
                        <li><a href="/NoGodoksa/question2.jsp">고독사발생일지(보도)</a></li>
                        <li class="active"><a href="/NoGodoksa/question3.jsp">고독사발생ING</a></li>                        
                        <li><a href="/NoGodoksa/question4.jsp">국내 언론 첫 소개</a></li>
                    </ul>
                    <a href="#"><div class="down_btn">
                        <img src="../../images/icon_down@3x.png">
                    </div></a>
                </div>
            </div>                      
        </div>
        <!-- container메뉴 -->
        <div class="container">
            <div class="con_text_w">
                <p class="con_tit">고독사발생ING</p>                
            </div>
            <div class="tab_content">
                <!--
                <input type="radio" name="tabmenu" id="tab01_1" class="tab_tit2" checked>
                <label class="tab_tit_t" for="tab01_1">2022년</label>

                <input type="radio" name="tabmenu" id="tab02_1" class="tab_tit2">
                <label class="tab_tit_t" for="tab02_1">2019 ~ 2021년</label>
                -->
                <input type="radio" name="tabmenu" id="tab03_1" class="tab_tit2" checked>
                <label class="tab_tit_t" for="tab03_1">고독사발생현장 특수청소업체 블로그</label>

                <input type="radio" name="tabmenu" id="tab04_1" class="tab_tit2">
                <label class="tab_tit_t" for="tab04_1">컨텐츠 주제가 된 고독사 발생현장</label>
                
                <!-- 탭1 시작 
                <div class="conbox box_list01">
                    <div class="list_box"><a href="https://blog.naver.com/eoghqkr22/222612540178" target="_brank">
                        <span>2022년 01월 04일 <b>[특수청소119]</b></span><br>
                        특수청소(대구) 고독사(13평) 3단계(유품정리-청소-방역소독) 원스톱으로 해결
                    </a></div> 
                </div>
                -->

                <!-- 탭2 시작 
                <div class="conbox box_list02">
                    <div class="con_wrap2">
                        <p class="con_s_tit2">2019년부터 2021년까지의 고독사 현장 기록</p>
                        <p class="con_text_01">
                            <b>출처 : 특수청소업체 블로그의 내용 일부 참고</b><br>
                            참고 업체 : 하늘119 / 제이콥 / 비우다 / the명복 / 장례후 / 다비워 / 특수청소119 / 에버그린<br>
                        </p>
                    </div>
                    <div class="swiper mySwiper">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide"><img src="../../images/sub1/sub1_3/0001.jpg"></div>
                            <div class="swiper-slide"><img src="../../images/sub1/sub1_3/0002.jpg"></div>                            
                            <div class="swiper-slide"><img src="../../images/sub1/sub1_3/0003.jpg"></div>                            
                            <div class="swiper-slide"><img src="../../images/sub1/sub1_3/0004.jpg"></div>
                            <div class="swiper-slide"><img src="../../images/sub1/sub1_3/0005.jpg"></div>
                            <div class="swiper-slide"><img src="../../images/sub1/sub1_3/0006.jpg"></div>
                            <div class="swiper-slide"><img src="../../images/sub1/sub1_3/0007.jpg"></div>
                            <div class="swiper-slide"><img src="../../images/sub1/sub1_3/0008.jpg"></div>
                            <div class="swiper-slide"><img src="../../images/sub1/sub1_3/0009.jpg"></div>
                            <div class="swiper-slide"><img src="../../images/sub1/sub1_3/0010.jpg"></div>
                            <div class="swiper-slide"><img src="../../images/sub1/sub1_3/0011.jpg"></div>
                            <div class="swiper-slide"><img src="../../images/sub1/sub1_3/0012.jpg"></div>
                            <div class="swiper-slide"><img src="../../images/sub1/sub1_3/0013.jpg"></div>
                            <div class="swiper-slide"><img src="../../images/sub1/sub1_3/0014.jpg"></div>
                            <div class="swiper-slide"><img src="../../images/sub1/sub1_3/0015.jpg"></div>
                            <div class="swiper-slide"><img src="../../images/sub1/sub1_3/0016.jpg"></div>
                            <div class="swiper-slide"><img src="../../images/sub1/sub1_3/0017.jpg"></div>
                            <div class="swiper-slide"><img src="../../images/sub1/sub1_3/0018.jpg"></div>
                            <div class="swiper-slide"><img src="../../images/sub1/sub1_3/0019.jpg"></div>
                            <div class="swiper-slide"><img src="../../images/sub1/sub1_3/0020.jpg"></div>
                            <div class="swiper-slide"><img src="../../images/sub1/sub1_3/0021.jpg"></div>
                            <div class="swiper-slide"><img src="../../images/sub1/sub1_3/0022.jpg"></div>
                            <div class="swiper-slide"><img src="../../images/sub1/sub1_3/0023.jpg"></div>
                            <div class="swiper-slide"><img src="../../images/sub1/sub1_3/0024.jpg"></div>
                            <div class="swiper-slide"><img src="../../images/sub1/sub1_3/0025.jpg"></div>
                            <div class="swiper-slide"><img src="../../images/sub1/sub1_3/0026.jpg"></div>
                            <div class="swiper-slide"><img src="../../images/sub1/sub1_3/0027.jpg"></div>
                            <div class="swiper-slide"><img src="../../images/sub1/sub1_3/0028.jpg"></div>
                            <div class="swiper-slide"><img src="../../images/sub1/sub1_3/0029.jpg"></div>
                            <div class="swiper-slide"><img src="../../images/sub1/sub1_3/0030.jpg"></div>
                            <div class="swiper-slide"><img src="../../images/sub1/sub1_3/0031.jpg"></div>
                            <div class="swiper-slide"><img src="../../images/sub1/sub1_3/0032.jpg"></div>
                            <div class="swiper-slide"><img src="../../images/sub1/sub1_3/0033.jpg"></div>
                            <div class="swiper-slide"><img src="../../images/sub1/sub1_3/0034.jpg"></div>
                            <div class="swiper-slide"><img src="../../images/sub1/sub1_3/0035.jpg"></div>
                            <div class="swiper-slide"><img src="../../images/sub1/sub1_3/0036.jpg"></div>
                            <div class="swiper-slide"><img src="../../images/sub1/sub1_3/0037.jpg"></div>
                            <div class="swiper-slide"><img src="../../images/sub1/sub1_3/0038.jpg"></div>
                            <div class="swiper-slide"><img src="../../images/sub1/sub1_3/0039.jpg"></div>
                            <div class="swiper-slide"><img src="../../images/sub1/sub1_3/0040.jpg"></div>
                            <div class="swiper-slide"><img src="../../images/sub1/sub1_3/0041.jpg"></div>
                            <div class="swiper-slide"><img src="../../images/sub1/sub1_3/0042.jpg"></div>
                            <div class="swiper-slide"><img src="../../images/sub1/sub1_3/0043.jpg"></div>
                            <div class="swiper-slide"><img src="../../images/sub1/sub1_3/0044.jpg"></div>
                            <div class="swiper-slide"><img src="../../images/sub1/sub1_3/0045.jpg"></div>
                            <div class="swiper-slide"><img src="../../images/sub1/sub1_3/0046.jpg"></div>
                            <div class="swiper-slide"><img src="../../images/sub1/sub1_3/0047.jpg"></div>
                            <div class="swiper-slide"><img src="../../images/sub1/sub1_3/0048.jpg"></div>
                            <div class="swiper-slide"><img src="../../images/sub1/sub1_3/0049.jpg"></div>
                            <div class="swiper-slide"><img src="../../images/sub1/sub1_3/0050.jpg"></div>
                            <div class="swiper-slide"><img src="../../images/sub1/sub1_3/0051.jpg"></div>
                            <div class="swiper-slide"><img src="../../images/sub1/sub1_3/0052.jpg"></div>
                            <div class="swiper-slide"><img src="../../images/sub1/sub1_3/0053.jpg"></div>
                            <div class="swiper-slide"><img src="../../images/sub1/sub1_3/0054.jpg"></div>
                            <div class="swiper-slide"><img src="../../images/sub1/sub1_3/0055.jpg"></div>
                            <div class="swiper-slide"><img src="../../images/sub1/sub1_3/0056.jpg"></div>
                            <div class="swiper-slide"><img src="../../images/sub1/sub1_3/0057.jpg"></div>
                            <div class="swiper-slide"><img src="../../images/sub1/sub1_3/0058.jpg"></div>
                            <div class="swiper-slide"><img src="../../images/sub1/sub1_3/0059.jpg"></div>
                            <div class="swiper-slide"><img src="../../images/sub1/sub1_3/0060.jpg"></div>
                            <div class="swiper-slide"><img src="../../images/sub1/sub1_3/0061.jpg"></div>
                            <div class="swiper-slide"><img src="../../images/sub1/sub1_3/0062.jpg"></div>
                            <div class="swiper-slide"><img src="../../images/sub1/sub1_3/0063.jpg"></div>
                            <div class="swiper-slide"><img src="../../images/sub1/sub1_3/0064.jpg"></div>
                            <div class="swiper-slide"><img src="../../images/sub1/sub1_3/0065.jpg"></div>
                            <div class="swiper-slide"><img src="../../images/sub1/sub1_3/0066.jpg"></div>
                            <div class="swiper-slide"><img src="../../images/sub1/sub1_3/0067.jpg"></div>
                            <div class="swiper-slide"><img src="../../images/sub1/sub1_3/0068.jpg"></div>
                            <div class="swiper-slide"><img src="../../images/sub1/sub1_3/0069.jpg"></div>
                            <div class="swiper-slide"><img src="../../images/sub1/sub1_3/0070.jpg"></div>
                            <div class="swiper-slide"><img src="../../images/sub1/sub1_3/0071.jpg"></div>
                            <div class="swiper-slide"><img src="../../images/sub1/sub1_3/0072.jpg"></div>
                            <div class="swiper-slide"><img src="../../images/sub1/sub1_3/0073.jpg"></div>
                            <div class="swiper-slide"><img src="../../images/sub1/sub1_3/0074.jpg"></div>
                            <div class="swiper-slide"><img src="../../images/sub1/sub1_3/0075.jpg"></div>
                            <div class="swiper-slide"><img src="../../images/sub1/sub1_3/0076.jpg"></div>
                            <div class="swiper-slide"><img src="../../images/sub1/sub1_3/0077.jpg"></div>
                            <div class="swiper-slide"><img src="../../images/sub1/sub1_3/0078.jpg"></div>
                            <div class="swiper-slide"><img src="../../images/sub1/sub1_3/0079.jpg"></div>
                            <div class="swiper-slide"><img src="../../images/sub1/sub1_3/0080.jpg"></div>
                            <div class="swiper-slide"><img src="../../images/sub1/sub1_3/0081.jpg"></div>
                            <div class="swiper-slide"><img src="../../images/sub1/sub1_3/0082.jpg"></div>
                            <div class="swiper-slide"><img src="../../images/sub1/sub1_3/0083.jpg"></div>
                            <div class="swiper-slide"><img src="../../images/sub1/sub1_3/0084.jpg"></div>
                            <div class="swiper-slide"><img src="../../images/sub1/sub1_3/0085.jpg"></div>
                            <div class="swiper-slide"><img src="../../images/sub1/sub1_3/0086.jpg"></div>
                            <div class="swiper-slide"><img src="../../images/sub1/sub1_3/0087.jpg"></div>
                        </div>
                        <div class="swiper-button-next"></div>
                        <div class="swiper-button-prev"></div>
                    </div>
                </div>
                -->

                <!--슬라이드 JS
                <script>
                    var swiper = new Swiper(".mySwiper", {
                      navigation: {
                        nextEl: ".swiper-button-next",
                        prevEl: ".swiper-button-prev",
                      },
                    });
                </script>
                -->


                <!-- 탭3 시작 -->
                <div class="conbox box_list03">
                    <div class="box_list"><a href="https://blog.naver.com/hnclean119" target="_blank">
                        <img class="box_list_img" src="/NoGodoksa/images/sub1/logo_01@3x.png">
                        <div class="box_list_text">
                            <h2>하늘119특수청소<br>
                                </h2>
                            <p>
                                24시(연중무휴)상담  010-8655-4424   청소업  소독업 인허가업체 자살특수청소  고독사특수청소 강력사건현장  쓰레기집청소 <br>blog.naver.com/hnclean119
                            </p>
                        </div>
                    </a></div>
                    <div class="box_list"><a href="https://blog.naver.com/jcob119" target="_blank">
                        <img class="box_list_img" src="/NoGodoksa/images/sub1/logo_02@3x.png">
                        <div class="box_list_text">
                            <h2>유품정리/특수청소 제이콥 jcob119<br>
                                 </h2>
                            <p>
                               Since 2009. 아무도 하지 않는 일. 하지만 반드시 해야만 하는 일을 합니다. 보이는 곳보다 보이지 않는 곳이 더 중요합니다. <br>blog.naver.com/jcob119
                            </p>
                        </div>
                    </a></div>
                    <div class="box_list"><a href="https://blog.naver.com/ememrdl00" target="_blank">
                        <img class="box_list_img" src="/NoGodoksa/images/sub1/logo_04@3x.png">
                        <div class="box_list_text">
                            <h2>특수청소전문 비우다<br>
                                </h2>
                            <p>
                                유품정리 및 고독사,특수청소 전문  삼가 고인의 명복을 빕니다.☎.010-6234-1131 <br>blog.naver.com/ememrdl00
                            </p>
                        </div>
                    </a></div>
                    <div class="box_list"><a href="https://blog.naver.com/zkdltps" target="_blank">
                        <img class="box_list_img" src="/NoGodoksa/images/sub1/logo_03@3x.png">
                        <div class="box_list_text">
                            <h2>The명복 특수청소(애드플립)<br>
                                 </h2>
                            <p>
                                삼가 고인의 명복을 빕니다. 유품정리, 고독사, 자살, 사건현장 특수청소 전문 010-6465-0175 <br>blog.naver.com/zkdltps
                            </p>
                        </div>
                    </a></div>
                    <div class="box_list"><a href="https://blog.naver.com/kein1974" target="_blank">
                        <img class="box_list_img" src="/NoGodoksa/images/sub1/logo_05@3x.png">
                        <div class="box_list_text">
                            <h2>오엔on 유품정리 특수청소 고독사청소<br>
                                </h2>
                            <p>
                                문의:010-2220-9329 / 유품정리 / 특수청소 / 고독사청소 <br>blog.naver.com/kein1974
                            </p>
                        </div>
                    </a></div>
                    <div class="box_list"><a href="https://blog.naver.com/hanwool_1" target="_blank">
                        <img class="box_list_img" src="/NoGodoksa/images/sub1/logo_06@3x.png">
                        <div class="box_list_text">
                            <h2>다비워 특수청소<br>
                                 </h2>
                            <p>
                                고독사, 자살, 범죄현장, 각종현장 깔끔히 정리합니다.  특수청소, 유품정리, 빈집정리 전문기업 010-4331-5358  <br>blog.naver.com/hanwool_1
                            </p>
                        </div>
                    </a></div>
                    <div class="box_list"><a href="https://blog.naver.com/eoghqkr22" target="_blank">
                        <img class="box_list_img" src="/NoGodoksa/images/sub1/logo_07@3x.png">
                        <div class="box_list_text">
                            <h2>특수청소119<br>
                                 </h2>
                            <p>
                                부산 대구 경남 고독사특수청 동물사체처리업 010-4249-0548 <br>blog.naver.com/eoghqkr22
                            </p>
                        </div>
                    </a></div>
                    <div class="box_list"><a href="https://blog.naver.com/ever24green" target="_blank">
                        <img class="box_list_img" src="/NoGodoksa/images/sub1/logo_08@3x.png">
                        <div class="box_list_text">
                            <h2>특수청소에버그린<br>
                                </h2>
                            <p>
                                에버그린 1668-2412, 010-8499-0024 / 특수청소, 고독사, 자살청소, 유품정리, 유품소각, 쓰레기집, 반려동물청소 24시간 작업가능 <br>blog.naver.com/saebamusic
                            </p>
                        </div>
                    </a></div>
                    <div class="box_list"><a href="https://blog.naver.com/marins5212/220551745229" target="_blank">
                        <img class="box_list_img" src="/NoGodoksa/images/sub1/logo_09@3x.png">
                        <div class="box_list_text">
                            <h2>바이오해저드 김새별<br>
                                </h2>
                            <p>
                                고독사청소, 유품정리, 자살, 살인사건, 혈흔제거 및 특수청소<br>blog.naver.com/marins5212
                            </p>
                        </div>
                    </a></div>
                    <div class="box_list"><a href="https://blog.naver.com/iwaaki" target="_blank">
                        <img class="box_list_img" src="/NoGodoksa/images/sub1/logo_10@3x.png">
                        <div class="box_list_text">
                            <h2>스위퍼스<br>
                                </h2>
                            <p>
                                고시원 고독사현장 유품정리 특수청소, 시체냄새제거<br>https://blog.naver.com/iwaaki
                            </p>
                        </div>
                    </a></div>
                </div>

                <!-- 탭4 시작 -->
                <div class="conbox box_list04">                    
                    <div class="box02"><a href="https://youtu.be/6KRYpVQfdHE" target="_blank">
                        <img src="/NoGodoksa/images/sub1/img_17@3x.png">
                        <p><span>트라우마 특수청소부 (특수청소 전문채널)</span><br>
                            [특수청소 전문채널] 특수청소현장 혈흔제거 작업</p>
                    </a></div>
                    <div class="box02"><a href="https://www.youtube.com/watch?v=NkQob8CMaDw&t=18s" target="_blank">
                        <img src="/NoGodoksa/images/sub1/img_11@3x.png">
                        <p><span>바이오해저드김새별</span><br>
                            [고독사] 뒤늦은 후회와 죄책감</p>
                    </a></div>
                    <div class="box02"><a href="https://www.youtube.com/watch?v=vn_hgvYiynw" target="_blank">
                        <img src="/NoGodoksa/images/sub1/img_12@3x.png">
                        <p><span>청소오빠(특수청소 전문채널)</span><br>
                            이 영상을 본 당신은 패닉에 빠질지도 모른다!</p>
                    </a></div>
                    <div class="box02"><a href="https://youtu.be/MImD8O2DdyQ" target="_blank">
                        <img src="/NoGodoksa/images/sub1/img_13@3x.png">
                        <p><span>형제일꾼</span><br>
                            동생을 늦게 발견한 형님의 울분. 고독사 유품정리</p>
                    </a></div>
                    <div class="box02"><a href="https://youtu.be/P_d-Q6BtMEM" target="_blank">
                        <img src="/NoGodoksa/images/sub1/img_14@3x.png">
                        <p><span>천국양행</span><br>
                            폭력 가장의 쓸쓸한 최후 - 혈흔 가득한 고독사</p>
                    </a></div>
                    <div class="box02"><a href="https://youtu.be/jBxaPoVSPMo" target="_blank">
                        <img src="/NoGodoksa/images/sub1/img_15@3x.png">
                        <p><span>소울메이트 soulmate (특수청소 전문)</span><br>
                            고독사 현장 청소, 마지막 인사를 위한 공간 정리</p>
                    </a></div>
                    <div class="box02"><a href="https://youtu.be/6F-EJNT1gfg" target="_blank">
                        <img src="/NoGodoksa/images/sub1/img_16@3x.png">
                        <p><span>남기자의 체헐리즘</span><br>
                            '무브투헤븐'에는 없었던 고독사 현장의 진짜 모습</p>
                    </a></div>
                    <div class="box02"><a href="https://youtu.be/23muup_mMPQ" target="_blank">
                        <img src="/NoGodoksa/images/sub1/img_18@3x.png">
                        <p><span>EBS다큐시선</span><br>
                            사망번호 5525번 어떤 이의 죽음 편</p>
                    </a></div>
                    <div class="box02"><a href="https://youtu.be/OdHf9LZKgJk" target="_blank">
                        <img src="/NoGodoksa/images/sub1/img_19@3x.png">
                        <p><span>EBS다큐프라임 100세쇼크</span><br>
                            2부 장수의 역습, 벼랑 끝에 선 노인들 편</p>
                    </a></div>
                    <div class="box02"><a href="https://news.kbs.co.kr/news/view.do?ncd=3520861" target="_blank">
                        <img src="/NoGodoksa/images/sub1/img_20@3x.png">
                        <p><span>KBS 취재파일 K</span><br>
                            나이 경계 없는 비극, 고독사편</p>
                    </a></div>
                    <div class="box02"><a href="http://www.nibp.kr/xe/info4_9/16511" target="_blank">
                        <img src="/NoGodoksa/images/sub1/img_21@3x.png">
                        <p><span>KBS 취재파일 4321</span><br>
                            571회 고독사 혼자 맞는 죽음편</p>
                    </a></div>
                    <div class="box02"><a href="https://www.youtube.com/watch?v=2CzxuaJIEpM" target="_blank">
                        <img src="/NoGodoksa/images/sub1/img_22@3x.png">
                        <p><span>부산 MBC 특집 다큐멘터리</span><br>
                            무연고 사회 1,2편</p>
                    </a></div>
                </div>
            </div>
        </div>
	
	<script>
            $(function () {
                includeLayout();
            });
    </script>
	

	</div>
	<footer><jsp:include page="nogodoksaFooter.jsp"></jsp:include></footer>


	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
    <script src="js/bootstrap.js"></script>
</body>
</html>