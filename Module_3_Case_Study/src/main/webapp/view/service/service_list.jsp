<%--
  Created by IntelliJ IDEA.
  User: moon
  Date: 16/04/2021
  Time: 16:25
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Service Management</title>
</head>
<body>
<h2>Service Management</h2>
<p>
  <a href="">Create new Service</a>
</p>
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
      <td>${service.description_other_convinience}</td>
      <td>${service.pool_area}</td>
      <td>${service.number_of_fools}</td>
      <td>${service.rent_type_id}</td>
      <td>${service.service_type_id}</td>
      <td><a href="/ServiceServlet?actionClient=edit&id=${service.id}">Edit</a></td>
      <td><a href="/ServiceServlet?actionClient=delete&id=${service.id}">Delete</a></td>
    </tr>
  </c:forEach>
</table>
</body>
</html>
