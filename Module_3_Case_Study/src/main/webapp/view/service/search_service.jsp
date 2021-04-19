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
    <title>Search Service</title>
</head>
<body>
<h2>Search Service</h2>
<table border="1">
    <tr>
        <th>No</th>
        <th>Id</th>
        <th>Name</th>
        <th>Area</th>
        <th>Cost</th>
        <th>Capacity</th>
        <th>Standard Room</th>
        <th>Description other convinience</th>
        <th>Pool Area</th>
        <th>Number of Floors</th>
        <th>Rent type Id</th>
        <th>Service type Id</th>
        <th colspan="2">Action</th>
    </tr>
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
</table>

</body>
</html>
