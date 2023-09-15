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
            <header role="header" data-include="../../include/header_sub.html"></header>

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
                        <li><a href="/NoGodoksa/question3.jsp">고독사발생ING</a></li>                        
                        <li class="active"><a href="/NoGodoksa/question4.jsp">국내 언론 첫 소개</a></li>
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
                <p class="con_tit">국내 언론에 처음 소개된 고독사</p>
            </div>
            <div class="con_wrap">
                <p class="con_text_t">[사회] 나 홀로 죽음 ‘고독사’를 아십니까?</p>       
                <img class="weekly_img02" src="/NoGodoksa/images/sub1/weekly_01_1.png">                               
                <img class="weekly_img02" src="/NoGodoksa/images/sub1/weekly_02.png">          
                <p class="con_text_01_s">
                    위클리경향 846호<br>
                    정용인 기자 [2009년10월20일 보도]<br> 
                    <b>[사회] 나 홀로 죽음 ‘고독사’를 아십니까?</b>
                </p>
                <p class="con_text_02">                    
                    <span>고독사전문가 김석중 인터뷰中</span><br> 
                    <b>이 개념을 처음 만들어 낸 이는 지난 2001년부터 일본에서 유품정리를 전문으로 하는 회사를 설립한 요시다 다이치(吉田太一)이다.</b>
                    NHK 등 언론을 통해 그의 독특한 직업이 소개된 바 있다. 요시다는 자신의 블로그에 연재한 글들을 바탕으로 <유품정리인은 보았다!><혼자라도 괜찮아요.> 
                    <유품이 말하는 진실> 등의 책을 펴내면서 ‘고독사’라는 개념을 사용했다. <b><유품정리인은…>를 국내에 번역 소개한 김석중씨는 말한다.
                     “‘고독사’가 발생할 수 있는 연령대가 노인, 구체적으로 말해 65세 이상의 노인이라고 생각하는 경우가 많은데 실제로는 45세 이후로 해서 50대에서 60대 초반을 가장 위험한 군으로 봅니다.”</b>이는 자신이 앓고 있는 병력(病歷)을 본인도,
                      국가도 관심을 기울이지 못하는 경우가 많은 연령층이기 때문이다. 노인은 장기요양보험이나 사회안전망을 통해 커버가 가능할 수도 있고,
                       좀 더 젊은 층은 그래도 상대적으로 사회적 활동을 많이 하기 때문에 다른 사람과 연계가 간간이 이어질 수 있지만 사회활동에서 은퇴하는
                        전후의 연령대인 중년 후반층은 일종의 ‘사각지대’에 놓이게 된다는 것이 김씨의 설명이다....
                </p>
                
                <div class="con_link_img2">
                    <div class="img_tit_btn"><a href="http://weekly.khan.co.kr/khnm.html?mode=view&code=115&art_id=200910151542041" target="_brank">
                        언론 첫 기사 보러가기 +
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