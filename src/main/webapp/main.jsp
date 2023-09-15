<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1" >  <!-- 반응형 웹에서 사용하는 meta tag -->
<link rel="stylesheet" href="css/style_sub.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/nogodoksa_footer.css">
<link rel="stylesheet" href="css/nogodoksa_header.css">
<title>고독사예방국민운동</title>
</head>
<style>
	.test1{
		margin : 1rem;
		padding : 1rem;
		text-align: center;
	}
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


            <div class="slider">
                <div class="slides"> 
                    <!-- radio button -->
                    <input type="radio" name="radio-btn" id="radio1" checked>
                    <input type="radio" name="radio-btn" id="radio2">
                    <input type="radio" name="radio-btn" id="radio3">
                    
                    <div class="slide first" id="slide_bg03">
                        <div class="slide_text_w">                                            
                            <div class="sub_point" id="sub_point03"></div>
                            <div class="sub_text">
                                <h2>고독사 인식개선교육</h2>
                                향후 쓰나미처럼 들이닥칠 고독사의 위험을 알리기 위해<br>
                                지역에 맞는 고독사예방 프로그램과 교육이 필요합니다.
                            </div>  
                            <div class="banner_con_btn" id="banner_con_btn03"><a href="https://movetoheaven.com/bbs/board.php?bo_table=no_godok" target="_brank">자세히 보기 +</a></div>
                        </div>  
                    </div>
                    <div class="slide first" id="slide_bg01">
                        <div class="slide_text_w"> 
                            <div class="sub_point"></div>
                            <div class="sub_text">
                                <h2>고독사예방 담당자교육</h2>
                                지역의 실정에 맞는 고독사예방 전문가가 필요합니다.
                                분산된 인적·물적 자원을 관리해야 예방할 수 있습니다.<br>
                            </div>
                            <div class="banner_con_btn" id="banner_con_btn01"><a href="https://movetoheaven.com/bbs/board.php?bo_table=no_godok&wr_id=122" target="_brank">자세히 보기 +</a></div>  
                        </div>  
                    </div>
                    <div class="slide first" id="slide_bg02">
                        <div class="slide_text_w">
                            <div class="sub_point" id="sub_point02"></div>
                            <div class="sub_text">
                                <h2>고독사예방 세미나</h2>
                                고독사 위기에 노출된 취약계층의 부족한 부분을 파악하고<br>
                                안부 확인뿐 아니라 필요한 복지서비스의 연계가 필요합니다.                              
                            </div>  
                            <div class="banner_con_btn" id="banner_con_btn02"><a href="https://keeperskorea.com/site/nogodok/index.html" target="_brank">자세히 보기 +</a></div>
                        </div>  
                    </div>
                    <!-- automatic navigation -->
                    <div class="navigation-auto">
                        <div class="auto-btn1"></div>
                        <div class="auto-btn2"></div>
                        <div class="auto-btn3"></div>
                    </div>
                </div>
                <!-- manual navigation -->
                <div class="navigation-manual">
                    <label for="radio1" class="manual-btn"></label>
                    <label for="radio2" class="manual-btn"></label>
                    <label for="radio3" class="manual-btn"></label>
                </div>
            </div> 
        </div>
        <!-- 슬라이드 스크립트 -->
        <script>
            var counter = 1;
            setInterval(function(){
                document.getElementById('radio' + counter).checked = true;
                counter++;
                if(counter > 3){
                    counter = 1;
                }
            }, 9000);
        </script>
        
        
         <!-- container메뉴 -->
        <div class="container">
            <div class="con_advertisement">
                <div class="advertisement_text">
                    <h2 class="slide_t2">여러분의 마을이 공동묘지가 될 수 있습니다.</h2>
                    <p class="slide_t2_t1">
                        2021년 고독사 사망자 수는 총 3,378명으로 최근 5년간 증가 추세에 있습니다. 고독사 문제는 현재가 아니라 다가올 미래에 대한 것으로 개인과 사회가 고독사 예방에 공동으로 노력하지 않으면 안 된다는 것을 고인들은 자신의 몸을 던져 냄새로 경고하고 있습니다. 
                    </p>                                     
                    <div class="slide_t3_w"><a href="https://www.daehong.com/" target="_brank">                            
                        <p class="slide_t3">
                            <img class="daehong" src="images/daehong_logo.png" alt="대홍기획로고">
                            대홍기획에서 '고독사예방' 공익광고 포스터 제작을 지원해 주셨습니다.
                        </p>
                    </a></div>                
                </div>
                <div class="banner_img_w">
                    <div class="banner_img">
                        <img src="images/daehong_01.jpg" alt="대홍기획1">
                        <p><b>청년고독사</b></p>
                    </div>
                    <div class="banner_img">
                        <img src="images/daehong_02.jpg" alt="대홍기획2">
                        <p><b>노인고독사</b></p>
                    </div>
                    <div class="banner_img">
                        <img src="images/daehong_03.jpg" alt="대홍기획3">
                        <p><b>중장년고독사</b></p>
                    </div>
                </div> 
            </div>
            <div class="con_text_w">
                <h1 class="con_tit">고독사 피해가 얼마나 심각한지 알고 있습니까?</h1>
                <p class="con_text2">
                    '고독사'란 가족, 친척 등 주변 사람들과 단절된 채 사회적 고립상태로 생활하던 사람이 자살ㆍ병사 등으로 임종을 맞고, 시신이 일정한 시간이 흐른 뒤에 발견되는 죽음을 말합니다.(고독사예방법 제2조 개정 2023. 6. 13.).
                    부패한 채 발견된 시신은 고인의 가족뿐만 아니라 이웃과 임대인 등 최초발견자들에게 심각한 후유증을 남깁니다. 외상 후 스트레스 장애(PTSD), 즉 트라우마입니다. 트라우마는 심각한 외상을 겪은 후에 나타나는 불안 장애로 마음에 큰 충격을 주는 경험을 말합니다. 이런 트라우마는 현장에 노출된 소방관, 경찰관 등 시신 수습과정에 있는 사람들뿐만 아니라 시신 이송, 장례지도사 등 관련 종사자들에게도 정신적 영향을 끼칩니다.   
                    고독사 현장은 벽지와 장판뿐만 아니라 콘크리트 바닥에 스며들어 심각한 물적 피해를 입힙니다. 또한 고독사 위험을 걱정한 임대인들은 고령자들과 임대계약을 잘 하지 않는 등 사회적 피해까지 발생하고 있습니다.
                </p>
                <h1 class="con_tit top_area">피해야 할 죽음! 막아야 할 죽음! 고독사!</h1> 
                <p class="con_text2">
                    고독사는 스스로 피해야 할 죽음이며 우리 사회가 연대해 반드시 막아야 할 죽음입니다. 고독사 문제는 직접 업무를 담당하는 고독사 예방 담당자뿐만 아니라 국민 모두가 고독사의 위험을 인지하고, 관심을 가져야만 줄일 수 있습니다. 
                    이에 전 국민이 온,오프라인을 통해 자유롭게 대화를 나누는 자리를 마련하고, 고독사 문제에 관심을 가질 수 있도록 고독사예방 실천운동을 제안합니다. 
                    고독사예방 국민운동은 고독사 실태조사의 분석을 통해 실질적인 예방 활동이 이루어 질 수 있로독 도움이 되겠습니다. 또한, 고독사 발생 현장의 인과관계를 분석하여 성별, 연령별, 지역별 이상 징후와 고독사의 경고 시그널을 파악함으로써 그 해결책을 제시하겠습니다. 
                    뿐만 아니라 앞으로도 시대에 따라 바뀌는 고독사의 원인을 지속적으로 파악해 고독사예방에 대한 해법을 제시하고 지속적인 시민들의 관심을 이끌어내겠습니다.
                </p>
            </div>
            <div class="con_box_w">
                <div class="con_box1">
                    <p class="con_box1_tit"><b>"나의 고독사 위험도"는?</b><br>
                        고독사가 아직도 남의 일이라고 생각하십니까? <br> 고독사 위험도 지금 체크하시기 바랍니다.
                    </p>
                    <div class="icon_w">
                        <div class="icon_box"><a href="/NoGodoksa/lonelyDeath/lonelyDeathCheckListStart.jsp">
                            <img src="images/icon_check01@3x.png">
                            <p class="icon_check_tit">고독사위험자가측정</p>
                        </a></div>
                        <div class="icon_box"><a href="#">
                            <img src="images/icon_check02@3x.png">
                            <p class="icon_check_tit">고독사징후셀프체크</p>
                        </a></div>
                    </div>
                </div>
                <div class="con_box2">
                    <div class="list_more">
                        <p>고독사예방교육</p>    
                        <a href="lonelyDeathPrevent.jsp">교육일지+</a>
                    </div>
                    <div class="list_w">
                        <div class="list_box"><a href="https://movetoheaven.com/bbs/board.php?bo_table=no_godok" target="_brank">
                            <div class="days">
                                집합교육<br>인식개선교육
                            </div>
                            <div class="list_t">
                                <span>고독사예방 인식개선 교육</span><br>
                                동지역사회보장협의체위원 역량강화
                            </div>
                        </a></div>
                        <div class="list_box"><a href="https://movetoheaven.com/bbs/board.php?bo_table=no_godok&wr_id=133" target="_brank">
                            <div class="days">
                                집합교육<br>역량강화교육
                            </div>
                            <div class="list_t">
                                <span>우리동네돌봄단 역량강화 교육</span><br>
                                복지사각지대 발굴 우리동네돌봄단의 역할과 고독사 예방
                            </div>
                        </a></div>
                        <div class="list_box"><a href="https://movetoheaven.com/bbs/board.php?bo_table=no_godok&wr_id=122" target="_brank">
                            <div class="days">
                                세미나<br>담당자워크숍
                            </div>
                            <div class="list_t">
                                <span>고독사담당자 직무역량강화 교육</span><br>
                                통합사례관리 직무역량강화교육
                            </div>
                        </a></div>
                        <div class="list_box"><a href="https://keeperskorea.com/site/nogodok/index.html" target="_brank">
                            <div class="days">
                                워크숍<br>일반인참여형
                            </div>
                            <div class="list_t">
                                <span>주민조직화 고독사예방 활동가 워크숍</span><br>
                                고독사 예방 활동가 양성교육
                            </div>
                        </a></div>
                    </div>
                </div>
            </div>
        </div>
        
<%-- 	<div class="test1">
		<div><h1><a href="main.jsp">메인 페이지</a></h1></div>
		<% if(userID != null) { %>
			<div><a href="logoutAction.jsp">로그아웃</a></div>
			<div><a href="/NoGodoksa/myInfo/myInfo.jsp">내정보</a></div>
		<% } else { %>
			<div><a href="login.jsp">로그인</a></div>
		<% } %>
		
		<div><a href="lonelyDeath/lonelyDeathCheckListStart.jsp">고독사 체크</a></div>
		<% if(userID !=null && userID.equals("edam")) {%>
			<div><a href="#">관리자 페이지 이동</a></div>
		<% } %>
		<div><a href="#">견적의뢰</a></div>
	</div> --%>
	
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