<%-- 
    Document   : Cart
    Created on : Jun 17, 2018, 12:56:10 PM
    Author     : hieu bach
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
        <link href="../CSS/Cart.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div id="header2"></div>
        <jsp:include page="menu.jsp"></jsp:include>
        <c:if test="${param.exited == 'false'}">
            <script>
                alert("Please login first");
            </script>
        </c:if>
        <c:if test="${param.orderStatus == 'success'}">
            <script>
                alert("Order successful");
            </script>
        </c:if>
        <h1 style="text-align: center;padding-top: 50px">My Cart</h1>
        <c:choose>
            <c:when test="${empty sessionScope.Cart}">
                <h3 style="padding: 20px;text-align: center">Your cart is empty</h3>
            </c:when>
            <c:otherwise>
                <div class="cartItems">
                    <div class="row line row_temp">
                        <div class="font">
                            <div class="col-sm-6">
                                <p>MyCart (${sessionScope.Cart.items.size()})</p> 
                            </div>
                            <div class="col-sm-2">
                                <p>Price</p>
                            </div>
                            <div class="col-sm-2">
                                <p> Quantity</p>
                            </div>
                            <div class="col-sm-2">
                                <p> Total</p>
                            </div>  
                        </div>
                    </div>

                    <c:forEach var="k" items="${sessionScope.Cart.items}">
                        <!--       item 1-->
                        <div class="row line row_temp">
                            <div class="col-sm-6">
                                <div class="row row_temp">
                                    <div class="col-sm-4 col_temp">
                                        <img src="../images/${k.imageName}"/>
                                    </div>
                                    <div class="col-sm-5">
                                        <p>${k.productName}</p>
                                        <p><a href="#">Remove</a></p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-2 col_infor">
                                ${k.price}
                            </div>
                            <div class="col-sm-2 col_infor">

                                <form action="../AddCart"> 
                                    <input type="hidden" name="action" value="update">
                                    <input type="hidden" name="pname" value="${k.productName}">
                                    <input type="hidden" name="pid" value="${k.pid}">
                                    <input type="hidden" name="price" value="${k.price}">
                                    <input type="hidden" name="imageName" value="${k.imageName}"/>
                                    <p><input name="quantity" type="text" style="width: 60px" value="${k.quantity}" min="1"/></p>
                                    <input type="submit" class="btn btn-primary" style="width: 70%;margin-top: 10px" value="Update">
                                </form>
                            </div>
                            <div class="col-sm-2 col_infor">
                                ${k.total}
                            </div>   
                        </div> 

                    </c:forEach>

                    <!--                Get total-->
                    <div class="total">
                        <h3>
                            <span>Total:</span><span style="padding-left: 30px"> ${sessionScope.Cart.total}</span>  
                        </h3>

                        <c:if test="${empty sessionScope.uname}">
                            <c:url var="k" value="Cart.jsp">
                                <c:param name="exited" value="false"></c:param>
                            </c:url>
                            <p><a href="${k}"><input type="button" style="width: 70%;margin-top: 10px" class="btn btn-danger" value="Check Out"/></a></p>
                        </c:if>
                        <c:if test="${sessionScope.error eq ''}"> 
                            <p><a href="../AddOrder"><input type="button" style="width: 70%;margin-top: 10px" class="btn btn-danger" value="Check Out"/></a></p>
                        </c:if>



                    </div>
                </div>
            </c:otherwise>
        </c:choose>    


        <div id="footer"></div>
    </body>
</html>
