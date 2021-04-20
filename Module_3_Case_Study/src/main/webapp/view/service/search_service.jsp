<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: moon
  Date: 19/04/2021
  Time: 17:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="bootstrap413/css/bootstrap.min.css">
    <link rel="stylesheet" href="datatables/css/dataTables.bootstrap4.min.css">

    <title>Search Service</title>
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <div class="col-lg-12">
            <h2>Search Service</h2>
            <p><a href="/ServiceServlet">Back to Service Management</a></p>
            <table id="tableService" class="table table-striped table-bordered" style="width:100%">
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
                    <th>Edit</th>
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
        </div>
    </div>
</div>
<script src="jquery/jquery-3.5.1.min.js"></script>
<script src="datatables/js/jquery.dataTables.min.js"></script>
<script src="datatables/js/dataTables.bootstrap4.min.js"></script>
<script src="bootstrap413\js\bootstrap.min.js"></script>
<script>
    $(document).ready(function () {
        $('#tableService').dataTable({
            "dom": 'lrtip',
            "lengthChange": false,
            "pageLength": 3
        });
    });
</script>

</body>
</html>
