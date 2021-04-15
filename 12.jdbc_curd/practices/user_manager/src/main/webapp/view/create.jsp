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
    <title>Create User</title>
</head>
<body>
<h2>Create User</h2>
<form action="/userServlet" method="post">
    <fieldset>
        <legend>Create new User</legend>
        <p>${msg}</p>
        <p><a href="/userServlet">Back to Main menu</a></p>
        <input type="hidden" name="actionClient" value="create">
        <p>
            Name :
            <input type="text" name="name" value="${usersObj.name}">
        </p>
        <p>
            Email :
            <input type="text" name="email" value="${usersObj.email}">
        </p>
        <p>
            Country :
            <input type="text" name="country" value="${usersObj.country}">
        </p>
        <input type="submit" value="create">

    </fieldset>
</form>
</body>
</html>
