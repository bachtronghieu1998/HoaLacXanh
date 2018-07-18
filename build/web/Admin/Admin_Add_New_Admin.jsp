<%-- 
    Document   : Admin_Add_New_Admin
    Created on : Jun 11, 2018, 8:47:14 AM
    Author     : hieu bach
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
      <head>
	<link rel="stylesheet" type="text/css" href="Admin.css">
        <link href="../CSS/Ad_UpdateForm.css" rel="stylesheet" type="text/css"/>
         <meta charset="UTF-8">
         <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
    
    <jsp:include page="SideNav.html"></jsp:include>
        
        <!--Load Data-->
        <div class="main">
            <h1 style="text-align: left; padding-bottom: 20px">Add admin</h1>
           <table border="1 solid black"  cellspacing="0" class="center">
                <tr>
                    <th>Admin ID</th>
                    <td><input value=""></td>
                </tr>
                <tr>
                    <th>PassWord</th>
                    <td><input value=""></td>
                </tr>
                  <tr>
                    <th>Confirm PassWord</th>
                    <td><input value=""></td>
                </tr>
            </table>
            <br>
            <input type="submit" value="Login" />
        </div>
</body>
    
</html>
