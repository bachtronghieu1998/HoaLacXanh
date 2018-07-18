<%-- 
    Document   : UpdateBlog
    Created on : Jun 10, 2018, 12:34:36 PM
    Author     : hieu bach
--%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>        
        <title>JSP Page</title>
        <link href="../CSS/Ad_UpdateForm.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body>
        <jsp:include page="SideNav.html"></jsp:include>
        <jsp:useBean id="blog" class="AdminBlogBean.BlogBean" scope="session"/>
        <jsp:setProperty name="blog" property="id" value="${param.blogID}"/>
        <div class="main">
            <h1 style="text-align: left;padding-bottom: 20px">Update Blogs</h1>
            <form action="../BlogUpdate" method="POST">
                <table border="1 solid black" cellspacing="0" style="align-content: center">
                <c:forEach var="b" items="${blog.selectByID()}">
                    <tr>
                         <th>ID</th>
                         <td><input name="id1" value="${b.id}" readonly=""/></td>
                    </tr>
                    <tr>
                        <th>Title</th>
                        <td><input name="name" value="${b.name}"/></td>
                    </tr>
                    <tr>
                        <th>Date</th>
                        <td><input name="time" value="${b.time}"/></td>
                    </tr>
                    <tr>
                        <th>Content</th>
                        <td>​<textarea name="content" id="txtArea" rows="10" cols="70">${b.content}</textarea></td>
                    </tr>
                </c:forEach>
                    
                    
                </table>
                    <input name="update" type="submit" value="Update" style="margin-top: 20px;margin-bottom: 20px;padding: 10px"/> 
                    <input name="cancel" type="submit" value="Cancel" style="margin-top: 20px;margin-bottom: 20px;padding: 10px"/>

               
            </form>
        </div>
    </body>
</html>
