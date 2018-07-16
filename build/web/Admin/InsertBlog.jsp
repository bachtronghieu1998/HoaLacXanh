<%-- 
    Document   : InsertBlog
    Created on : Jun 10, 2018, 1:27:23 PM
    Author     : hieu bach
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
            <h1 style="text-align: left;padding-bottom: 20px">Insert Blogs</h1>
            <form action="../BlogInsert">
                <table border="1 solid black" cellspacing="0" style="align-content: center">
                    <tr>
                         <th>ID</th>
                         <td><input value="" disabled=""/></td>
                    </tr>
                    <tr>
                        <th>Title</th>
                        <td><input name="name" value=""/></td>
                    </tr>
                    <tr>
                        <th>Date</th>
                        <td><input name="time" value=""/></td>
                    </tr>
                    <tr>
                        <th>Content</th>
                        <td>​<textarea name="content" id="txtArea" rows="10" cols="70"></textarea></td>
                    </tr>
                    
                </table>
                <c:if test="${not empty param.message}">
                    <h2>Message: ${param.message}</h2>
                </c:if>
                
                <input name="insert" type="submit" value="Insert" style="margin-top: 20px;margin-bottom: 20px;padding: 10px"/> 
                <input name="cancel" type="submit" value="Cancel" style="margin-top: 20px;margin-bottom: 20px;padding: 10px"/> 

               
            </form>
        </div>
    </body>
</html>
