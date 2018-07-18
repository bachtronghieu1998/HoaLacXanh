<%-- 
    Document   : UpdateBlog
    Created on : Jun 10, 2018, 12:34:36 PM
    Author     : hieu bach
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="../CSS/Ad_UpdateForm.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body>
        <jsp:include page="SideNav.html"></jsp:include>
        <div class="main">
            <h1 style="text-align: left;padding-bottom: 20px">Update Blogs</h1>
            <form>
                <table border="1 solid black" cellspacing="0" style="align-content: center">
                    <tr>
                         <th>ID</th>
                        <td><input value="BG1"/></td>
                    </tr>
                    <tr>
                        <th>Title</th>
                        <td><input value="Sen Đá Cỏ Ngọc"/></td>
                    </tr>
                    <tr>
                        <th>Date</th>
                        <td><input value="20/10/2018"/></td>
                    </tr>
                    <tr>
                        <th>Content</th>
                        <td>​<textarea id="txtArea" rows="10" cols="70">Sen Đá Cỏ Ngọc nay còn được gọi với một cái tên vô cùng duyên dáng ...</textarea></td>
                    </tr>
                    
                </table>
                <input type="submit" value="Update" style="margin-top: 20px;margin-bottom: 20px;padding: 10px"/> 
                 <input type="submit" value="Cancel" style="margin-top: 20px;margin-bottom: 20px;padding: 10px"/> 

               
            </form>
        </div>
    </body>
</html>
