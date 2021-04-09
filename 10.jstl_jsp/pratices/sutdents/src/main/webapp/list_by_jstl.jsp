<%--
  Created by IntelliJ IDEA.
  User: moon
  Date: 09/04/2021
  Time: 14:40
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List Student by JSTL</title>
</head>
<body>
    <h2>List Student by JSTL</h2>
    <table border="1">
        <tr>
            <th>No</th>
            <th>Id</th>
            <th>Name</th>
            <th>Date of Birth</th>
            <th>Gender</th>
            <th>Degree</th>
        </tr>
        <c:forEach var="student" items="${studentListServlet}" varStatus="loop" >
            <tr>
                <td><c:out value="${loop.index+1}"></c:out></td>
                <td><c:out value="${student.id}"></c:out></td>
                <td><c:out value="${student.name}"></c:out></td>
                <td><c:out value="${student.dateOfBirth}"></c:out>   </td>
                <td>
                    <c:if test="${student.gender == 1}">
                        Male
                    </c:if>
                    <c:if test="${student.gender == 0}">
                        Female
                    </c:if>
<%--                    <c:out value="${student.gender}"></c:out>--%>
                </td>
                <td>
                    <c:choose>
                        <c:when test="${student.grade <= 4}">
                            Bad
                        </c:when>
                        <c:when test="${student.grade <=7}">
                            Good
                        </c:when>
                        <c:otherwise>
                            Very Good
                        </c:otherwise>
                    </c:choose>
<%--                    <c:out value="${student.grade}"></c:out>--%>
                </td>
            </tr>

        </c:forEach>


    </table>
</body>
</html>
