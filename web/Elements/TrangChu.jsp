<%-- 
    Document   : TrangChu
    Created on : May 26, 2018, 4:07:51 PM
    Author     : hieu bach
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="CSS/MyCSS.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script>
            $(function () {
                $('#header2').load("header.html");
                $('#menu').load("menu.jsp");
                $('#cataloge').load("Cataloge.html?page=");
                $('#newArrval').load("NewArrival.jsp");
                $('#blog').load("blog.html");
                $('#footer').load("footer.html");
            });
        </script>
    </head>
    <body>
        <c:if test="${not empty param.error}">
            <script>
                alert("${param.error}");
            </script>
        </c:if>
         <c:if test="${param.addNew == 'success'}">
            <script>
                alert("Add successful");
            </script>
        </c:if>   
        <div id="header2"></div>
       <jsp:include page="menu.jsp"></jsp:include>
        <div id="cataloge"></div>
        <jsp:include page="NewArrival.jsp"></jsp:include>
         <jsp:include page="blogMain.jsp"></jsp:include>
        <div id="footer"></div>
    </body>
</html>
