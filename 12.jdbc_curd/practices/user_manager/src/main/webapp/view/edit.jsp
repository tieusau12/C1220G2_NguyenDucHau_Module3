<%--
  Created by IntelliJ IDEA.
  User: moon
  Date: 14/04/2021
  Time: 14:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>Edit User</h2>
<form action="/userServlet" method="post">
    <fieldset style="margin-right: 50%">
        <legend>New user's information:</legend>
        <input type="hidden" name="actionClient" value="edit">
        <input type="hidden" name="id" value="${usersObj.id}">
        <p>${msg}</p>
        <p><a href="/userServlet">Back to Main menu</a></p>
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
        <p>
            <input type="submit" value="update">
        </p>
    </fieldset>
</form>
</body>
</html>
