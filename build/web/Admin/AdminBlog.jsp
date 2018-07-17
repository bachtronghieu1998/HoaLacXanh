<%-- 
    Document   : AdminBlog
    Created on : Jun 10, 2018, 12:32:13 PM
    Author     : hieu bach
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
      <jsp:useBean id="blog" class="AdminBlogBean.BlogBean" scope="session"/>
        <jsp:setProperty name="blog" property="*"/>
        <!--Load Data-->
        <div class="main">
            <h1 style="text-align: left; padding-bottom: 20px">View Blog</h1>
            <form action="../BlogServlet">              
                
            <table border="1 solid black" style="table-layout: fixed" >
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Image</th>
                    <th>Content</th>
                    <th>Date</th>
                    <th colspan="2"></th>
                    
                </tr>
                <tr></tr>
                <c:forEach var="b" items="${blog.selectAll()}">                
                <tr>
                    
                    <td>${b.id}</td>
                    <td>${b.name}</td>
                    <td>${b.image}</td>
                    <td>${b.content}</td>
                    <td>${b.time}</td>
                    <td><c:url var="Update" value="UpdateBlog.jsp">                                
                                <c:param name="blogID" value="${b.id}"></c:param>                                                          
                            </c:url>
                        <a href="${Update}">Update</a></td>
                    <td><c:url var="Delete" value="../BlogDelete">                                
                                <c:param name="blogID" value="${b.id}"></c:param>
                            </c:url>
                            <a href="${Delete}"  onclick="return confirm('Delete confirmation?')">Delete</a></td>
            </tr>
            </c:forEach>                
            </table>
            </form>
              <br>
              <a href="InsertBlog.jsp"><input type="submit" value="Insert Blog"/></a>
        </div>
</body>
    
</html>
