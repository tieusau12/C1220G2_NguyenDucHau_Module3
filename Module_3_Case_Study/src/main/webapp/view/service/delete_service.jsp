<%--
  Created by IntelliJ IDEA.
  User: moon
  Date: 16/04/2021
  Time: 16:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Delete Service</title>
</head>
<body>
<h2> Delete Service</h2>
 <h2>You want to delete service ?</h2>
 <form action="/ServiceServlet?actionClient=delete" method="post">
     <input type="hidden" name="id" value="${serviceObj.id}">
     <input type="submit" name="confirm" value="Yes">
     <input type="submit" name="confirm" value="No">
 </form>
</body>
</html>
