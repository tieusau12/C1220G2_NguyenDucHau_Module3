<%--
  Created by IntelliJ IDEA.
  User: moon
  Date: 09/04/2021
  Time: 16:18
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/calculator" style="border: 1px">
    <fieldset> Calculator</fieldset>
    <table>
        <tr>
            <td>First operand:</td>
            <td><input type="text" name="firstNumber"></td>
        </tr>
        <tr>
            <td>Operator :</td>
            <td><select name="operator">
                <option value="+">Additon</option>
                <option value="-">Subtraction</option>
                <option value="/">Division</option>
                <option value="*">Multiplication</option>
            </select></td>
        </tr>
        <tr>
            <td>Second operand :</td>
            <td><input type="text" name="secondNumber"></td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" id="submit" value="Calculate"></td>
        </tr>
    </table>
</form>
</body>
</html>
