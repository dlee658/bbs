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

int bbsID =0;
	String userID = null;
	if (session.getAttribute("userID") != null){
		userID = (String) session.getAttribute("userID");
	}

	
if (request.getParameter("bbsID") != null){
	bbsID = Integer.parseInt(request.getParameter("bbsID"));
}
if (bbsID == 0 || bbsID <0){ %>

<script>
alert('실패')
history.back()
</script> <%
		 
}
session.removeAttribute("bbsID"); 
Bbs bbs = new BbsDAO().getBbs(bbsID);
session.setAttribute("bbsID", bbsID);
if (userID == null){
System.out.println("correct output");	%>
<script>
alert('권한 없음, 로그인 필요');
history.back();
</script> <% 
}else{
if(!(userID.equals(bbs.getUserID()))){
	out.println("<script>");
	out.println("alert('권한 없음, 다른 사용자')");
	out.println("history.back()");
	out.println("</script>");  
}}
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
        		<li><a href="main.jsp">메인</a></li>
        	</ul>
			        <div style="text-align:right;">
	            <button onClick="goSave()">수정</button>
	            <button onClick="goListPage()">목록으로...</button>
	        </div>
		</div>

    </nav>
    <form name="saveForm">
	<div class="container">
		<div class="row">
			<table class="table table=striped" style="text-align: center; border: 1px solid #dddddd">

	                <tr>
	                    <td style="width:1  0%;background-color:lightgrey">게시제목</td>
	                    <td style="width:90%;"><textarea class="form-control" name="bbsTitle" style="width:100%"/><%= bbs.getBbsTitle() %></textarea></td>
	                </tr>
	                <tr>
	                    <td style="width:10%;background-color:lightgrey">게시내용</td>
	                    <td style="width:90%;"><textarea class="form-control" name="bbsContent" style="width:100%;height:200px;"><%= bbs.getBbsContent() %></textarea></td>
	                </tr>
			</table>
		</div>
	</div>
	</form>
	<script>

    function goListPage() {
    	//if (confirm("작성을 취소하시겠습니까??") == true){
            location.href = "main.jsp";	
    	//}
    }
    function goSave() {
    	if (confirm("저장 하시겠습니까??") == true){    //확인
    		//alert(document.saveForm.subject.value);
    		if(document.saveForm.bbsTitle.value == "") {
    			alert("제목을 입력하세요.");
    			//document.saveForm.subject.focus;
    			return;
    		}
    		if(document.saveForm.bbsContent.value == "") {      
                alert("내용을 입력하세요.");
                return;
            }
    		document.saveForm.action = "updateAction.jsp";
    	    document.saveForm.submit();
    	}
    }
	</script>
	<script src="https://code.jquery.com/jquery-3.3.1.min.js" ></script>
    <script src="js/bootstrap.js"></script>
</body>
</html>