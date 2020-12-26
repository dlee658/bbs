<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="bbs.BbsDAO" %>
<%@ page import="bbs.Bbs" %>
<%@ page import="java.util.ArrayList" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<title>help</title>
<style type="text/css">
a, a:hover {
	color:#000000;
text-decoration: none;
}
</style>
</head>
<body>
	<%
		String userID = null;
		if (session.getAttribute("userID") != null){
			userID = (String) session.getAttribute("userID");
		}
	//	System.out.println(userID);
	int pageNumber = 1;
	if (request.getParameter("pageNumber") != null){
		pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
	}
	%>
     <nav class="navbar navbar-default">
    	<div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed"
            	data-toggle="collapsed" data-target="#bs-example-navbar-collapse-1"
            	aria-expanded="false">
            	<span class="icon-bar"></span>
            	<span class="icon-bar"></span>
            	<span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="main.jsp">게시판</a>
        </div>
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
        	<ul class="nav navbar-nav">
        		<li ><a href="main.jsp">메인</a></li>
        		<li class="active"><a href="help.jsp">도움말</a></li>
        		<%
        		if(userID != null){        		%>
        			<li><a href="bbs.jsp">글작성</a></li>

        		<%
        		}%>
        	</ul>
        	<ul class="nav navbar-nav navbar-right">
        		<li class="dropdown">
        			
          			        		<%
        			        		if(userID != null){        		%>     
        			        		<a href="#" class="dropdown-toggle"
        				data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><%= userID%><span class="caret"></span></a> 	
        			        		        		<%
        		}else{%>	
        		        				<a href="#" class="dropdown-toggle"
        				data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">접속<span class="caret"></span></a>
        		        				<%} %>		

        				
        			<ul class="dropdown-menu">
        			        		<%
        			        		if(userID != null){        		%>
        		        				<li><a href="logoutAction.jsp">로그아웃</a></li>
        				<li><a href="look.jsp">조회</a></li>

        				<li><a href="delete.jsp">삭제</a></li>
        		<%
        		}else{%>

        				<li><a href="login.jsp">로그인</a></li>
        				<li><a href="look.jsp">조회</a></li>
        				<%} %>
        			</ul>
        		</li>
        	</ul>
		</div>
    </nav>
    접속 가능 이름: lee , harry

	<script src="https://code.jquery.com/jquery-3.3.1.min.js" ></script>
    <script src="js/bootstrap.js"></script>
</body>
</html>