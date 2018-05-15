<%--
  Created by IntelliJ IDEA.
  User: r.ron
  Date: 2/9/2018
  Time: 4:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
</head>
<body>
<nav class="navbar navbar-inverse navbar-fixed-top" style="background-color: rgb(100,200,20);">
    <div class="container-fluid" style="background-color: rgb(100,200,20);">
        <div class="navbar-header" style="background-color: rgb(100,200,20);">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <img src="/images/logo.png" class="img-responsive center-block" width="50px" alt="Logo" />
        </div>
        <div class="collapse navbar-collapse" id="myNavbar">
            <div class="dropdown">
                <a href="/front/videoshome" style="text-decoration: none;">
                    <ul class="dropbtn">${newstypesHome.des}</ul>
                </a>
            </div>
            <div class="dropdown">
                <a href="#" style="text-decoration: none;">
                    <ul class="dropbtn">${newstypesSecond.des}</ul>
                </a>
            </div>
            <div class="dropdown">
                <a href="#" style="text-decoration: none;">
                    <ul class="dropbtn">${newstypesThird.des}</ul>
                </a>
            </div>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="/login" style="color: rgba(249,249,255,0.97);"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
            </ul>
        </div>


    </div>
</nav>
</body>
</html>
