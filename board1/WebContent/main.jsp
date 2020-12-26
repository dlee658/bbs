<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.util.ArrayList" %>
<%@ page import="bbs.BbsDAO" %>
<%@ page import="bbs.Bbs" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<title>게시판</title>
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
//		System.out.println(userID);
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
        		<li class="active"><a href="main.jsp">메인</a></li>
        		<li><a href="help.jsp">도움말</a></li>
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
	<div class="container">
		<div class="row">
			<table class="table table=striped" style="text-align: center; border: 1px solid #dddddd">
				<thead>
					<tr>
					<th></th>
						<th style="background-color: #eeeeee; text-align: center;">No</th>
						<th style="background-color: #eeeeee; text-align: center;">제목</th>
						<th style="background-color: #eeeeee; text-align: center;">등록일자</th>
						<th style="background-color: #eeeeee; text-align: center;">등록자</th>
						<th style="background-color: #eeeeee; text-align: center;">조회수</th>	
					</tr>
				</thead>
				<tbody>
									<%
							
						BbsDAO bbsDAO = new BbsDAO();
						ArrayList<Bbs> list = bbsDAO.showList(pageNumber);
						for (int i = 0; i<list.size();i++){
						
					
					%>
					<tr>

				<%-- 	<td><a href="view.jsp?bbsID=<%= list.get(i).getBbsID() %>"><input type="checkbox" /> </a></td> --%>
						<td><input type="checkbox" /></td>
						<td><%= list.get(i).getBbsID() %></td>
						<td><a href="view.jsp?bbsID=<%= list.get(i).getBbsID() %>"><%= list.get(i).getBbsTitle().replaceAll(" ","&nbsp;").replaceAll("<","&lt;").replaceAll(">","&gt;").replaceAll("\n","<br>")%></a></td>
						<td><%= list.get(i).getBbsDate() %></td>
						<td><%= list.get(i).getUserID() %></td>
						<td><%= list.get(i).getNum() %></td>
					</tr>
					<%
					}%>
				</tbody>
			</table>
			<%
				if(pageNumber != 1){			%>
				<a href="main.jsp?pageNumber=<%=pageNumber-1 %>" class="btn btn-success btn-arrow-left">previous</a>
			<%	
				}
			%>
						<%
				if(bbsDAO.nextPage(pageNumber+1)){			%>
				<a href="main.jsp?pageNumber=<%=pageNumber+1 %>" class="btn btn-success btn-arrow-right" >next</a>
			<%	
				}
			%>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.3.1.min.js" ></script>
    <script src="js/bootstrap.js"></script>
</body>
</html>