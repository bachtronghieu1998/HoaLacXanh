<%-- 
    Document   : SignUp
    Created on : Jun 24, 2018, 10:59:56 PM
    Author     : hieu bach
--%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%--<%@page contentType="text/html" pageEncoding="UTF-8"%>--%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>       
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
       
        <link href="../CSS/SignUp.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
        <jsp:include page="menu.jsp"></jsp:include>
            <form class="modal-content1">
                <h2 align="center">Sign Up</h2>
                <label><b>User name</b></label><br/>
                <input type="text" placeholder="Enter Username" name="su_uname" required/><br/>
                <label><b>Address</b></label><br/>
                <input type="text" placeholder="Enter Address" name="address" required/><br/>
                 <label><b>Phone</b></label><br/>
                 <input type="tel" placeholder="Enter Phone" name="phone" required/><br/>
                <label><b>PassWord</b></label><br/>
                <input type="password" placeholder="Enter PassWord" name="su_psw" required/><br/>
                <label><b>Confirm PassWord</b></label><br/>
                <input type="password" placeholder="Confirm PassWord" name="cf_psw" required/><br/>
                <p> By creating an account you agree to our <a>Terms & Privacy.</a></p>
                <button type="submit" class="btn btn-success">Sign Up</button>
                <br/>
            </form>
     
        
        <jsp:include page="footer.jsp"></jsp:include>
        
    </body>
</html>
