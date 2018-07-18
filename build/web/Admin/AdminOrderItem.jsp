<%-- 
    Document   : AdminOrderItem
    Created on : Jun 10, 2018, 1:19:25 PM
    Author     : hieu bach
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
          <jsp:useBean id="order" class="bean.OrderBean"></jsp:useBean>
        <jsp:setProperty name="order" property="*"></jsp:setProperty>
        <!--Load Data-->
        <div class="main">
            <h1 style="text-align: left; padding-bottom: 20px">View Order Detail</h1>
            <table border="1 solid black" style="table-layout: fixed" >
                <tr>
                    <th style="padding: 40px">ProductName</th>
                    <th style="padding: 40px">Quantity</th>
                    <th style="padding: 40px">Price</th>
                </tr>
                <c:set var="total" value="${0}"/>
            <c:forEach var="s" items="${order.sellectOrderDetail()}">
                <c:if test="${param.orderID==s.orderID}" >
                    <c:set var="total" value="${total + s.quantity}" />
                    <tr>
                        <td>${s.productID}</td>
                        <td>${s.quantity}</td>
                        <td>${s.price}</td>
                        
                    </tr>
                </c:if>
        </c:forEach>
            </table>
            <h3>Total product: ${total}</h3>

        </div>
    </body>
</html>


