<%-- 
    Document   : ChangePassWord
    Created on : Jun 20, 2018, 8:28:14 AM
    Author     : hieu bach
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <jsp:include page="SideNav.jsp"></jsp:include>
    <c:if test="${not empty param.result}">
        <h2 style="text-align: center;color: red">***${param.result}***</h2>        
    </c:if>
        <form class="main" action="../UpdatePSW">
        <h1 style="text-align: left; padding-bottom: 20px">Change PassWord</h1>
        <table border="1px solid black">
            <tr>
                <th>Old PassWord</th>
                <td><input type="password" name="oldPsw" value=""><span style="color: red">${param.oldPswError}</span></td>
            </tr>
            <tr>
                <th>New PassWord</th>
                <td><input type="password"  name="newPsw" value=""><span style="color: red">${param.passLengthError}</span></td>
            </tr>
            <tr>
                <th>Confirm PassWord</th>
                <td><input type="password"  name="cfPsw" value=""><span style="color: red">${param.sameInputError}</span></td>
            </tr>
        </table>
        <input type="submit" value="Update" style="margin-top: 20px"/>
    </form>
</body>
</html>
