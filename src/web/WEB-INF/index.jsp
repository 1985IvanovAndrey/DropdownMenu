<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<%--<head>--%>
<%--<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"--%>
<%--integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">--%>
<%--<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"--%>
<%--integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"--%>
<%--crossorigin="anonymous"></script>--%>
<%--<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"--%>
<%--integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"--%>
<%--crossorigin="anonymous"></script>--%>
<%--<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"--%>
<%--integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"--%>
<%--crossorigin="anonymous"></script>--%>

<%--<title>$Title$</title>--%>
<%--</head>--%>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style>
        .dropdown-submenu {
            position: relative;
        }

        .dropdown-submenu .dropdown-menu {
            top: 0;
            left: 100%;
            margin-top: -1px;
        }
    </style>
</head>
<body>

<li class="container">
    <h1>Multi-Level Dropdowns</h1>
    <div class="dropdown">
        <button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown">Menu
            <span class="caret"></span></button>
        <ul class="dropdown-menu">
            <%--<li><a tabindex="-1" href="#">HTML</a></li>--%>
            <%--<li><a tabindex="-1" href="#">CSS</a></li>--%>
            <li class="dropdown-submenu">
                <%--<c:if test="${!empty nameList}">--%>
                    <c:forEach items="${nameList1}" var="name">
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="#">${name.name}</a>
                    </c:forEach>
                <%--</c:if>--%>
                <a class="test" tabindex="-1" href="#">Controls1 <span class="caret"></span></a>
                <ul class="dropdown-menu">
                    <li><a tabindex="-1" href="<c:url value='/new'/>">EDIT</a></li>
                    <li><a tabindex="-1" href="<c:url value='/clear'/>">Clear ALL Categories</a></li>
                    <li class="dropdown-submenu">
                        <%--<c:if test="${!empty nameList}">--%>
                        <c:forEach items="${nameList2}" var="name">
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#">${name.name}</a>
                        </c:forEach>
                        <%--</c:if>--%>
                        <a class="test" tabindex="-10" href="#">Controls2 <span class="caret"></span></a>

                        <ul class="dropdown-menu">
                            <li><a tabindex="-1" href="<c:url value='/new2'/>">EDIT2</a></li>
                            <li><a tabindex="-1" href="<c:url value='/clear'/>">Clear ALL Categories</a></li>
                            <%--<li><a tabindex="-1" href="#">Edit</a></li>--%>
                            <%--<a class="test" tabindex="-1" href="#">New dropdown2 <span class="caret"></span></a>--%>
                            <ul class="dropdown-menu">
                                <li><a tabindex="-1" href="#">2nd level dropdown</a></li>
                                <li><a tabindex="-1" href="#">2nd level dropdown</a></li>
                                <li class="dropdown-submenu">
                                    <a class="test" href="#">Another dropdown <span class="caret"></span></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="#">3rd level dropdown</a></li>
                                        <li><a href="#">3rd level dropdown</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </ul>
                    </li>
                </ul>
            </li>
        </ul>
    </div>
</li>
</div>
<script>
    $(document).ready(function () {
        $('.dropdown-submenu a.test').on("click", function (e) {
            $(this).next('ul').toggle();
            e.stopPropagation();
            e.preventDefault();
        });
    });
</script>

</body>
</html>
