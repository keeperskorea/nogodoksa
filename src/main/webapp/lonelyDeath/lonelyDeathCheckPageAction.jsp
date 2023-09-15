<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="lonelyDeath.LonelyDeathDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1" >  <!-- 반응형 웹에서 사용하는 meta tag -->
<link rel="stylesheet" href="../css/bootstrap.css"> <!-- 참조  -->
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
    	
    	String check1 = null;
    	String check2 = null;
    	String check3 = null;
    	String check4 = null;
    	String check5 = null;
    	String check6 = null;
    	String check7 = null;
    	String check8 = null;
    	String check9 = null;
    	String check10 = null;
    	String check11 = null;
    	String check12 = null;
    	String check13 = null;
    	String check14 = null;
    	String check15 = null;
    	String check16 = null;
    	String check17 = null;
    	String check18 = null;
    	String check19 = null;
    	String check20 = null;
    	String check21 = null;
    	String check22 = null;
    	String check23 = null;
    	String check24 = null;
    	String check25 = null;
    	String check26 = null;
    	String check27 = null;
;
    	if( request.getParameter("check1")!= null){
    		check1 = request.getParameter("check1");
    		count = count +1;
    	}
//    	System.out.println(check1+"//"+check2);
		if( request.getParameter("check2")!= null){
    		check2 = request.getParameter("check2");
    		count = count +1;
    	}
		if( request.getParameter("check3")!= null){
    		check3 = request.getParameter("check3");
    		count = count +1;
    	}
		if( request.getParameter("check4")!= null){
    		check4 = request.getParameter("check4");
    		count = count +1;
    	}
		if( request.getParameter("check5")!= null){
    		check5 = request.getParameter("check5");
    		count = count +1;
    	}
		if( request.getParameter("check6")!= null){
    		check6 = request.getParameter("check6");
    		count = count +1;
    	}
		if( request.getParameter("check7")!= null){
    		check7 = request.getParameter("check7");
    		count = count +1;
    	}
		if( request.getParameter("check8")!= null){
    		check8 = request.getParameter("check8");
    		count = count +1;
    	}
		if( request.getParameter("check9")!= null){
    		check9 = request.getParameter("check9");
    		count = count +1;
    	}
		if( request.getParameter("check10")!= null){
    		check10 = request.getParameter("check10");
    		count = count +1;
    	}
		if( request.getParameter("check11")!= null){
    		check11 = request.getParameter("check11");
    		count = count +1;
    	}
		if( request.getParameter("check12")!= null){
    		check12 = request.getParameter("check12");
    		count = count +1;
    	}
		if( request.getParameter("check13")!= null){
    		check13 = request.getParameter("check13");
    		count = count +1;
    	}
		if( request.getParameter("check14")!= null){
    		check14 = request.getParameter("check14");
    		count = count +1;
    	}
		if( request.getParameter("check15")!= null){
    		check15 = request.getParameter("check15");
    		count = count +1;
    	}
		if( request.getParameter("check16")!= null){
    		check16 = request.getParameter("check16");
    		count = count +1;
    	}
		if( request.getParameter("check17")!= null){
    		check17 = request.getParameter("check17");
    		count = count +1;
    	}
		if( request.getParameter("check18")!= null){
    		check18 = request.getParameter("check18");
    		count = count +1;
    	}
		if( request.getParameter("check19")!= null){
    		check19 = request.getParameter("check19");
    		count = count +1;
    	}
		if( request.getParameter("check20")!= null){
    		check20 = request.getParameter("check20");
    		count = count +1;
    	}
		if( request.getParameter("check21")!= null){
    		check21 = request.getParameter("check21");
    		count = count +1;
    	}
		if( request.getParameter("check22")!= null){
    		check22 = request.getParameter("check22");
    		count = count +1;
    	}
		if( request.getParameter("check23")!= null){
    		check23 = request.getParameter("check23");
    		count = count +1;
    	}
		if( request.getParameter("check23")!= null){
    		check24 = request.getParameter("check23");
    		count = count +1;
    	}
		if( request.getParameter("check24")!= null){
    		check25 = request.getParameter("check24");
    		count = count +1;
    	}
		if( request.getParameter("check26")!= null){
    		check26 = request.getParameter("check26");
    		count = count +1;
    	}
		if( request.getParameter("check27")!= null){
    		check27 = request.getParameter("check27");
    		count = count +1;
    	}
    	
    	LonelyDeathDAO lonelyDeathDAO = new LonelyDeathDAO();
    	
    	int result = lonelyDeathDAO.insertLonelyDeath(userID, count, check1, check2, check3, check4, check5, check6, check7, check8, check9, check10, check11, check12, check13, check14, check15, check16, check17, check18, check19, check20, check21, check22, check23, check24, check25, check26, check27);
    	if(result == -1){
    		PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("alert('저장에 실패했습니다.')");
            script.println("history.back()");    // 이전 페이지로 사용자를 보냄
            script.println("</script>");
    	}else{
    		PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("alert('입력이 완료되었습니다.')");
            script.println("location.href = '/EndlessPark/lonelyDeath/lonelyDeathCheckResult.jsp?count="+count+"'");    // 메인 페이지로 이동
            script.println("</script>");
            script.close();
            return;
    	}
	%>




	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
    <script src="js/bootstrap.js"></script>
</body>
</html>