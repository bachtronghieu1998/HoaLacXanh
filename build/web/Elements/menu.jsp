<%-- 
    Document   : menu
    Created on : May 26, 2018, 10:41:56 PM
    Author     : hieu bach
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="../CSS/CSS_nav.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <nav class="nav-bar navbar-fixed-top" id="temp_menu">
            <a href="TrangChu.jsp">Home</a>
            <a  href="CategoryProduct.jsp?typeID=1">Shop</a>
            <a  href="Blog.jsp">Blog</a>
            <a  href="Cart.jsp" ><span class="glyphicon glyphicon-shopping-cart"></span></a>
            <a  href="#" class="right" onclick="document.getElementById('login').style.display = 'block'"><span class="glyphicon glyphicon-log-in"></span> Login</a>
        </nav>

        <!--        Modal-->
        <div id="login" class="modal">
            <span onclick="document.getElementById('login').style.display = 'none'" class="close">&times;</span>
            <form class="modal-content animate">
                <h2 align="center">LOGIN</h2>
                <div class="row">
                    <div class="col-sm-7">
                        <label><b>User name</b></label><br/>
                        <input type="text" placeholder="Enter Username" name="uname"/><br/>
                        <label><b>PassWord</b></label><br/>
                        <input type="password" placeholder="Enter PassWord" name="psw"/><br/>
                        <button type="submit" class="btn btn-success">Login</button>
                        <button type="button"  onclick="document.getElementById('login').style.display = 'none'" class="btn btn-danger">Cancel</button>
                        <p style="padding-top: 15px"><a href="SignUp.jsp">Sign Up</a> if you dont have account</p>
                    </div>
                    <div class="col-sm-5">
                        <button class="btn btn-primary btn-block" style="padding: 20px"><a style="text-decoration: none;color: white">Facebook</a></button>
                        <br>
                        <button style="background: #dd4b39;padding: 20px;color: white;width: 100%"><a style="text-decoration: none;color: white">Google</a></button>
                    </div>
                </div>
            </form>
        </div>
       
    </body>
</html>

