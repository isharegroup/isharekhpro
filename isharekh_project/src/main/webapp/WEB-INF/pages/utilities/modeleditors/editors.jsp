<%--
  Created by IntelliJ IDEA.
  User: HTPP
  Date: 04/27/2018
  Time: 3:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>editor</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <script src="/js/modeleditors/editor.js"></script>
    <link rel="stylesheet" href="/css/modeleditors/editor.css"/>
    <script>
        $(document).ready(function() {
            $("#txtEditor").Editor();
        });
    </script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <h2 class="demo-text">LineControl Demo</h2>
        <div class="container">
            <div class="row">
                <div class="col-lg-12 nopadding">
                    <%--<textarea id="txtEditor" rows="4" cols="50">
                        <h1>Hello World Test in textarea</h1>
                        <h1>Hello World Test in textarea</h1>
                    </textarea>--%>
                    <textarea rows="4" cols="50" id="txtEditor">
                        ent technologies.
                    </textarea>

                    <h1>Hello World Test</h1>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="container-fluid footer">
    <p class="pull-right">&copy; Suyati Technologies <script>document.write(new Date().getFullYear())</script>. All rights reserved.</p>
</div>
</body>
</html>
