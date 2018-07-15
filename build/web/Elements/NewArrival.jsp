<%-- 
    Document   : NewArrival
    Created on : Jul 13, 2018, 8:14:25 AM
    Author     : hieu bach
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href="../CSS/CSS_new_Arrival.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <jsp:useBean id="newArrival" class="Paging.NewArrivalPaging"></jsp:useBean>
        <jsp:setProperty name="newArrival" property="*"></jsp:setProperty>
            <div class="NewArrival">
                <h2>___________  New Arrivals  ___________</h2>                                           
                <div class="slideshow-container">
                <c:forEach var="k" step="1" begin="1" end="3">
                    <jsp:setProperty name="newArrival" property="page" value="${k}"></jsp:setProperty>
                        <div class="mySlides fade" >
                            <table>
                                <tr>
                                <c:forEach var="k" items="${newArrival.selectNewProduct()}">
                                    <td>
                                        <c:url var="productDetail" value="ProductDetail.jsp">
                                            <c:param name="pid" value="${k.pid}"></c:param>
                                            <c:param name="pname" value="${k.pname}"></c:param>
                                            <c:param name="price" value="${k.price}"></c:param>
                                            <c:param name="imageName" value="${k.imageName}"></c:param>
                                            <c:param name="content" value="${k.content}"></c:param>
                                            <c:param name="typeName" value="${k.typeName}"></c:param>
                                        </c:url>
                                         <a href="${productDetail}" style="text-decoration: none">
                                            <img src="../images/${k.imageName}" alt=""/>
                                            <h4>${k.pname}</h4>
                                            <p>${k.price}</p>
                                        </a>
                                    </td>
                                </c:forEach>
                            </tr>
                        </table>
                    </div>
                </c:forEach> 

                <a  class="prev" onclick="plusSlides(-1)">&#10094;</a>
                <a class="next" onclick="plusSlides(1)">&#10095;</a>
            </div>



        </div>
        <br>
    </div>

    <script>
        var slideIndex = 1;
        showSlides(slideIndex);

        function plusSlides(n) {
            showSlides(slideIndex += n);
        }

        function currentSlide(n) {
            showSlides(slideIndex = n);
        }

        function showSlides(n) {
            var i;
            var slides = document.getElementsByClassName("mySlides");
            var dots = document.getElementsByClassName("dot");
            if (n > slides.length) {
                slideIndex = 1
            }
            if (n < 1) {
                slideIndex = slides.length
            }
            for (i = 0; i < slides.length; i++) {
                slides[i].style.display = "none";
            }
            for (i = 0; i < dots.length; i++) {
                dots[i].className = dots[i].className.replace(" active", "");
            }
            slides[slideIndex - 1].style.display = "block";
            dots[slideIndex - 1].className += " active";
        }
    </script>
</body>
</html>
