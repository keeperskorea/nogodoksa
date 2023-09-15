<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="lonelyDeathBBS.LonelyDeathBBSDAO"%>
<%@ page import="java.io.File" %>
<%@ page import="java.util.Enumeration" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@ page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Endless Park</title>
</head>
<body>
    <%
    	String userID = null;
	//String dirctory = application.getRealPath("/upload");
	//String dirctory = request.getSession().getServletContext().getRealPath("/uploads");
	String dirctory = this.getClass().getResource("").getPath();
	//로컬에서 업로드시
	dirctory = dirctory.substring(1,dirctory.indexOf(".metadata"))+"EndlessPark/src/main/webapp/upload";
	//cafe24에서 업로드시
//	dirctory = "/officekeepers13/tomcat/webapps/upload";
	String encoding = "UTF-8";
	int maxSize = 1024 * 1024 * 100;
	DefaultFileRenamePolicy policy = new DefaultFileRenamePolicy();
	MultipartRequest multi = new MultipartRequest(request, dirctory, maxSize, encoding);
	
	

    	if (session.getAttribute("userID") != null){
            userID = (String) session.getAttribute("userID");
    	}
    	if (userID == null){
            PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("alert('로그인하세요.')");
            script.println("location.href = 'login.jsp'");    // 로그인 페이지로 이동
            script.println("</script>");
    	}else{
    		String lonelyDeathBBSTitle = multi.getParameter("lonelyDeathBBSTitle");
    		String lonelyDeathBBSContent = multi.getParameter("lonelyDeathBBSContent");
    		
//    		Enumeration fileNames = multi.getFileNames();
//   		while(fileNames.hasMoreElements()){
    			
//    		}
//    			String parameter = (String) fileNames.nextElement();


    			//이렇게 저장이 되면 파일 어레이 리스트 사용이 불가능함 그래서 수정이 필요
	    		String fileName = multi.getOriginalFileName("file");
	    		String fileRealName = multi.getFilesystemName("file");
	    		

	    		
	    		if (lonelyDeathBBSTitle == null || lonelyDeathBBSContent == null){
	        		PrintWriter script = response.getWriter();
	                script.println("<script>");
	                script.println("alert('모든 문항을 입력해주세요.')");
	                script.println("history.back()");    // 이전 페이지로 사용자를 보냄
	                script.println("</script>");
	        	}else{
	        		//String adress = "C:/projects/EndlessPark/src/main/webapp/upload";
	//        		String dirctory = application.getRealPath("/upload");
	//       		String encoding = "UTF-8";
	//        		int maxSize = 1024 * 1024 * 100;
	//        		DefaultFileRenamePolicy policy = new DefaultFileRenamePolicy();
	        		
	        		//MultipartRequest multi = new MultipartRequest(request, dirctory, maxSize, encoding, policy);
	//        		MultipartRequest multi = new MultipartRequest(request, dirctory, maxSize, encoding);
	        		
	        		
	        		
	        		//File file = multi.getFile("upload");
//	        		if(!fileName.endsWith(".jpg") && !fileName.endsWith(".png") && !fileName.endsWith(".JPG") && !fileName.endsWith(".PNG")){
//	        			File file = new File(dirctory + fileRealName);
//	        			file.delete();
//	        			out.write("업로드할 수 없는 확장자 입니다.");
//	        		} else{
      			
		        		LonelyDeathBBSDAO lonelyDeathBBSDAO = new LonelyDeathBBSDAO();
		        		//mutlipart로 받기때문에 endlessA. 세팅이 에러날수도 있을거같음
		                int result = lonelyDeathBBSDAO.write(lonelyDeathBBSTitle, userID, lonelyDeathBBSContent, fileName, fileRealName);
		                if (result == -1){ // 글쓰기 실패시
		                    PrintWriter script = response.getWriter();
		                    script.println("<script>");
		                    script.println("alert('글쓰기에 실패했습니다.')");
		                    script.println("history.back()");    // 이전 페이지로 사용자를 보냄
		                    script.println("</script>");
		                }else{ // 글쓰기 성공시
		                	PrintWriter script = response.getWriter();
		                    script.println("<script>");
		                    script.println("location.href = 'adminLonelyDeathBBS.jsp'");    // 메인 페이지로 이동
		                    script.println("</script>");    
		                }
	                
	        		
	        		
	        	}	
    		
    	}
    %>
</body>
</html>