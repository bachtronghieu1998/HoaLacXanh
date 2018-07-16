<%-- 
    Document   : BlogDetail
    Created on : Jun 15, 2018, 11:33:08 AM
    Author     : hieu bach
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <script>

            $(function () {
                $('#header2').load("header.html");
                $('#menu').load("menu.jsp");
                $('#footer').load("footer.html");
            });
        </script>
        <link href="../CSS/BlogDetail.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <jsp:useBean id="blog" class="bean.BeanBlogDetail"></jsp:useBean>
        <jsp:setProperty name="blog" property="*"></jsp:setProperty>
        <div id="header2"></div>
        <div id="menu"></div>
        <form>
        <c:forEach var="b" items="${blog.selectByID()}">
                <div class="blog_detail" style="border: 1px solid #cccccc">
                    <p style="float: right">Date: ${b.time}</p>
                    <h1> ${b.name}</h1>                    
                    <p>   
                        ${b.content}
                    </p>        
                </div>
            </c:forEach>
        </form>

        
        <div id="footer"></div>
    </body>
</html>
