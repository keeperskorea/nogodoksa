<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width" , initial-scale="1">
<!-- 반응형 웹에서 사용하는 meta tag -->
<link rel="stylesheet" href="css/style_sub.css">
<link rel="stylesheet" href="css/nogodoksa_footer.css">
<link rel="stylesheet" href="css/nogodoksa_header.css">
<title>고독사예방국민운동</title>
</head>
<body>

	<%
	String userID = null;
	if (session.getAttribute("userID") != null) {
		userID = (String) session.getAttribute("userID");
	}
	if (userID != null) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('이미 로그인이 된 상태입니다.')");
		script.println("location.href = 'main.jsp'");
		script.println("</script>");
		script.close();
		return;
	}

	//    	String recentURI = request.getParameter("from");
	%>
	<header><jsp:include page="nogodoksaHeader.jsp"></jsp:include></header>
	<section id="sec_login"></section>
	<div class="no_godoksa_login_inner">
		<div class="no_godoksa_login_title">
			<h1>로그인 화면</h1>
			<div class="no_godoksa_login_content">
				<form method="post" action="loginAction.jsp">
					<div class="no_godoksa_login_content_wrap">
						<div class="no_godoksa_login_content_1">
							아이디

							<input type="text" class="no_godoksa_login_content_control" placeholder="아이디"
								name="userID" maxlength='20'>
								
						</div>
					</div>
					<div class="no_godoksa_login_content_wrap">
						<div class="no_godoksa_login_content_1">
							비밀번호 <input type="password" class="no_godoksa_login_content_control"
								placeholder="비밀번호" name="userPassword" maxlength='20'>
						</div>
					</div>
					<div class="no_godoksa_login_content_wrap">
						<div class="no_godoksa_login_content_1">
						<input type="submit" class="no_godoksa_login_content_btn" value="로그인">
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>


	<footer><jsp:include page="nogodoksaFooter.jsp"></jsp:include></footer>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>

</body>
</html>