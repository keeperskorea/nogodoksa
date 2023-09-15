<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/style_sub.css?after"> <!-- 참조  -->
<link rel="stylesheet" href="css/nogodoksa_header.css">
<title>고독사예방국민운동</title>
</head>

<body>
	<% 
        String userID = null;
    	if (session.getAttribute("userID") != null){
            userID = (String) session.getAttribute("userID");
    	}
	%>
	<nav class="navbar">
        <div class="logo"><a href="/NoGodoksa/main.jsp">고독사예방국민운동</a></div>
        <!--<div class="logo"><a href="index.html">키퍼스CSR<br><span>고독사예방</span></a></div>-->
        <!-- 메뉴 -->
        <ul class="nav_menu">    
            <%if(userID != null && userID.equals("edam")) {%>
            <li class="nav_menu_tit">
                <a href="/NoGodoksa/admin/adminMemberList.jsp">관리자페이지</a>
            </li>
            <li class="nav_menu_tit">
                <a href="/NoGodoksa/logoutAction.jsp">로그아웃</a>
            </li>
            <% }else if(userID != null) { %>
			<li class="nav_menu_tit">
                <a href="/NoGodoksa/myInfo/myInfo.jsp">마이페이지</a>
            </li>
            <li class="nav_menu_tit">
                <a href="/NoGodoksa/logoutAction.jsp">로그아웃</a>
            </li>
            <% }else { %>
             <li class="nav_menu_tit">
            	<a href="/NoGodoksa/login.jsp">마이페이지</a>
            </li>
            <% } %>
            <li class="nav_menu_tit">
                <a href="/NoGodoksa/question.jsp">문제제기</a>
                <ul class="sub_menu">
                    <li><a href="/NoGodoksa/question.jsp">고독사의 경고</a></li>
                    <li><a href="/NoGodoksa/question2.jsp">고독사발생일지(보도)</a></li>
                    <li><a href="/NoGodoksa/question3.jsp">고독사발생ING</a></li>
                    <li><a href="/NoGodoksa/question4.jsp">국내 언론 첫 소개</a></li>
                </ul>
            </li>
            <li class="nav_menu_tit">
                <a href="/NoGodoksa/lonelyDeathPrevent.jsp">고독사 예방법</a>
                <ul class="sub_menu">
                    <li><a href="/NoGodoksa/lonelyDeathPrevent.jsp">고독사예방법</a></li>
                    <li><a href="/NoGodoksa/lonelyDeathPrevent2.jsp">시행령</a></li>
                    <li><a href="/NoGodoksa/lonelyDeathPrevent3.jsp">시행규칙</a></li>
                    <li><a href="/NoGodoksa/lonelyDeathPrevent4.jsp">자치단체별 조례</a></li>
                </ul>
            </li>
            <li class="nav_menu_tit">
                <a href="/NoGodoksa/lonelyDeathPreventAction.jsp">고독사예방 활동</a>
                <ul class="sub_menu">
                    <li><a href="https://nogodoksa.com/contents/sub3/sub3_1.html">고독사예방교육</a></li>
                    <li><a href="https://nogodoksa.com/contents/sub3/sub3_2.html">일본 고독사전문가 초청</a></li>
                    <li><a href="https://nogodoksa.com/contents/sub3/sub3_4.html">연구자료</a></li>
                </ul>
            </li>
            <li class="nav_menu_tit"><a href="https://nogodoksa.com/Instructor/index.html" target="_blank">고독사예방 전문강사</a></li>
            <li class="nav_menu_tit">
                <a href="https://cafe.naver.com/nogodoksa" target="_blank">커뮤니티</a>                           
                <ul class="sub_menu">
                    <li><a href="https://cafe.naver.com/nogodoksa" target="_blank">커뮤니티</a></li>
                </ul>               
            </li>
        </ul>

        <!-- 모바일 햄버거 버튼 클릭시 메뉴 -->
        <div class="menu_btn">
            <p>MENU</p>
            <input type="checkbox" id="menuicon">
            <label for="menuicon">
                <span></span>
                <span></span>
                <span></span>
            </label>
            <div class="sidebar">
                <!-- 
                <div id="login" >
                    <ul class="log_box">
                        <li class="login_t"><a href="contents/log/login.html">로그인</a></li>
                        <li class="login_t"><a href="contents/log/join.html">회원가입</a></li>
                    </ul>
                </div>
                <div id="logout" >
                    <ul class="log_box">
                        <p class="log_name_s">keeperskorea님 <br>반갑습니다 :)</p>
                        <li class="login_t"><a href="#">로그아웃</a></li>
                        <li class="login_t"><a href="#">MY 정보</a></li>
                    </ul> 
                </div>
                -->
                <a class="sid_tit" href="contents/sub1/sub1_1.html">고독사의 경고</a>
                <a class="sid_tit_s" href="contents/sub1/sub1_1.html">•&nbsp; 냄새로 알려주는 경고</a>
                <a class="sid_tit_s" href="contents/sub1/sub1_2.html">•&nbsp; 언론에 보도된 발생일지</a>
                <a class="sid_tit_s" href="contents/sub1/sub1_3.html">•&nbsp; 고독사 ing</a>                
                <a class="sid_tit_s" href="contents/sub1/sub1_4.html">•&nbsp; 국내 언론 첫 소개</a>

                <a class="sid_tit" href="contents/sub2/sub2_1.html">고독사 예방법</a>
                <a class="sid_tit_s" href="contents/sub2/sub2_1.html">•&nbsp; 법률</a>
                <a class="sid_tit_s" href="contents/sub2/sub2_2.html">•&nbsp; 시행령</a>
                <a class="sid_tit_s" href="contents/sub2/sub2_3.html">•&nbsp; 시행규칙</a>
                <a class="sid_tit_s" href="contents/sub2/sub2_4.html">•&nbsp; 조례</a>

                <a class="sid_tit" href="contents/sub3/sub3_2.html">고독사 예방활동</a>
                <a class="sid_tit_s" href="http://endingbiz.co.kr/bbs/board.php?bo_table=education_2" target="_blank">•&nbsp; 고독사 예방교육</a>
                <a class="sid_tit_s" href="contents/sub3/sub3_2.html">•&nbsp; 토론회 및 행사</a>
                <a class="sid_tit_s" href="contents/sub3/sub3_4.html">•&nbsp; 연구자료</a>
                
                <a class="sid_tit" href="Instructor/index.html" target="_blank">고독사예방 강사</a>

                <a class="sid_tit" href="http://endingbiz.co.kr/bbs/board.php?bo_table=free" target="_blank">커뮤니티</a>                
                <a class="sid_tit_s" href="http://endingbiz.co.kr/bbs/board.php?bo_table=free" target="_blank">•&nbsp; 커뮤니티</a>
                <a class="sid_tit_s" href="http://endingbiz.co.kr/bbs/board.php?bo_table=community_1" target="_blank">•&nbsp; 교육자료</a>
                <a class="sid_tit_s" href="http://endingbiz.co.kr/bbs/board.php?bo_table=community_3" target="_blank">•&nbsp; 서명하기</a>
               
            </div>
        </div>

    </nav>


</body>
</html>