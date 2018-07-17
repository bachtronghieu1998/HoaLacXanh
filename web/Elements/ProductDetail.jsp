<%-- 
    Document   : ProductDetail
    Created on : Jun 14, 2018, 10:58:06 PM
    Author     : hieu bach
--%>

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
        <link href="../CSS/Css_ProductDetail.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <div id="header2"></div>
        <div id="menu"></div>
        <form action="../AddCart" class="padd" >
            <table class="center">
                <tr>
                    <td>
                        <img src="../images/${param.imageName}"/>
                    </td>
                    <td class="infor">
                        <h1>${param.pname}</h1>
                        <div>
                            <span class="fa fa-star checked"></span>
                            <span class="fa fa-star checked"></span>
                            <span class="fa fa-star checked"></span>
                            <span class="fa fa-star"></span>
                            <span class="fa fa-star"></span>
                        </div>
                        <h3>${param.price} đ</h3>
                        <h3>Description</h3>
                        <p>${param.content}</p>
                        <h3><span> Quantity </span></h3>
                        <p><input name="quantity" type="number" style="width: 60px" value="1" min="0"/></p>
                        <p style="padding-top: 10px"><input type="submit" value="Add to cart" class="btn btn-danger"/></p>
                        
                    </td>
                </tr>
            </table>
                        <input type="hidden" name="action" value="add">
                        <input type="hidden" name="pname" value="${param.pname}">
                        <input type="hidden" name="pid" value="${param.pid}">
                        <input type="hidden" name="price" value="${param.price}">
                        <input type="hidden" name="imageName" value="${param.imageName}"/>
<!--                        fix later-->
                         
        </form>
        <div id="footer"></div>
    </body>
</html>
