<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Dron
  Date: 08.08.2018
  Time: 23:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
          integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
            integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
            integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
            crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
            integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
            crossorigin="anonymous"></script>
</head>
<body>
<div class="row">
    <div class="col-6">
        <c:if test="${!empty nameList1}">
        <h4>All Categories</h4>
        <div class="table-responsive-sm">
            <table class="table table-sm table-bordered">
                <thead>
                <tr align="center" class="table-active">
                    <th>Id</th>
                    <th>Name</th>
                </tr>
                </thead>
                <c:forEach items="${nameList1}" var="name">
                    <tr align="center">
                        <td>${name.id}</td>
                        <td>${name.name}</td>
                    </tr>
                </c:forEach>
                </c:if>
                </tbody>
            </table>
            <br>
            <form action="/addCategory">
                <div class="form-group">
                    <div class="col-6">
                        <label for="category" class="col-form-label-sm">New Category:</label>
                        <input type="ID" class="form-control col-form-label-sm" id="category" name="category"
                               placeholder="New Category">
                    </div>
                </div>
                <input class=" btn btn-outline-primary btn-sm" type="submit" value="Enter Category">
            </form>
            <br>
            <form action="/deleteCategoryById">
                <div class="form-group">
                    <div class="col-6">
                        <label for="id" class="col-form-label-sm">Enter ID Category:</label>
                        <input type="ID" class="form-control col-form-label-sm" id="id" name="id"
                               placeholder="ID">
                    </div>
                </div>
                <input class=" btn btn-outline-primary btn-sm" type="submit" value="Delete Category">
            </form>
        </div>
    </div>
</div>
</body>
</html>
