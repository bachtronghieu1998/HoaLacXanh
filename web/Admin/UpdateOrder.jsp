<%-- 
    Document   : UpdateOrder
    Created on : Jun 10, 2018, 12:46:46 PM
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
        <jsp:useBean id="order" class="bean.OrderBean"></jsp:useBean>
        <jsp:setProperty name="order" property="*"></jsp:setProperty>

            <div class="main">
                <h1 style="text-align: left;padding-bottom: 20px">Update Products</h1>
                <form action="../OrderController">
                    <table border="1 solid black" cellspacing="0" style="align-content: center">
                    <c:forEach var="s" items="${order.selectAll()}">
                        <c:if test="${param.orderID==s.orderID}" >
                            <tr>
                                <th style="padding:20px">User ID</th>
                                <td style="width: 80%;padding: 10px">${s.userID}</td>
                            </tr>
                            <tr>
                                <th style="padding:20px">OrderID</th>
                                <td style="padding: 10px">${s.orderID}</td>
                            </tr>   
                            <tr>
                                <th style="padding:20px">Date</th>
                                <td style="padding: 10px">${s.time}</td>
                            </tr>
                            <tr>
                                <th style="padding:20px">Status</th>
                                <td><select name="status">
                                        <c:forEach var="o" items="${order.selectStatus()}">

                                            <c:if test="${param.statusID==o.statusID}" >
                                                <option selected="selected" value="${o.statusID}">${o.statusName}</option>
                                            </c:if>
                                            <c:if test="${param.statusID!=o.statusID}" >
                                                <option value="${o.statusID}">${o.statusName}</option>
                                            </c:if>   
                                        </c:forEach>

                                    </select></td>

                            </tr>
                        </c:if>
                    </c:forEach>

                </table>
                    <input type="hidden" name="orderID" value="${param.orderID}"/>

                <input type="submit" name="submit" value="Update" style="margin-top: 20px;margin-bottom: 20px;padding: 10px"/> 
                <input type="submit" name="submit" value="Cancel" style="margin-top: 20px;margin-bottom: 20px;padding: 10px"/> 


            </form>
        </div>
    </body>
</html>
