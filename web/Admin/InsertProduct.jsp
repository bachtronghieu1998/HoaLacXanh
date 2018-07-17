<%-- 
    Document   : InsertProduct
    Created on : Jun 10, 2018, 1:27:46 PM
    Author     : hieu bach
--%>

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
            <h1 style="text-align: left;padding-bottom: 20px">Insert Products</h1>
            <form action="../ProductController">
                <table border="1 solid black" cellspacing="0" style="align-content: center">
                    <tr>
                        <th>Name</th>
                        <td><input name="pname" value=""/></td>
                    </tr>
                    <tr>
                        <th>Price</th>
                        <td><input name="price" value=""/></td>
                    </tr>
                    <tr>
                        <th>Type</th>
                        <td><input name="typeName" value=""/></td>
                    </tr>
                    <tr>
                        <th>Image name</th>
                        <td><input name="imageName" value=""/></td>
                    </tr>
                    <tr>
                        <th>Description</th>
                        <td>​<textarea name="content" id="txtArea" rows="10" cols="70"></textarea></td>
                    </tr>
                </table>
                <input type="submit" name="submit" value="Insert" style="margin-top: 20px;margin-bottom: 20px;padding: 10px"/> 
                <input type="submit" name="submit" value="Cancel" style="margin-top: 20px;margin-bottom: 20px;padding: 10px"/> 
            </form>
        </div>
    </body>
</html>

