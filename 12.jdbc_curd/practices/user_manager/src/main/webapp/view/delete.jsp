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
    <title>Delete User</title>
</head>
<body>
    <h2>You want to Delete User? </h2>
    <form action="/userServlet?actionClient=delete" method="post">
        <input type="hidden" name="id" value="${userObj.id}">
        <input type="submit" name="confirm" value="Yes">
        <input type="submit" name="confirm" value="No">
    </form>
</body>
</html>
