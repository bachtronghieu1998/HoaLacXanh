<%-- 
    Document   : SideNav
    Created on : Jul 18, 2018, 4:33:28 PM
    Author     : hieu bach
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
         <meta charset="UTF-8">
         <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href="../CSS/SideNav.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        
         <div class="sidenav">
            <div class="row">
                <div class="col-sm-4"> <img src="../images/cactus1.jpg" class="avatar"/></div>
                <div class="col-sm-8" id="ava_name">
                    <h3>Hello</h3>
                    <h3>${sessionScope.username} !!</h3>
                </div>
            </div>
            <a href="AdminSanPham.jsp" >Product</a>
            <a href="AdminOrder.jsp">Order</a>
            <a href="AdminBlog.jsp">Blog</a>
            <a href="AdminUser.jsp">User</a>
             <a href="ChangePassWord.jsp" style="float: bottom">Change password</a>
              <a href="Admin_Add_New_Admin.jsp" style="float: bottom">Add admin</a>
              <a href="AdminLogin.jsp" style="float: bottom">Log Out</a>
        </div>
        
    </body>
</html>

