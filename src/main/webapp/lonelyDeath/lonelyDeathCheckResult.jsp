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
    	int count = 0;
    	if(request.getParameter("count") != null){
    		count = Integer.parseInt(request.getParameter("count"));
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
			<div class="lonelyDeathCheckResult_title">
				<h1>결과항목 페이지</h1>
				<div class="lonelyDeathCheckResult_content">
						<img src="../image/check_result_image.png" alt=""/>
				</div>
		
			</div>
				<div class="lonelyDeathCheckResult_content_page">
					<p class="lonelyDeathCheckStart_content_result1">
						당신의 체크항목은 <%= count %>개 입니다!
					</p>
					<p class="lonelyDeathCheckStart_content_result2">
						체크 항목이 많다고 두려워하지 마세요.<br>
						오랜 습관을 바꾸는 것은 아주 힘들지만, 지금부터 생각을 바꾸고<br>
						조금씩 생활스타일을 바꿔보세요.<br>
						얼마의 시간이 지난 후  다시 질문에 답하고 체크 항목이 줄어가고 있다면<br> 
						당신은 고독사의 위험으로 부터 멀어지고 있는 겁니다.<br>
					</p>
				</div>
				<div class="lonelyDeathCheckStart2_btn">
					<button class="lonelyDeathCheckStart2_btn_btn1" type="button" onclick="location.href='/EndlessPark/myInfo/myInfo.jsp'">결과항목 자세히보기</button>
				</div>
		</div>
	</section>
	<footer><jsp:include page="../nogodoksaFooter.jsp"></jsp:include></footer>


	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
    <script src="../js/bootstrap.js"></script>
</body>
</html>