<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<form action="/display-discount" method="post">
        <h3>Product Description :</h3>
    <input type="text" name="description" placeholder="Product Description"/>
        <h3>List Price : </h3>
    <input type="text" name="list_price" placeholder="List price"/>
        <h3>Discount Percent: </h3>
    <input type="text" name="discount_percent" placeholder="Discount percent"/>
        <h3>Calculate Discount </h3>
    <input type="submit" id="submit" value="Discount"/>
</form>
</body>
</html>