<%-- 
    Document   : UpdateForm
    Created on : Jun 10, 2018, 11:05:06 AM
    Author     : hieu bach
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
            <a href=""></a>
            <div class="main">
                <h1 style="text-align: left;padding-bottom: 20px">Update Products</h1>
                <form action="../ProductController">
                    <table border="1 solid black" cellspacing="0" >
                        <tr>
                            <th>ID</th>
                            <td><input name="pid" value="${param.pid}" readonly/></td>
                    </tr>
                    <tr>
                        <th>Name</th>
                        <td><input name="pname" value="${param.pname}"/></td>
                    </tr>
                    <tr>
                        <th>Price</th>
                        <td><input name="price" value="${param.price}"/></td>
                    </tr>
                    <tr>
                        <th>Type</th>
                        <td><input name="typeName" value="${param.typeName}"/></td>
                    </tr>
                    <tr>
                        <th>ImageName</th>
                        <td><input name="imageName" value="${param.imageName}"/></td>
                    </tr>
                    <tr>
                        <th>Description</th>
                        <td>​<textarea name="content" id="txtArea" rows="20" cols="70" style="height: 100%"> ${param.content}</textarea></td>
                    </tr>

                </table>
                <input type="submit" name="submit" value="Update" style="margin-top: 20px;margin-bottom: 20px;padding: 10px"/> 
                <input type="submit" name="submit" value="Cancel" style="margin-top: 20px;margin-bottom: 20px;padding: 10px"/>
            </form>


        </div>
    </body>
</html>
