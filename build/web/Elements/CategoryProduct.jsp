<%-- 
    Document   : CategoryProduct
    Created on : Jun 4, 2018, 9:37:53 AM
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
        <title>JSP Page</title>
        <link href="../CSS/CSS_CategoryProduct.css" rel="stylesheet" type="text/css"/>

    </head>
    <body>
        <div id="header2"></div>
        <div id="menu"></div>

        <div class="Category2">
            <a href="CategoryProduct.jsp?typeID=1" > 
                <c:if test="${param.typeID==1}"><span style="color: #3B5998;">Cactus</span></c:if>  
                <c:if test="${param.typeID!=1}">Cactus</c:if>
                </a>
                <a href="CategoryProduct.jsp?typeID=2"> 
                <c:if test="${param.typeID==2}"><span style="color: #3B5998;">Succulent</span></c:if>  
                <c:if test="${param.typeID!=2}">Succulent</c:if>

                </a>    
                <a href="CategoryProduct.jsp?typeID=3"> 
                <c:if test="${param.typeID==3}"><span style="color: #3B5998;"> Gardening tool</span></c:if>  
                <c:if test="${param.typeID!=3}"> Gardening tool</c:if>
                </a>
            </div>

        <jsp:useBean id="productTmp" class="userBean.ProductBean"></jsp:useBean>
        <jsp:setProperty name="productTmp" property="*"></jsp:setProperty>
            <form action="CategoryProduct.jsp">
                <div style="padding-top: 30px">
                    <p style="padding-left: 1000px"> From <input name="from" style="width: 100px" value=""/>  To <input name="to" style="width: 100px" value=""/>
                        <input type="hidden" name="typeID" value="${param.typeID}"/>
                    <input type="hidden" name="action" value="search"/>
                    <button class="btn buttonCatalog" style="display: inline-block;"><i class="glyphicon glyphicon-search"></i></button>
            </div>
        </form>

        <c:if test="${param.action eq 'search'}">
            <div style="padding-left: 70px;">
                <c:forEach var="k" items="${productTmp.selectProductByPrice()}" >
                    <div class="categoryTemp" >
                        <c:url var="productDetail" value="ProductDetail.jsp">
                            <c:param name="pid" value="${k.pid}"></c:param>
                            <c:param name="pname" value="${k.pname}"></c:param>
                            <c:param name="price" value="${k.price}"></c:param>
                            <c:param name="imageName" value="${k.imageName}"></c:param>
                            <c:param name="content" value="${k.content}"></c:param>
                            <c:param name="typeName" value="${k.typeName}"></c:param>
                        </c:url>
                        <a href="${productDetail}" style="text-decoration: none">
                            <p><img src="../images/${k.imageName} "/></p>
                            <p>${k.pname}</p>
                            <p>${k.price} đ</p>
                        </a>
                    </div>
                </c:forEach>         
            </div>
            
            <!--Pagination-->
            <div class="text-center">
                <c:forEach var="k" begin="1" end="${productTmp.pagesByPrice}" step="1">
                    <ul class="pagination">
                        <c:url var="m" value="CategoryProduct.jsp">
                            <c:param name="typeID" value="${param.typeID}"></c:param>
                            <c:param name="page" value="${k}"></c:param>
                            <c:param name="pageSize" value="6"></c:param>
                        </c:url>
                        <li><a href="${m}">${k}</a></li>
                    </ul>
                </c:forEach>

            </div>
        </c:if>  

        <!--       Contain-->

        <c:if test="${param.action != 'search'}">
            <div style="padding-left: 70px;">
                <c:forEach var="k" items="${productTmp.selectAllByTypeID()}" >
                    <div class="categoryTemp" >
                        <c:url var="productDetail" value="ProductDetail.jsp">
                            <c:param name="pid" value="${k.pid}"></c:param>
                            <c:param name="pname" value="${k.pname}"></c:param>
                            <c:param name="price" value="${k.price}"></c:param>
                            <c:param name="imageName" value="${k.imageName}"></c:param>
                            <c:param name="content" value="${k.content}"></c:param>
                            <c:param name="typeName" value="${k.typeName}"></c:param>
                        </c:url>
                        <a href="${productDetail}" style="text-decoration: none">
                            <p><img src="../images/${k.imageName} "/></p>
                            <p>${k.pname}</p>
                            <p>${k.price} đ</p>
                        </a>
                    </div>
                </c:forEach>         
            </div>

            <!--Pagination-->
            <div class="text-center">
                <c:forEach var="k" begin="1" end="${productTmp.pagesByID}" step="1">
                    <ul class="pagination">
                        <c:url var="m" value="CategoryProduct.jsp">
                            <c:param name="typeID" value="${param.typeID}"></c:param>
                            <c:param name="page" value="${k}"></c:param>
                            <c:param name="pageSize" value="6"></c:param>
                        </c:url>
                        <li><a href="${m}">${k}</a></li>
                    </ul>
                </c:forEach>

            </div>
        </c:if>




        <div id="footer"></div>


    </body>
</html>
