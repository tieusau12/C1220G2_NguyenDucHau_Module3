<%--
  Created by IntelliJ IDEA.
  User: moon
  Date: 14/04/2021
  Time: 15:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Search User</title>
</head>
<body>
<h2>Search User</h2>
<table border="1">
    <tr>
        <th>No</th>
        <th>Id</th>
        <th>Name</th>
        <th>Email</th>
        <th>Country</th>
        <th colspan="2">Action</th>
    </tr>
    <c:forEach var="user" items="${usersListServlet}" varStatus="loop">
        <tr>
            <td>${loop.index+1}</td>
            <td>${user.id}</td>
            <td>${user.name}</td>
            <td>${user.email}</td>
            <td>${user.country}</td>
            <td><a href="/userServlet?actionClient=edit&id=${user.id}">Edit</a></td>
            <td><a href="/userServlet?actionClient=delete&id=${user.id}">Delete</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
