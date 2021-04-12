<%--
  Created by IntelliJ IDEA.
  User: moon
  Date: 12/04/2021
  Time: 14:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="">
    <p>
        Name :
        <input type="text" name="name" value="${customerObj.name}"/>
    </p>
    <p>
        Date of birth :
        <input type="date" name="dateOfBirth" value="${customerObj.dateOfBirth}"/>
    </p>
    <p>
        <input type="submit" value="Update">
    </p>
</form>
</body>
</html>
