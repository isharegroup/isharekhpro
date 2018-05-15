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
<footer class="container-fluid text-center" style="background-color: rgb(100,200,20);">

        <br>
        <div class="row">
            <div class="col-md-12">
                <div class="row">
                    <c:forEach items="${visions}" var="visitem">
                        <div class="col-md-4">
                            <h3>${visitem.title}</h3>
                            <br>
                            ${visitem.des}
                            <br><br>
                        </div>
                    </c:forEach>
                    <c:forEach items="${abouts}" var="abouts">
                        <div class="col-md-4">
                            <h3>
                                ${abouts.title}
                            </h3>
                            <br>
                             ${abouts.des}
                            <br><br>
                        </div>
                    </c:forEach>
                    <c:forEach items="${locations}" var="locations">
                        <div class="col-md-4">
                            <h1>${locations.title}</h1>
                            <br>
                            <div class="google_map">
                                <div class="gllpMap"></div>
                                <br/>
                                <input type="text" class="gllpLatitude" value="${locations.numX}" hidden="true"/>
                                <input type="text" class="gllpLongitude" value="${locations.numY}" hidden="true" />
                                <input type="text" class="gllpZoom" value="15" hidden="true"/>
                                <input type="button" class="gllpUpdateButton" value="update map" hidden="true">
                                <br/>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
        <br><br>

    <hr>
    <center>Copy right; my         <b>Phone: </b><em>097 66 17 899</em></center>
    <br><br>
</footer>
</body>
</html>