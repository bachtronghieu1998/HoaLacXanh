<%-- 
    Document   : UpdateOrder
    Created on : Jun 10, 2018, 12:46:46 PM
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
            <h1 style="text-align: left;padding-bottom: 20px">Update Products</h1>
            <form>
                <table border="1 solid black" cellspacing="0" style="align-content: center">
                    <tr>
                        <th style="padding:20px">User ID</th>
                         <td style="width: 80%;padding: 10px">U1</td>
                    </tr>
                    <tr>
                        <th style="padding:20px">OrderID</th>
                        <td style="padding: 10px">O1</td>
                    </tr>
                    <tr>
                        <th style="padding:20px">Date</th>
                        <td style="padding: 10px">20/10/2018</td>
                    </tr>
                     <tr>
                        <th style="padding:20px">Status</th>
                        <td><input value="Received"/></td>
                    </tr>
                    
                </table>
                <input type="submit" value="Update" style="margin-top: 20px;margin-bottom: 20px;padding: 10px"/> 
                 <input type="submit" value="Cancel" style="margin-top: 20px;margin-bottom: 20px;padding: 10px"/> 

               
            </form>
        </div>
    </body>
</html>
