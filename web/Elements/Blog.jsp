<%-- 
    Document   : Blog
    Created on : Jun 15, 2018, 12:52:02 AM
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
        <title>JSP Page</title>
        <link href="../CSS/Blog.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <jsp:useBean id="b" class="bean.BeanBlog" scope="session"/>
        <jsp:setProperty name="b" property="*"/>
        <div id="header2"></div>
        <div id="menu"></div>
        <!--        Blog-->
        <div class="blog_temp" style="padding-top: 50px">
             <h1  style="text-align: center;">My Blog</h1>
              <h4  style="text-align: center;">Here is the place we share everything we know</h4>
        </div>
       
           
        <form>
            
        <div class="blog1">
            <div class="row1">
                <c:forEach var="i" items="${b.blogs}">
                    <c:url var="Detail" value="BlogDetail.jsp">                                
                                <c:param name="id" value="${i.id}"></c:param>                                                          
                            </c:url>                        
                <a href="${Detail}"> <div class="post" style="border: 1px solid black">                        
                        <h5>${i.time}</h5>
                        <h3>${i.name}</h3>
                        
                        <hr>
                    </div>
                </a>                
                </c:forEach>
            </div>            
            <p>
            <!--Show  paging navigator-->
            <c:forEach begin='1' end="${b.pages}" step="1" var="i">
                <c:url var="next" value="Blog.jsp">
                    <c:param name="page">${i}</c:param>
                    <c:param name="pageSize">${param.pageSize}</c:param>
                </c:url>
                <a href="${next}">${i}</a> |
            </c:forEach>
            </p>
            
        </div>
        </form>
        <div id="footer"></div>
    </body>
</html>
