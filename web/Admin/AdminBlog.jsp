<%-- 
    Document   : AdminBlog
    Created on : Jun 10, 2018, 12:32:13 PM
    Author     : hieu bach
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
	<link rel="stylesheet" type="text/css" href="Admin.css">
        <link href="../CSS/Admin.css" rel="stylesheet" type="text/css"/>
         <meta charset="UTF-8">
         <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
    <jsp:include page="SideNav.html"></jsp:include>
      
        <!--Load Data-->
        <div class="main">
            <h1 style="text-align: left; padding-bottom: 20px">View Blog</h1>
            <table border="1 solid black" style="table-layout: fixed" >
                <tr>
                    <th>ID</th>
                    <th>Title</th>
                    <th>Content</th>
                    <th>Date</th>
                    <th colspan="2"></th>
                    
                </tr>
                <tr></tr>
                 <tr>
                        <td>BG1</td>
                        <td>Sen Đá Cỏ Ngọc</td>
                        <td><div class="crop">Sen Đá Cỏ Ngọc nay còn được gọi với một cái tên vô cùng duyên dáng ...</div></td>
                        <td>20/10/2018</td>
                        <td><a href="UpdateBlog.jsp">Update</a></td>
                        <td><a href="#">Delete</a></td>
                 </tr>
                  <tr>
                       <td>BG1</td>
                        <td>Sen Đá Cỏ Ngọc</td>
                        <td><div class="crop">Sen Đá Cỏ Ngọc nay còn được gọi với một cái tên vô cùng duyên dáng ...</div></td>
                        <td>20/10/2018</td>
                        <td><a href="UpdateBlog.jsp">Update</a></td>
                        <td><a href="#">Delete</a></td>
                 </tr>
                 <tr>
                       <td>BG1</td>
                        <td>Sen Đá Cỏ Ngọc</td>
                        <td><div class="crop">Sen Đá Cỏ Ngọc nay còn được gọi với một cái tên vô cùng duyên dáng ...</div></td>
                        <td>20/10/2018</td>
                        <td><a href="#">Update</a></td>
                        <td><a href="#">Delete</a></td>
                 </tr>
                  <tr>
                       <td>BG1</td>
                        <td>Sen Đá Cỏ Ngọc</td>
                        <td><div class="crop">Sen Đá Cỏ Ngọc nay còn được gọi với một cái tên vô cùng duyên dáng ...</div></td>
                        <td>20/10/2018</td>
                        <td><a href="#">Update</a></td>
                        <td><a href="#">Delete</a></td>
                 </tr>
                  <tr>
                        <td>BG1</td>
                        <td>Sen Đá Cỏ Ngọc</td>
                        <td><div class="crop">Sen Đá Cỏ Ngọc nay còn được gọi với một cái tên vô cùng duyên dáng ...</div></td>
                        <td>20/10/2018</td>
                        <td><a href="#">Update</a></td>
                        <td><a href="#">Delete</a></td>
                 </tr>
                  <tr>
                       <td>BG1</td>
                        <td>Sen Đá Cỏ Ngọc</td>
                        <td><div class="crop">Sen Đá Cỏ Ngọc nay còn được gọi với một cái tên vô cùng duyên dáng ...</div></td>
                        <td>20/10/2018</td>
                        <td><a href="#">Update</a></td>
                        <td><a href="#">Delete</a></td>
                 </tr>
            </table>
              <br>
              <a href="InsertBlog.jsp"><input type="submit" value="Insert"/></a>
        </div>
</body>
    
</html>
