<%--
  Created by IntelliJ IDEA.
  User: moon
  Date: 12/04/2021
  Time: 15:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>View Product</title>
</head>
<body>
<h1>Product Details </h1>
<p>
    <a href="/products">Back to product list</a>
</p>
<table>
    <tr>
        <td>Name :</td>
        <td>${requestScope["products"].getName()}</td>
    </tr>
    <tr>
        <td>Detail :</td>
        <td>${requestScope["products"].getDetail()}</td>
    </tr>
    <tr>
        <td>Price :</td>
        <td>${requestScope["products"].getPrice()}</td>
    </tr>
</table>
</body>
</html>
