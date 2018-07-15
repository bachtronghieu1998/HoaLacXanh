<%-- 
    Document   : Blog
    Created on : Jun 15, 2018, 12:52:02 AM
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
        <title>JSP Page</title>
        <link href="../CSS/Blog.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div id="header2"></div>
        <div id="menu"></div>
        <!--        Blog-->
        <div class="blog_temp" style="padding-top: 50px">
             <h1  style="text-align: center;">My Blog</h1>
              <h4  style="text-align: center;">Here is the place we share everything we know</h4>
        </div>
       
           
      
        <div class="blog1">
            <div class="row1">
                <a href="BlogDetail.jsp"> <div class="post" style="border: 1px solid black">
                        <img src="../images/cactus1.jpg"/>
                        <h5>15/6/2016</h5>
                        <h3>Tittle Post</h3>
                        <p class="crop">Create a blog post subtitle that summarizes your post in a few short, punchy sentences and entices your audience to continue reading. Welcome to your blog post.</p>
                        <hr>
                    </div>
                </a>
                <a href="BlogDetail.jsp"> <div class="post" style="border: 1px solid black">
                        <img src="../images/cactus1.jpg"/>
                        <h5>15/6/2016</h5>
                        <h3>Tittle Post</h3>
                        <p class="crop">Create a blog post subtitle that summarizes your post in a few short, punchy sentences and entices your audience to continue reading. Welcome to your blog post.</p>
                        <hr>
                    </div>
                </a>
            </div>
            <div class="row1">
                <a href="BlogDetail.jsp"> <div class="post" style="border: 1px solid black">
                        <img src="../images/cactus1.jpg"/>
                        <h5>15/6/2016</h5>
                        <h3>Tittle Post</h3>
                        <p class="crop">Create a blog post subtitle that summarizes your post in a few short, punchy sentences and entices your audience to continue reading. Welcome to your blog post.</p>
                        <hr>
                    </div>
                </a>
                <a href="BlogDetail.jsp"> <div class="post" style="border: 1px solid black">
                        <img src="../images/cactus1.jpg"/>
                        <h5>15/6/2016</h5>
                        <h3>Tittle Post</h3>
                        <p class="crop">Create a blog post subtitle that summarizes your post in a few short, punchy sentences and entices your audience to continue reading. Welcome to your blog post.</p>
                        <hr>
                    </div>
                </a>

            </div>

            <!--        Pagination-->
            <div style="padding-left: 380px">
                <ul class="pagination">
                    <li><a href="#">1</a></li>
                    <li><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#">4</a></li>
                </ul>
            </div>
        </div>
        <div id="footer"></div>
    </body>
</html>
