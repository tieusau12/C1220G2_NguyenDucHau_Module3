<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<form action="/calculator" style="border: 1px">
    <fieldset>
        <legend>Calculator</legend>
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
    </fieldset>
</form>
</body>
</html>