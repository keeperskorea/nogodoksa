<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="lonelyDeathBBS.LonelyDeathBBSDAO"%>
<%@ page import="lonelyDeathBBS.LonelyDeathBBSDTO"%>
<%
request.setCharacterEncoding("UTF-8");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Endless Park</title>
</head>
<body>
	<%
	String userID = null;
	if (session.getAttribute("userID") != null) {
		userID = (String) session.getAttribute("userID");
	}
	if (userID == null) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('로그인하세요.')");
		script.println("location.href = 'login.jsp'"); // 메인 페이지로 이동
		script.println("</script>");
	}
	int lonelyDeathBBSID = 0;
	if (request.getParameter("lonelyDeathBBSID") != null) {
		lonelyDeathBBSID = Integer.parseInt(request.getParameter("lonelyDeathBBSID"));
	}
	if (lonelyDeathBBSID == 0) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('유효하지 않은 글입니다')");
		script.println("history.back()");
		script.println("</script>");
	}

	LonelyDeathBBSDAO lonelyDeathBBS = new LonelyDeathBBSDAO();
	int result = lonelyDeathBBS.delete(lonelyDeathBBSID);
	if (result == -1) { // 글삭제 실패시
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('글삭제에 실패했습니다.')");
		script.println("history.back()"); // 이전 페이지로 사용자를 보냄
		script.println("</script>");
	} else { // 글삭제 성공시
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("location.href = 'adminLonelyDeathBBS.jsp'"); // 메인 페이지로 이동
		script.println("</script>");
	}
	%>
</body>
</html>