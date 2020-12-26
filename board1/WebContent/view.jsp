<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="bbs.Bbs" %>
<%@ page import="bbs.BbsDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<title>게시판</title>
</head>
<body>
<%
String userID = null;
if (session.getAttribute("userID") != null){
	userID = (String) session.getAttribute("userID");
}
int bbsID = 0;
if (request.getParameter("bbsID") != null){
	bbsID = Integer.parseInt(request.getParameter("bbsID"));
}
if (bbsID == 0 || bbsID <0){
		out.println("<script>");
		out.println("alert('실패')");
		out.println("history.back()");
		out.println("</script>");  
}
Bbs bbs = new BbsDAO().getBbs(bbsID);

BbsDAO bbsDAO = new BbsDAO();
int result = bbsDAO.incrementV (bbs.getNum(),bbsID);
if(result == -1){
 		out.println("<script>");
 		out.println("alert('실패')");
 		out.println("history.back()");
 		out.println("</script>");  
} 
/**
else { 		out.println("<script>");
	out.println("alert('성공')");
	out.println("history.back()");
	out.println("</script>");  }*/
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
        		<li class="active"><a href="main.jsp">메인</a></li>
        		<li><a href="help.jsp">도움말</a></li>
        		<%
        		if(userID != null){        		%>
        			<li><a href="bbs.jsp">글작성</a></li>

        		<%
        		}%>
        	</ul>
			        <div style="text-align:right;">
			        <button onClick="goListPage()">목록으로...</button>
			        <button onClick="location.href='update.jsp?bbsID=<%= bbsID %>'">수정</button>
	            <button onClick="location.href='delete.jsp?bbsID=<%= bbsID %>'">삭제</button>
	        </div>
		</div>

    </nav>
	<div class="container">
		<div class="row">
			<table class="table table=striped" style="text-align: center; border: 1px solid #dddddd">

	                <tr>
	                    <td style="background-color:lightgrey; width: 20%">게시제목</td>
	                    <td><%= bbs.getBbsTitle().replaceAll(" ","&nbsp;").replaceAll("<","&lt;").replaceAll(">","&gt;").replaceAll("\n","<br>") %></td>
	                </tr>
	                	                <tr>
	                    <td style="background-color:lightgrey">작성자</td>
	                    <td><%= bbs.getUserID().replaceAll(" ","&nbsp;").replaceAll("<","&lt;").replaceAll(">","&gt;").replaceAll("\n","<br>") %></td>
	                </tr>
	                <tr>
	                    <td style="background-color:lightgrey">게시내용</td>
	                    <td style="min-height: 200px; text-align: left;"><%= bbs.getBbsContent().replaceAll(" ","&nbsp;").replaceAll("<","&lt;").replaceAll(">","&gt;").replaceAll("\n","<br>") %></td>
	                </tr>
			</table>
		</div>
	</div>
	<script>

    function goListPage() {
    	//if (confirm("작성을 취소하시겠습니까??") == true){
            location.href = "main.jsp";	
    	//}
    }

	</script>
	<script src="https://code.jquery.com/jquery-3.3.1.min.js" ></script>
    <script src="js/bootstrap.js"></script>
</body>
</html>