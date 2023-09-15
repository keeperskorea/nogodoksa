<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="user.UserDAO" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고독사예방국민운동</title>
</head>
<body>
    <%
        String userID = null;
        if (userID != null){
            PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("alert('이미 로그인되었습니다.')");
            script.println("location.href = 'main.jsp'");    // 메인 페이지로 이동
            script.println("</script>");
        }
        if (request.getParameter("userID") != null){
            userID = request.getParameter("userID");
        }
    	String userPassword = null;
    	if (request.getParameter("userPassword") != null){
    		userPassword = request.getParameter("userPassword");
        }
//    	String recentURI = request.getParameter("from");
    	
        UserDAO userDAO = new UserDAO();
        
        System.out.println("userId :" + userID);
        
        boolean emailChecked = userDAO.getUserEmailChecked(userID);
        
        int result = userDAO.login(userID, userPassword);
        if (result == 1){
        	session.setAttribute("userID", userID);
            PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("location.href = 'main.jsp'");
            script.println("</script>");
//            response.sendRedirect(recentURI);
        }
        else if (result == 0){
            PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("alert('비밀번호가 틀립니다.')");
            script.println("history.back()");    // 이전 페이지로 사용자를 보냄
            script.println("</script>");
        }
        else if (result == -1){
            PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("alert('존재하지 않는 아이디입니다.')");
            script.println("history.back()");    // 이전 페이지로 사용자를 보냄
            script.println("</script>");
        }
        else if (result == -2){
            PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("alert('DB 오류가 발생했습니다.')");
            script.println("history.back()");    // 이전 페이지로 사용자를 보냄
            script.println("</script>");
        }
        if(emailChecked == false){
    		PrintWriter script = response.getWriter();
    		session.setAttribute("userID", userID);
            script.println("<script>");
            script.println("alert('이메일 인증이 안되어있습니다. 인증페이지로 넘어갑니다.')");
            script.println("location.href = 'emailSendAction.jsp'");    // 메인 페이지로 이동
            script.println("</script>");
            script.close();
            return;
    	}
    %>
</body>
</html>