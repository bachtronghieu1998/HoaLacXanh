<%-- 
    Document   : Cataloge
    Created on : Jul 12, 2018, 3:34:20 PM
    Author     : hieu bach
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
        <link href="../CSS/CSS_cataloge.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="cataloge">
            <table>
                <tr>
                    <td>
                        <div style="background-image: url(../images/cactus.jpg);" id="cata">
                            <h4><b><a href="CategoryProduct.jsp?typeID=1" style="color: white;text-decoration: none">Cactus</a></b></h4>
                        </div>
                    </td>
                    <td>
                        <div style="background-image: url(../images/succulent.jpg);"  id="cata"> 
                            <h4><a href="CategoryProduct.jsp?typeID=2" style="color: white;text-decoration: none"><b>Succulent</b></a></h4>

                        </div>
                    </td>
                    <td>
                        <div style="background-image: url(../images/tool.jpg);" id="cata"> 
                            <h4><a href="CategoryProduct.jsp?typeID=3" style="color: white;text-decoration: none"><b>Gardening tool</b></a></h4>

                        </div>
                    </td>
                </tr>
            </table>
        </div>
    </body>
</html>

