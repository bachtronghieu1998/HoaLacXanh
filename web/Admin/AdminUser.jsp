<%-- 
    Document   : AdminUser
    Created on : Jun 10, 2018, 1:07:00 PM
    Author     : hieu bach
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="Admin.css">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href="../CSS/Admin.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        
        <jsp:include page="SideNav.html"></jsp:include>
        <jsp:useBean id="user" class="bean.UserBean"></jsp:useBean>
        <jsp:setProperty name="user" property="*"></jsp:setProperty>
        <c:if test="${not empty param.action &&param.action=='delete'}">
            ${user.deleteUser()}
        </c:if>
        <!--Load Data-->
        <div class="main">
            <h1 style="text-align: left; padding-bottom: 20px">View User</h1>
            <table border="1 solid black" style="table-layout: fixed" >
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Address</th>
                    <th>Phone</th>
                    <th colspan="2"></th>                   
                </tr>
                <c:forEach var="s" items="${user.selectAll()}">
                    <tr>
                        <td>${s.userID}</td>
                        <td>${s.name}</td>
                        <td>${s.email}</td>
                        <td>${s.address}</td>
                        <td>${s.phone}</td>
                        <td>
                            <c:url var="delete" value="AdminUser.jsp">
                                <c:param name="action" value="delete"></c:param>
                                <c:param name="userID" value="${s.userID}"></c:param>
                            </c:url>
                            <a href="${delete}">Delete </a>
                        </td>
                    </tr>


                </c:forEach>

            </table>





        </div>


    </body>
</html>
