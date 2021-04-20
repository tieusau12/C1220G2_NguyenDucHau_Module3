<%--
  Created by IntelliJ IDEA.
  User: moon
  Date: 16/04/2021
  Time: 14:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Customer Create</title>
</head>
<body>
<h2> Create new Customer</h2>
<form action="/ServiceServlet" method="post">
    <p><a href="/ServiceServlet">Back to Service Management</a></p>
    <input type="hidden" name="actionClient" value="create"/>
    <p>${msg}</p>
    <p>
        ID Service:
        <input type="text" name="id" value="${serviceObj.id}">
    </p>
    <p>
        Name Service:
        <input type="text" name="name" value="${serviceObj.service_name}">
    </p>
    <p>
        Area:
        <input type="text" name="area" value="${serviceObj.service_area}">
    </p>
    <p>
        Cost:
        <input type="text" name="cost" value="${serviceObj.service_cost}">
    </p>
    <p>
        Capacity:
        <input type="text" name="capacity" value="${serviceObj.service_capacity}">
    </p>
    <p>
        Standard Room:
        <input type="text" name="standard" value="${serviceObj.standard_room}">
    </p>
    <p>
        Description other convenience:
        <input type="text" name="description" value="${serviceObj.description_other_convenience}">
    </p>
    <p>
        Pool Area:
        <input type="text" name="pool_area" value="${serviceObj.pool_area}">
    </p>
    <p>
        Number of Floors:
        <input type="text" name="number_of_floors" value="${serviceObj.number_of_floors}">
    </p>
    <p>
        Rent type Name:
        <input type="text" name="rent_type_id" value="${serviceObj.rent_type_id}">
    </p>
    <p>
        Service type Id:
        <input type="text" name="service_type_id" value="${serviceObj.service_type_id}">
    </p>
    <input type="submit" value="create">
</form>
</body>
</html>
