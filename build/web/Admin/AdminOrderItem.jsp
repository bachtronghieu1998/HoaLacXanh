<%-- 
    Document   : AdminOrderItem
    Created on : Jun 10, 2018, 1:19:25 PM
    Author     : hieu bach
--%>

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
        <!--Load Data-->
        <div class="main">
            <h1 style="text-align: left; padding-bottom: 20px">View Order Detail</h1>
            <table border="1 solid black" style="table-layout: fixed" >
                <tr>
                    <th style="padding: 40px">ProductID</th>
                    <th style="padding: 40px">Quantity</th>
                    <th style="padding: 40px">Price</th>
                </tr>
                <tr>
                    <td>P1</td>
                    <td>3</td>
                     <td>10.000đ</td>
                </tr>
                <tr>
                    <td>P2</td>
                    <td>3</td>
                    <td>10.000đ</td>
                </tr>
                <tr>
                    <td>P3</td>
                    <td>3</td>
                    <td>10.000đ</td>
                </tr>
                <tr>
                    <td>P4</td>
                    <td>3</td>
                     <td>10.000đ</td>
                </tr>
            </table>
            <h3>Total product: 4</h3>

        </div>
    </body>
</html>


