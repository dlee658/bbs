<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <link rel="stylesheet" href="css/bootstrap.css">
        <title>연습합니다.</title>
    </head>
    <body>
        <form name="saveForm">
	        <div>
	            <h1>게시판 등록</h1>
	        </div>
	        <div style="text-align:right;">
	            <button onClick="goSave()">저장</button>
	            <button onClick="goListPage()">목록으로...</button>
	        </div>
	        <br>
	        <div>
	             <table style="width:100%; border: 1px solid black;">
	                <tr>
	                    <td style="width:1  0%;background-color:lightgrey">게시제목</td>
	                    <td style="width:90%;"><input type="text" name="subject" style="width:100%" /></td>
	                </tr>
	                <tr>
	                    <td style="width:10%;background-color:lightgrey">게시내용</td>
	                    <td style="width:90%;"><textarea name="desc" style="width:100%;height:200px;"></textarea></td>
	                </tr>
	            </table>
	        </div>
        </form>

        <script>
            function goSave() {
            	if (confirm("저장 하시겠습니까??") == true){    //확인
            		//alert(document.saveForm.subject.value);
            		if(document.saveForm.subject.value == "") {
            			alert("제목을 입력하새ㅔ요.");
            			//document.saveForm.subject.focus;
            			return;
            		}
            		if(document.saveForm.desc.value == "") {      
                        alert("내용을 입력하새ㅔ요.");
                        return;
                    }
            		document.saveForm.action = "/home/save.action";
            	    document.saveForm.submit();
            	}
            }
            function goListPage() {
            	//if (confirm("작성을 취소하시겠습니까??") == true){
                    location.href = "main.jsp";	
            	//}
            }
        </script>
    </body>
</html>