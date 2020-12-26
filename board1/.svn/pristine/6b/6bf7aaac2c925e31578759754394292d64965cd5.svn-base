<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
 
<%@ page import="user.UserDAO" %>

<% request.setCharacterEncoding("UTF-8");%>

<jsp:useBean id="user" class="user.User" scope="page" />
<jsp:setProperty name="user" property="userID" />

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>게시판 login</title>
</head>
<body>
 	<%
		  UserDAO userDAO = new UserDAO();
		  int result = userDAO.login(user.getUserID());
		  if(result ==1){
		   session.setAttribute("userID", user.getUserID());
		   out.println("<script>");
		   out.println("location.href = 'main.jsp'");
		   out.println("</script>");  
		  }
  		if(result == -1){
   		out.println("<script>");
   		out.println("alert('존재하지 않는 아이디 입니다.')");
   		out.println("history.back()");
   		out.println("</script>");  
 		} 
 	%>
</body>
</html>