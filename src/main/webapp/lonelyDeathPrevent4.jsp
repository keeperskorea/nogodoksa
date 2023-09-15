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
                <h1 class="banner_tit">고독사 예방법</h1>
                <div class="sub_menu_w">
                    <a href="/NoGodoksa/main.jsp"><div class="home_btn">
                        <img src="/NoGodoksa/images/icon-home@3x.png">
                    </div></a>
                    <div class="sub_tit"><a href="/NoGodoksa/lonelyDeathPrevent4.jsp">조례</a></div>
                    <ul class="s_menu">
                        <li><a href="/NoGodoksa/lonelyDeathPrevent.jsp">고독사 예방법</a></li>
                        <li><a href="/NoGodoksa/lonelyDeathPrevent2.jsp">시행령</a></li>
                        <li><a href="/NoGodoksa/lonelyDeathPrevent3.jsp">시행규칙</a></li>
                        <li class="active"><a href="/NoGodoksa/lonelyDeathPrevent4jsp">자치단체별 조례</a></li>
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
                <p class="con_tit">자치단체별 고독사 예방에 관한 자치법규</p>
            </div>
            <div class="con_wrap">
                <p class="con_s_tit"> 자치단체별 조례는 '자치법규정보시스템'에서 조회해 보세요!</p>
                <div class="box_text_c">
                    <div class="box_text_c01">
                        <p>(1) '<b>자치법규정보시스템</b>' 홈페이지 접속</p>
                        <img src="/NoGodoksa/images/sub2/img_01.png" >
                    </div>
                    <div class="box_text_c01">
                        <p>(2) '<b>고독사</b>'를 검색 후 조례 찾기</p>
                        <img src="/NoGodoksa/images/sub2/img_01.png" >
                    </div>
                </div>
                <br>
                <br>
                <br>
                <br>
                <div class="box_text"><a href="https://www.elis.go.kr/" target="_brank">
                    <h2>자치법규정보시스템 <b>www.elis.go.kr</b></h2>
                    <br>
                        이 곳에서는 지방자치단체에서 제공하는 자치법규를 찾아보실 수 있습니다. 조례, 규칙에 포함된 용어를 입력하거나 발령번호 및 발령번호를 입력하십시오.<br>
                        자치법규란 지방자치단체가 제정하는 법규적 성격을 갖는 규범을 말하며 일반적으로 조례와 규칙이 여기에 포함됩니다.
                    </p>
                    <p class="btn_go"> 홈페이지 바로가기</p>
                </a></div>
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