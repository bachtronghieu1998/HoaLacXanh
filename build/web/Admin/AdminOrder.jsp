<%-- 
    Document   : AdminOrder
    Created on : Jun 10, 2018, 1:15:18 PM
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
        <jsp:include page="SideNav.jsp"></jsp:include>
        <jsp:useBean id="order" class="bean.OrderBean"></jsp:useBean>
        <jsp:setProperty name="order" property="*"></jsp:setProperty>

            <!--Load Data-->
            <div class="main">
                <h1 style="text-align: left; padding-bottom: 20px">View Order</h1>
                <table border="1 solid black" style="table-layout: fixed" >
                    <tr>
                        <th>OrderID</th>
                        <th>User Name</th>
                        <th>Date</th>
                        <th>Status</th>
                        <th colspan="2"></th>
                        <c:forEach var="s" items="${order.selectAll()}">
                    <tr>
                        <td>
                            <c:url var="orderDetails" value="AdminOrderItem.jsp">
                                <c:param name="action" value="viewDetail"></c:param>
                                <c:param name="orderID" value="${s.orderID}"></c:param>
                            </c:url>
                            <a href="${orderDetails}">${s.orderID}</a>
                        </td>
                        <td>${s.name}</td>
                        <td>${s.time}</td>
                        <td>${s.statusName}</td>

                        <td>
                            <c:url var="updateOrder" value="UpdateOrder.jsp">
                                <c:param name="action" value="update"></c:param>
                                <c:param name="orderID" value="${s.orderID}"></c:param>
                                <c:param name="statusID" value="${s.statusID}"></c:param>
                            </c:url>
                            <a href="${updateOrder}">Update</a>
                        </td>
                    </tr>


                </c:forEach>        
                </tr>
                
            </table>


        </div>


    </body>
</html>

