<%--
  Created by IntelliJ IDEA.
  User: moon
  Date: 16/04/2021
  Time: 16:25
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="bootstrap413/css/bootstrap.min.css">
<link rel="stylesheet" href="datatables/css/dataTables.bootstrap4.min.css">
<html>
<head>
    <title>Service Management</title>
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <div class="col-lg-12">
            <h2>Service Management</h2>
            <p>
                <a href="/ServiceServlet?actionClient=create">Create new Service</a>
            </p>
            <p>
            </p>
            <form action="/ServiceServlet?actionClient=search" method="post">
                <input type="text" name="name" value="${keyword}"/>
                <input type="submit" value="Search">
            </form>
            <table border="1" id="tableStudent" class="table table-striped table-bordered" style="width:100%">
                <thead>
                <tr>
                    <th>No</th>
                    <th>Id</th>
                    <th>Name</th>
                    <th>Area</th>
                    <th>Cost</th>
                    <th>Capacity</th>
                    <th>Standard Room</th>
                    <th>Description other convenience</th>
                    <th>Pool Area</th>
                    <th>Number of Floors</th>
                    <th>Rent type Id</th>
                    <th>Service type Id</th>
                    <th >Edit</th>
                    <th>Delete</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="service" items="${ServiceListServlet}" varStatus="loop">
                    <tr>
                        <td>${loop.index+1}</td>
                        <td>${service.id}</td>
                        <td>${service.service_name}</td>
                        <td>${service.service_area}</td>
                        <td>${service.service_cost}</td>
                        <td>${service.service_capacity}</td>
                        <td>${service.standard_room}</td>
                        <td>${service.description_other_convenience}</td>
                        <td>${service.pool_area}</td>
                        <td>${service.number_of_floors}</td>
                        <td>${service.rentTypeName}</td>
                        <td>${service.serviceTypeName}</td>
                        <td>
                            <a href="/ServiceServlet?actionClient=edit&id=${service.id}">Edit</a>
                        </td>
                        <td>
                            <a href="/ServiceServlet?actionClient=delete&id=${service.id}">Delete</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
            <p><a href="/ServiceServlet?actionClient=sort">Sort by Name </a> <p><a href="http://localhost:8080">Back to Home</a></p></p>

        </div>
    </div>
</div>

<script src="../../js/jquery-3.6.0.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="datatables/js/jquery.dataTables.min.js"></script>
<script src="datatables/js/dataTables.bootstrap4.min.js"></script>
<script>
    $(document).ready(function () {
        $('#tableStudent').dataTable({
            "dom": 'lrtip',
            "lengthChange": false,
            "pageLength": 5
        });
    });
</script>
<%--<script>--%>
<%--    function setIdToForm(positionId) {--%>
<%--        $('#confirm-delete').modal('show');--%>
<%--        document.getElementById("idDelete").value = positionId;--%>
<%--    }--%>
<%--</script>--%>
</body>
</html>
