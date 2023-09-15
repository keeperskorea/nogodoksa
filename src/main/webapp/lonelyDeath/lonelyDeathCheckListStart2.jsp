<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1" >  <!-- 반응형 웹에서 사용하는 meta tag -->

<link rel="stylesheet" href="../css/lonelyDeathCheck.css">
<link rel="stylesheet" href="../css/nogodoksa_header.css">
<link rel="stylesheet" href="../css/nogodoksa_footer.css">
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
//    	if(userID == null){
//    		PrintWriter script = response.getWriter();
//    		script.println("<script>");
//            script.println("alert('로그인후 이용이 가능합니다.')");
//            script.println("location.href = '../login.jsp'");    // 이전 페이지로 사용자를 보냄
//            script.println("</script>");
//    	}
	%>
	<header><jsp:include page="../nogodoksaHeader.jsp"></jsp:include></header>
	
	<section id="sec1">
		<div class="lonelyDeathCheckStart_inner">
			<div class="lonelyDeathCheckStart_title">
				<h1>고독사 위험 체크리스트</h1>
				<div class="lonelyDeathCheckStart_content">
					<p class="lonelyDeathCheckStart_content_text">
						고독사는 발생 그 자체의 문제보다 죽기 전에<br>
						자신이 고립되어 있는지가 중요합니다.<br>
						지나치게 심각하지 않게<br>
						가벼운 마음으로 테스트 해 보시기 바랍니다.<br>
					</p>
				</div>
		
			</div>
				<div class="lonelyDeathCheckStart_content_page">
					<p>2/2</p>
				</div>
				<div class="lonelyDeathCheckStart2_btn">
					<button class="lonelyDeathCheckStart2_btn_btn1" type="button" onclick="location.href='lonelyDeathCheckListStart.jsp'">돌아가기</button>
					<button class="lonelyDeathCheckStart2_btn_btn2" type="button" onclick="location.href='lonelyDeathCheckPage.jsp'">시작하기</button>
				</div>
		</div>
	</section>

	
	<footer><jsp:include page="../nogodoksaFooter.jsp"></jsp:include></footer>


	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
    <script src="../js/bootstrap.js"></script>
</body>
</html>