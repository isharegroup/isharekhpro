<%--
  Created by IntelliJ IDEA.
  User: r.ron
  Date: 2/9/2018
  Time: 4:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="en">
<head>
    <title>video detail</title>
    <%--map--%>
    <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>
    <link rel="stylesheet" type="text/css" href="../../css/fronts/jquery-gmaps-latlon-picker.css" />
    <script  async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDjcJ1TroezxIBTxRC3TJoQQbopTd6SRcw&callback=initMap"
             type="text/javascript"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="../../css/fronts/header-menu.css" />
    <link rel="stylesheet" type="text/css" href="../../css/fronts/carosel-video-show.css" />
    <!--correct -->
    <link rel="stylesheet" type="text/css" href="../../css/ui/reset.css" />
    <link rel="stylesheet" type="text/css" href="../../css/ui/style.css" />
    <link rel="stylesheet" type="text/css" href="../../css/fronts/header-menu.css" />
    <script type="text/javascript" src="../../dist/js/ui/modernizr.js"></script>

</head>
<body>
<div id="m_header">
    <%@ include file="../layouts/header.jsp"%>
</div>
<br><br><br><br>
<div class="container">
    <div class="row">
        <div class="col-6">
            <a href="#">${newsType.des}</a> <span class="glyphicon glyphicon-menu-right"></span><label>video detail</label>
        </div>
        <br><br><br><br>
        <div class="row">
            <div class="col-sm-8">
                <iframe class="selected" style="width: 100%; height: 400px;" src="${newsDetail.remoteVideoUrl}?autoplay=1" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen>
                </iframe>
            </div>
            <div class="col-sm-4">
                <div class="row">
                    <div class="col-12 col-md-12">
                        <h4>Chanel: Mr. Hello World</h4>
                    </div>
                    <br><br><br>
                    <div class="col-12 col-md-12">
                        <h4>Speakers: Mr. Welcome</h4>
                    </div>
                    <br><br><br>
                    <div class="col-12 col-md-12">
                        <h4>Topic: What do you want?</h4>
                    </div>
                </div>
            </div>
        </div>
        <br><br><br>
        <div class="col-6">
            ${newsDetail.desEn}
        </div>
    </div>
</div>
<div>
    <%@ include file="../layouts/carouselVideos.jsp"%>
</div>
<br><br>
<div>
    <%@ include file="../layouts/footer.jsp"%>
</div>
<script type="text/javascript" src="../../js/fronts/jquery-gmaps-latlon-picker.js"></script>
<script type="text/javascript" src="../../js/fronts/carousel-show.js"></script>
</body>
</html>
