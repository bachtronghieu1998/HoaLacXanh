<%-- 
    Document   : AdminOrder
    Created on : Jun 10, 2018, 1:15:18 PM
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
            <h1 style="text-align: left; padding-bottom: 20px">View Order</h1>
            <table border="1 solid black" style="table-layout: fixed" >
                <tr>
                    <th>OrderID</th>
                    <th>UserID</th>
                    <th>Date</th>
                    <th>Status</th>
                    <th colspan="2"></th>
                    
                </tr>
                 <tr>
                     <td><a href="AdminOrderItem.jsp">O1</a></td>
                        <td>U1</td>
                        <td>22/2/2012</td>
                        <td>Receive</td>
                        <td><a href="UpdateOrder.jsp">Update</a></td>
                        <td><a href="#">Delete</a></td>
                 </tr>
              <tr>
                  <td><a href="AdminOrderItem.jsp">O1</a></td>
                        <td>U1</td>
                        <td>22/2/2012</td>
                        <td>Receive</td>
                        <td><a href="#">Update</a></td>
                        <td><a href="#">Delete</a></td>
                 </tr>
                 <tr>
                     <td><a href="AdminOrderItem.jsp">O1</a></td>
                        <td>U1</td>
                        <td>22/2/2012</td>
                        <td>Receive</td>
                        <td><a href="#">Update</a></td>
                        <td><a href="#">Delete</a></td>
                 </tr>
                 <tr>
                     <td><a href="#">O1</a></td>
                        <td>U1</td>
                        <td>22/2/2012</td>
                        <td>Receive</td>
                        <td><a href="#">Update</a></td>
                        <td><a href="#">Delete</a></td>
                 </tr>
               <tr>
                     <td><a href="#">O1</a></td>
                        <td>U1</td>
                        <td>22/2/2012</td>
                        <td>Receive</td>
                        <td><a href="#">Update</a></td>
                        <td><a href="#">Delete</a></td>
                 </tr>                   <tr>
                  <tr>
                     <td><a href="#">O1</a></td>
                        <td>U1</td>
                        <td>22/2/2012</td>
                        <td>Receive</td>
                        <td><a href="#">Update</a></td>
                        <td><a href="#">Delete</a></td>
                 </tr>
            </table>
           
          
        </div>


</body>
</html>

