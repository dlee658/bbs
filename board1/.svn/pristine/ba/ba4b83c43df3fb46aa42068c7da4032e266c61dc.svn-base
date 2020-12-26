<jsp:directive.page contentType="text/html" pageEncoding="UTF-8" />

<html>
    <head>
        <title>TEST</title>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" ></script>
    </head>
    <body>
        <div>
            <h1>게시판 조회</h1>
        </div>
        <div style="text-align:right;">
            <button onclick="javascript: goSearch('2222');"><span style="font-size:20px;">조회</span></button>
            <button id="btn-new" style="font-size:20px;">신규</button>
            <button>삭제</button>
        </div>
        <br>
        <div>
           <table style="width:100%; border: 1px solid black;">
                <tr style="background-color:lightgrey">
                    <td style="width:2%;"></td>
                    <td>No</td>
                    <td>게시제목</td>
                    <td>등록일자</td>
                    <td>등록자</td>
                    <td>조회수</td>
                </tr>
                <tr>
                    <td><input type="checkbox" /></td>
                    <td>1</td>
                    <td>aaaa</td>
                    <td>2019-07-29</td>
                    <td>홍길동</td>
                    <td>100</td>
                </tr>
                <tr>
                	<td><div id="nameList"></div></td>
                </tr>
            </table>
        </div>
        
        <script>
            $("#btn-new").click( function () {
            //	alert('신규버튼');
            	location.href = "/T/jsp/index2.jsp";
            });
        
            function goSearch(aaVal) {
            	alert(aaVal);
            }
            
            function goNewPage() {
                location.href = "/T/jsp/index2.jsp";
            }
        </script>
    </body>
</html>