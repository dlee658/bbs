<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
if (userID == null){
		out.println("<script>");
		out.println("alert('에러')");
		out.println("history.back()");
		out.println("</script>");  
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
        		<li><a href="main.jsp">메인</a></li>
        		        		<li><a href="help.jsp">도움말</a></li>
        		<%
        		if(userID != null){        		%>
        			<li class="active"><a href="bbs.jsp">글작성</a></li>

        		<%
        		}%>
        	</ul>
			        <div style="text-align:right;">
	            <button onClick="goSave()">저장</button>
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
	                    <td style="width:90%;"><textarea class="form-control" name="bbsTitle" style="width:100%"/></textarea></td>
	                </tr>
	                <tr>
	                    <td style="width:10%;background-color:lightgrey">게시내용</td>
	                    <td style="width:90%;"><textarea class="form-control" name="bbsContent" style="width:100%;height:200px;"></textarea></td>
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
    		document.saveForm.action = "writeAction.jsp";
    	    document.saveForm.submit();
    	}
    }
	</script>
	<script src="https://code.jquery.com/jquery-3.3.1.min.js" ></script>
    <script src="js/bootstrap.js"></script>
</body>
</html>