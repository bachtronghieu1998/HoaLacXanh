<%-- 
    Document   : AdminLogin
    Created on : Jun 11, 2018, 8:11:12 AM
    Author     : hieu bach
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="../CSS/Ad_Login.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
    <c:if test="${param.error != null}">
            <script>
                alert("${param.error}");
            </script>
        </c:if>
        <form action="../LoginController">
            <h2>Login to Admin</h2>
            <table border="1 solid black"  cellspacing="0" class="center">
                <tr>
                    <th>Admin ID</th>
                    <td><input value="" name="username"></td>
                </tr>
                <tr>
                    <th>Password</th>
                    <td><input type="password" name="password" value=""></td>
                </tr>
            </table>
            <br>
            <input type="submit" value="Login" style="width: 10%;margin-left: 600px" />
        </form>
    </body>
</html>
