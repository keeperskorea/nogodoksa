<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고독사예방국민운동</title>
</head>
<body>
	<%
            session.invalidate(); // 세션값 제거
            
	%>
	<script>
		location.href = "main.jsp";
	</script>

</body>
</html>