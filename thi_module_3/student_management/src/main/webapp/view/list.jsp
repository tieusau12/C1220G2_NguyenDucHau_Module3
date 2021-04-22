<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: moon
  Date: 22/04/2021
  Time: 22:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List Student</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="pagination/bootstrap413/css/bootstrap.min.css">
    <link rel="stylesheet" href="pagination/datatables/css/dataTables.bootstrap4.min.css">
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-lg-12">
            <h2>Student List</h2>
            <p>
                <a href="/studentServlet?actionClient=create">Create new Student</a>
            </p>
            <p>
            </p>
            <form action="/studentServlet?actionClient=search" method="post">
                <input type="text" name="name" value="${keyword}"/>
                <input type="submit" value="Search">
            </form>
            <table id="tableStudent" class="table table-striped table-bordered" style="width:100%">
                <thead>
                    <tr>
                        <th>No</th>
                        <th>ID</th>
                        <th>Name Students</th>
                        <th>Address</th>
                        <th>ID Card</th>
                        <th>Date of Birth</th>
                        <th>Class ID</th>
                        <th>Phone Number</th>
                        <th >Edit</th>
                        <th>Delete</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="student" items="${studentListServlet}" varStatus="loop">
                        <tr>
                            <td>${loop.index+1}</td>
                            <td>${student.id}</td>
                            <td>${student.name}</td>
                            <td>${student.address}</td>
                            <td>${student.idCard}</td>
                            <td>${student.dateOfBirth}</td>
                            <td>${student.classId}</td>
                            <td>${student.phoneNumber}</td>
                            <td>
                                <a href="/studentServlet?actionClient=edit&id=${student.id}">Edit</a>
                            </td>
                            <td>
                                <a href="/studentServlet?actionClient=delete&id=${student.id}">Delete</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
            <p><a href="/studentServlet?actionClient=sort">Sort by Name </a> <p><a href="http://localhost:8080">Back to Home</a></p></p>

        </div>
    </div>
</div>


<script src="js/jquery-3.6.0.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="../pagination/datatables/js/jquery.dataTables.min.js"></script>
<script src="../pagination/datatables/js/dataTables.bootstrap4.min.js"></script>
<script>
    $(document).ready(function () {
        $('#tableStudent').dataTable({
            "dom": 'lrtip',
            "lengthChange": false,
            "pageLength": 3
        });
    });
</script>
</body>
</html>
