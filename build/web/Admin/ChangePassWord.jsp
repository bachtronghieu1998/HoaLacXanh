<%-- 
    Document   : ChangePassWord
    Created on : Jun 20, 2018, 8:28:14 AM
    Author     : hieu bach
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href="../CSS/AdChangePsw.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <jsp:include page="SideNav.html"></jsp:include>
        <form class="main">
            <h1 style="text-align: left; padding-bottom: 20px">Change PassWord</h1>
            <table border="1px solid black">
                <tr>
                    <th>Old PassWord</th>
                    <td><input value=""></td>
                </tr>
                <tr>
                    <th>New PassWord</th>
                    <td><input value=""></td>
                </tr>
                <tr>
                    <th>Confirm PassWord</th>
                    <td><input value=""></td>
                </tr>
            </table>
            <input type="submit" value="Update" style="margin-top: 20px"/>
        </form>
    </body>
</html>
