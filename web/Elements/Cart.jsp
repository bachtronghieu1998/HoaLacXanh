<%-- 
    Document   : Cart
    Created on : Jun 17, 2018, 12:56:10 PM
    Author     : hieu bach
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <div id="menu"></div>

        <form>
            <h1 style="text-align: center;padding-top: 50px">My Cart</h1>
            <div class="cartItems">
                <div class="row line row_temp">
                    <div class="font">
                        <div class="col-sm-6">
                            <p>MyCart (3)</p> 
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

                <!--       item 1-->
                <div class="row line row_temp">
                    <div class="col-sm-6">
                        <div class="row row_temp">
                            <div class="col-sm-4 col_temp">
                                <img src="../images/cactus2.jpg"/>
                            </div>
                            <div class="col-sm-5">
                                <p>Cactus 1</p>
                                <p><a href="#">Remove</a></p>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-2 col_infor">
                        10000
                    </div>
                    <div class="col-sm-2 col_infor">
                        <p><input type="number" style="width: 60px" value="1" min="0"/></p>
                    </div>
                    <div class="col-sm-2 col_infor">
                        10000đ
                    </div>   
                </div>

                <!--item 2-->
                <div class="row line row_temp">
                    <div class="col-sm-6">
                        <div class="row row_temp">
                            <div class="col-sm-4 col_temp">
                                <img src="../images/cactus4.jpg"/>
                            </div>
                            <div class="col-sm-5">
                                <p>Cactus 1</p>
                                <p><a href="#">Remove</a></p>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-2 col_infor">
                        10000
                    </div>
                    <div class="col-sm-2 col_infor">
                        <p><input type="number" style="width: 60px" value="1" min="0"/></p>
                    </div>
                    <div class="col-sm-2 col_infor">
                        10000đ
                    </div>        
                </div>

                <!--item 3-->
                <div class="row line row_temp">
                    <div class="col-sm-6">
                        <div class="row row_temp">
                            <div class="col-sm-4 col_temp">
                                <img src="../images/cactus6.jpg"/>
                            </div>
                            <div class="col-sm-5">
                                <p>Cactus 1</p>
                                <p><a href="#">Remove</a></p>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-2 col_infor">
                        10000
                    </div>
                    <div class="col-sm-2 col_infor">
                        <p><input type="number" style="width: 60px" value="1" min="0"/></p>
                    </div>
                    <div class="col-sm-2 col_infor">
                        10000đ
                    </div>  
                </div>         

                <!--                Get total-->
                <div class="total">
                    <h3>
                        <span>Total:</span><span style="padding-left: 30px"> 30000đ</span>  
                    </h3>
                    <p><input type="button" style="width: 70%;margin-top: 10px" class="btn btn-danger" value="Check Out"/></p>
                </div>

            </div>
        </form>

        <div id="footer"></div>
    </body>
</html>
