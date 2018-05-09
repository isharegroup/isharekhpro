<%--
  Created by IntelliJ IDEA.
  User: HTPP
  Date: 02/24/2018
  Time: 7:55 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
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
                <ul class="dropbtn">${newstypes8.des}</ul>
            </center>
        </nav>

        <ul class="cd-gallery">
            <c:forEach items="${newsitemtype8}" var="newsitemtype8">
                    <li>
                        <div class="cd-single-item">
                            <%--${newsitemtype8.id}--%>
                            <a href="/front/detail/${newsitemtype8.id}">
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
                            <b>Name: ${newsitemtype8.name}</b>
                            <em> ${newsitemtype8.author.name}</em>
                        </div>
                    </li>
            </c:forEach>
        </ul>
        </div>
        <nav class="cd-gallery">
            <br>
            <center>
                <ul class="dropbtn">${newstypes9.des}</ul>
            </center>
        </nav>

        <ul class="cd-gallery">
            <c:forEach items="${newsitemtype9}" var="newsitemtype9">
                <li>
                    <div class="cd-single-item">
                        <%--/videos/edit/${video.id}--%>
                        <a href="/front/detail/${newsitemtype9.id}">
                            <ul class="cd-slider-wrapper" style="height: 200px;">
                                <li class="selected">
                                    <img src="https://img.purch.com/w/660/aHR0cDovL3d3dy5saXZlc2NpZW5jZS5jb20vaW1hZ2VzL2kvMDAwLzAzMS85MjAvb3JpZ2luYWwvc2h1dHRlcnN0b2NrXzExMDkxNzg4My5qcGc=" class="selected backend-image" />
                                    <img src="https://cdn.iconscout.com/public/images/icon/free/png-512/youtube-social-media-3f1a5400c5182326-512x512.png" class="frontend-image selected"/>
                                </li>
                            </ul>
                        </a>

                        <button class="cd-customization-trigger">Customize</button>
                    </div> <!-- .cd-single-item -->

                    <%--<div class="cd-item-info">
                        <b>Name: ${newsitemtype9.name}</b>
                        <em> ${newsitemtype9.author.name}</em>
                    </div>--%>
                </li>
            </c:forEach>
        </ul>
</div>
<%--{newstypes8.des--%>
<script type="text/javascript" src="../dist/js/ui/main.js"></script>
<script type="text/javascript" src="../dist/js/ui/jquery-2.1.4.js"></script>
<div id="m_footer">
    <%@ include file="../layouts/footer.jsp"%>
</div>
</body>
</html>
