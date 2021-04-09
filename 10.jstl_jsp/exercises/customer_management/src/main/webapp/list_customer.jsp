<%--
  Created by IntelliJ IDEA.
  User: moon
  Date: 09/04/2021
  Time: 15:20
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table border="1">
    <tr>
        <th colspan="5"> Customer List</th>
    </tr>
    <tr>
        <th>No</th>
        <th>Name</th>
        <th>Date of Birth</th>
        <th> Address </th>
        <th> Image</th>
    </tr>
    <c:forEach var="customer" items="${customerListServlet}" varStatus="loop">
        <tr>
            <td><c:out value="${loop.index +1}"></c:out></td>
            <td><c:out value="${customer.name}"></c:out></td>
            <td><c:out value="${customer.dateOfBirth}"></c:out></td>
            <td><c:out value="${customer.address}"></c:out> </td>
            <td><img src="resource/img/${customer.img}"></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
