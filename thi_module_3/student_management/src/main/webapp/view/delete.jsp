<%--
  Created by IntelliJ IDEA.
  User: moon
  Date: 22/04/2021
  Time: 21:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Delete Student</title>
</head>
<body>
<h2> Delete Student</h2>
<h2>You want to delete student ?</h2>
<form action="/studentServlet?actionClient=delete" method="post">
    <input type="hidden" name="id" value="${studentObj.id}">
    <input type="submit" name="confirm" value="Yes">
    <input type="submit" name="confirm" value="No">
</form>
</body>
</html>
