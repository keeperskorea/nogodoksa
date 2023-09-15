<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1" >  <!-- 반응형 웹에서 사용하는 meta tag -->
<!-- 참조<link rel="stylesheet" href="../css/bootstrap.css"> -->
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
						고독사는 혼자 사는 사람의 상징이 아닙니다.<br>
						누군가와 함께 살고 있어도, 마음이 떨어져 있는 경우가 많은 시대.<br>
						고독사를 하지 않기 위해 마음이 맞지 않는 사람과 동거하거나<br>
						누군가와 인위적으로 관계망을 형성한다는 것은 이상한 이야기입니다.<br>
						그렇다고 현재 1인 가구이거나 1인가구가 될 것이라고 해서<br>
						결코 불행하거나 비관할 것도 없고 더구나<br>
						다른 사람과 함께 살고 있는 사람보다 뒤떨어지는 것도 아닙니다.<br>
						오히려 앞으로 인간이 살아가는 형태의<br>
						하나로서 새로운 시각을 보여주는 것입니다.<br>
					</p>
				</div>
		
			</div>
				<div class="lonelyDeathCheckStart_content_page">
					<p>1/2</p>
				</div>
				<div class="lonelyDeathCheckStart_btn">
					<button class="" type="button" onclick="location.href='lonelyDeathCheckListStart2.jsp'">다음으로 넘어가기</button>
				</div>
		</div>
	</section>
	
	<footer><jsp:include page="../nogodoksaFooter.jsp"></jsp:include></footer>


	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
    <script src="../js/bootstrap.js"></script>
</body>
</html>