<%--
  Created by IntelliJ IDEA.
  User: HTPP
  Date: 03/30/2018
  Time: 7:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en" xmlns='http://www.w3.org/1999/xhtml'>
<head>
    <title>videos</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="../css/ui/main.css" />

    <link href='http://fonts.googleapis.com/css?family=Work+Sans:400,600,700' rel='stylesheet' type='text/css'/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <!--correct -->
    <link rel="stylesheet" type="text/css" href="../css/ui/reset.css" />
    <link rel="stylesheet" type="text/css" href="../css/ui/style.css" />
    <link rel="stylesheet" type="text/css" href="../css/fronts/header-menu.css" />
    <script type="text/javascript" src="../dist/js/ui/modernizr.js"></script>
    <%--map--%>
    <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>
    <link rel="stylesheet" type="text/css" href="../css/fronts/jquery-gmaps-latlon-picker.css" />
    <script  async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDjcJ1TroezxIBTxRC3TJoQQbopTd6SRcw&callback=initMap"
            type="text/javascript"></script>

</head>
<body>
<div id="m_header">
    <%@ include file="../layouts/header.jsp"%>
</div>
<br><br><br><br>
<div>
    <%@ include file="../layouts/slideshow.jsp"%>
</div>
<%--{newstypes8.des--%>
<nav class="cd-gallery">
    <br>
    <center>
        <ul class="dropbtn">${newstypesSecond.des}</ul>
    </center>
</nav>

<ul class="cd-gallery">
    <c:forEach items="${videoitemtype8}" var="videoitemtype8">
        <li>
            <div class="cd-single-item">
                <a href="/front/detail/${videoitemtype8.id}">
                    <ul class="cd-slider-wrapper" style="height: 200px;">
                        <li class="selected">
                            <img src="https://img.purch.com/w/660/aHR0cDovL3d3dy5saXZlc2NpZW5jZS5jb20vaW1hZ2VzL2kvMDAwLzAzMS85MjAvb3JpZ2luYWwvc2h1dHRlcnN0b2NrXzExMDkxNzg4My5qcGc=" class="selected backend-image" style="height: 200px;" />
                            <img src="https://cdn.iconscout.com/public/images/icon/free/png-512/youtube-social-media-3f1a5400c5182326-512x512.png" class="frontend-image selected"/>
                        </li>
                    </ul>
                </a>

                <button class="cd-customization-trigger">Customize</button>
            </div> <!-- .cd-single-item -->

            <div class="cd-item-info">
               <%-- <b>Name: ${videoitemtype8.desEn}</b>--%>
                <em>  Speakers ${videoitemtype8.author.name}</em>
            </div>
        </li>
    </c:forEach>
</ul>
</div>
<nav class="cd-gallery">
    <br>
    <center>
        <ul class="dropbtn">${newstypesThird.des}</ul>
    </center>
</nav>

<ul class="cd-gallery">
    <c:forEach items="${videoitemtype9}" var="videoitemtype9">
        <li>
            <div class="cd-single-item">
                <a href="/front/detail/${videoitemtype9.id}">
                    <ul class="cd-slider-wrapper" style="height: 200px;">
                        <li class="selected">
                            <img src="https://img.purch.com/w/660/aHR0cDovL3d3dy5saXZlc2NpZW5jZS5jb20vaW1hZ2VzL2kvMDAwLzAzMS85MjAvb3JpZ2luYWwvc2h1dHRlcnN0b2NrXzExMDkxNzg4My5qcGc=" class="selected backend-image" />
                            <img src="https://cdn.iconscout.com/public/images/icon/free/png-512/youtube-social-media-3f1a5400c5182326-512x512.png" class="frontend-image selected"/>
                        </li>
                    </ul>
                </a>

                <button class="cd-customization-trigger">Customize</button>
            </div> <!-- .cd-single-item -->

            <div class="cd-item-info">
                <em>  Speakers ${videoitemtype9.author.name}</em>
               <%-- <em>  Speakers ${videoitemtype8.author.name}</em>--%>
            </div>
        </li>
    </c:forEach>
</ul>
</div>

<script type="text/javascript" src="../dist/js/ui/main.js"></script>
<script type="text/javascript" src="../dist/js/ui/jquery-2.1.4.js"></script>
<script type="text/javascript" src="../js/fronts/jquery-gmaps-latlon-picker.js"></script>
<div>
    <%@ include file="../layouts/footer.jsp"%>
</div>
</body>
</html>
