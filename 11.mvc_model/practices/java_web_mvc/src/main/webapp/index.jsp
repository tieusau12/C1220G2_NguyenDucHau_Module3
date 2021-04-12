<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Customer - MVC</title>
</head>
<body>
<table border="1">
    <tr>
        <th colspan="5"> Customer List</th>
    </tr>
    <tr>
        <th>No</th>
        <th>id</th>
        <th>Name</th>
        <th>Date of Birth</th>
        <th> Address </th>
        <th> Image</th>
        <th colspan="2"> Action</th>
    </tr>
    <c:forEach var="customer" items="${customerListServlet}" varStatus="loop">
        <tr>
            <td><c:out value="${loop.index +1}"></c:out></td>
            <td><c:out value="${customer.id}"></c:out></td>
            <td><c:out value="${customer.name}"></c:out></td>
            <td><c:out value="${customer.dateOfBirth}"></c:out></td>
            <td><c:out value="${customer.address}"></c:out> </td>
            <td><img src="resource/img/${customer.img}"></td>
            <td><a href="/Customer?actionClient=update&id=${customer.id}">Update</a></td>
            <td><a href="/Customer?actionClient=delete&id=${customer.id}">Delete</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>