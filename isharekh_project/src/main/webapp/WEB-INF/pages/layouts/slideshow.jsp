<%--
  Created by IntelliJ IDEA.
  User: HTPP
  Date: 04/10/2018
  Time: 5:21 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
</head>
<body>
<div>
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner" style="height: 260px">
            <div class="item active">
                <img src="//www.visit-angkor.org/wp-content/uploads/2013/01/Khmer-Portrait.jpg" alt="Los Angeles" style="width:100%; height: 260px;"/>
            </div>

            <div class="item">
                <img src="//www.visit-angkor.org/wp-content/uploads/2013/01/Khmer-Portrait.jpg" alt="Chicago" style="width:100%;  height: 260px;"/>
            </div>

            <div class="item">
                <img src="//www.visit-angkor.org/wp-content/uploads/2013/01/Khmer-Portrait.jpg" alt="New york" style="width:100%;  height: 260px;"/>
            </div>
        </div>

        <!-- Left and right controls -->
        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
</div>
</body>
</html>
