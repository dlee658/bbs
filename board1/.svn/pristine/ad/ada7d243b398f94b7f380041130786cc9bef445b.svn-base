<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
 
<%@ page import="bbs.BbsDAO" %>
<%@ page import="bbs.Bbs" %>
<% request.setCharacterEncoding("UTF-8");%>

<jsp:useBean id="bbs" class="bbs.Bbs" scope="page" />
<jsp:setProperty name="bbs" property="bbsTitle" />
<jsp:setProperty name="bbs" property="bbsContent" />

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>게시판</title>
</head>
<body>
 	<%
 	int bbsID =0;
 	if (session.getAttribute("bbsID") != null){
 		bbsID = (Integer) session.getAttribute("bbsID");
 		session.removeAttribute("bbsID"); 
 		
 	}
 	if (bbsID == 0 || bbsID <0){
 			out.println("<script>");
 			out.println("alert('에러')");
 			out.println("history.back()");
 			out.println("</script>");  
 	}else{
 		String userID = null;
 		if (session.getAttribute("userID") != null){
 			userID = (String) session.getAttribute("userID");
 		}
			BbsDAO bbsDAO = new BbsDAO();
			int result = bbsDAO.update (bbsID,bbs.getBbsTitle(), bbs.getBbsContent());
	  		if(result == -1){
	  	   		out.println("<script>");
	  	   		out.println("alert('실패')");
	  	   		out.println("history.back()");
	  	   		out.println("</script>");  
		} else{
			   out.println("<script>");
			   out.println("alert('수정에 성공하였습니다')");
			   out.println("location.href = 'main.jsp'");
			   out.println("</script>");  
		}
		}
 	%>
</body>
</html>