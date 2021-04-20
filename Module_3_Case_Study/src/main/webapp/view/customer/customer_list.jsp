<%--
  Created by IntelliJ IDEA.
  User: moon
  Date: 16/04/2021
  Time: 16:25
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="bootstrap413/css/bootstrap.min.css">
    <link rel="stylesheet" href="datatables/css/dataTables.bootstrap4.min.css">
    <title>Customer Management</title>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-lg-12">
            <h2>Service Management</h2>
            <p>
                <a href="/CustomerServlet?actionClient=create">Create new Service</a>
            </p>

            <form action="/CustomerServlet?actionClient=search" method="post">
                <input type="text" name="name" value="${keyword}"/>
                <input type="submit" value="Search">
            </form>
            <table border="1" id="tableStudent" class="table table-striped table-bordered" style="width:100%">
                <thead>
                <tr>
                    <th>No</th>
                    <th>Id</th>
                    <th>Name</th>
                    <th>Birth Day</th>
                    <th>Gender</th>
                    <th>ID Card</th>
                    <th>Phone Number</th>
                    <th>Email</th>
                    <th>Address</th>
                    <th>Type Customer Name</th>
                    <th>Edit</th>
                    <th>Delete</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="customer" items="${customerListServlet}" varStatus="loop">
                    <tr>
                        <td>${loop.index+1}</td>
                        <td>${customer.id}</td>
                        <td>${customer.customerName}</td>
                        <td>${customer.customerBirthday}</td>
                        <td>

                            <c:if test="${customer.customerGender == 1}">
                                Male
                            </c:if>
                            <c:if test="${customer.customerGender == 0}">
                                Female
                            </c:if>
                        </td>
                        <td>${customer.customerIdCard}</td>
                        <td>${customer.customerPhone}</td>
                        <td>${customer.customerEmail}</td>
                        <td>${customer.customerAddress}</td>
                        <c:forEach var="customerType" items="${customerType}">
                            <c:if test="${customer.customerTypeId ==customerType.customerTypeId}">
                                <td>
                                    ${customerType.customerTypeName}
                                </td>
                            </c:if>
                        </c:forEach>
                        <td><a href="/CustomerServlet?actionClient=edit&id=${customer.id}">Edit</a></td>
                        <td>
                            <a href="/CustomerServlet?actionClient=delete&id=${customer.id}">Delete</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
            <p><a href="/CustomerServlet?actionClient=sort">Sort by Name</a></p>
        </div>
    </div>
</div>
<script src="js/jquery-3.6.0.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="datatables/js/jquery.dataTables.min.js"></script>
<script src="datatables/js/dataTables.bootstrap4.min.js"></script>
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
