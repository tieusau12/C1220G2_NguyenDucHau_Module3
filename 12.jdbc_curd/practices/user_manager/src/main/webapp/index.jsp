<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>User Management</title>
</head>
<body>
    <h2>User Management</h2>
    <p>
        <a href="/userServlet?actionClient=create">Create new User</a>
    </p>

        <form action="/userServlet?actionClient=search" method="post">
            <input type="text" name="name" value="${keyword}"/>
            <input type="submit" value="Search">
        </form>

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
    <p><a href="/userServlet?actionClient=sort">Sort by Name</a></p>
</body>
</html>