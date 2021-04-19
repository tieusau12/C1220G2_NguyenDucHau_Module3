<%--
  Created by IntelliJ IDEA.
  User: moon
  Date: 16/04/2021
  Time: 16:25
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="../../css/bootstrap.min.css">
<html>
<head>
    <title>Service Management</title>
</head>
<body>
<%--<div class="container">--%>


<h2>Service Management</h2>
<p>
    <a href="/ServiceServlet?actionClient=create">Create new Service</a>
</p>
<table border="1">
    <tr>
        <th>No</th>
        <th>Id</th>
        <th>Name</th>
        <th>Area</th>
        <th>Cost</th>
        <th>Capacity</th>
        <th>Standard Room</th>
        <th>Description other convinience</th>
        <th>Pool Area</th>
        <th>Number of Floors</th>
        <th>Rent type Id</th>
        <th>Service type Id</th>
        <th colspan="2">Action</th>
    </tr>
    <c:forEach var="service" items="${ServiceListServlet}" varStatus="loop">
        <tr>
            <td>${loop.index+1}</td>
            <td>${service.id}</td>
            <td>${service.service_name}</td>
            <td>${service.service_area}</td>
            <td>${service.service_cost}</td>
            <td>${service.service_capacity}</td>
            <td>${service.standard_room}</td>
            <td>${service.description_other_convenience}</td>
            <td>${service.pool_area}</td>
            <td>${service.number_of_floors}</td>
            <td>${service.rentTypeName}</td>
            <td>${service.serviceTypeName}</td>
            <td><a href="/ServiceServlet?actionClient=edit&id=${service.id}">Edit</a></td>
                <%--      <td><button class="btn btn-primary" onclick="sentIdToForm(${service.id})">--%>
                <%--              Delete--%>
                <%--      </button></td>--%>
            <td>
                    <%--                    <button class="btn btn-muted" onclick="setIdToForm(${service.id})">--%>
                    <%--                        <i class="far fa-trash-alt text-danger" style="font-size: 1.5rem">Delete</i>--%>
                    <%--                    </button>--%>
                <a href="/ServiceServlet?actionClient=delete&id=${service.id}">Delete</a>
            </td>
        </tr>
    </c:forEach>
</table>


<!-- Button trigger modal -->


<!-- Modal -->
<%--    <div class="modal fade" id="confirm-delete" tabindex="-1"--%>
<%--         role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">--%>
<%--        <div class="modal-dialog">--%>
<%--            <div class="modal-content">--%>
<%--                <div class="modal-header">--%>
<%--                    <h4 class="modal-title" id="myModalLabel">Confirm Delete</h4>--%>
<%--                    <button type="button" class="close" data-dismiss="modal"--%>
<%--                            aria-hidden="true">×--%>
<%--                    </button>--%>
<%--                </div>--%>
<%--                <div class="modal-body">--%>
<%--                    <p>Do you want to proceed ?</p>--%>
<%--                </div>--%>
<%--                <div class="modal-footer">--%>
<%--                    <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>--%>
<%--                    <form action="/positions">--%>
<%--                        <input type="hidden" name="action" value="delete">--%>
<%--                        <input type="hidden" name="idDelete" value="idDelete" id="idDelete">--%>
<%--                        <input type="submit" class="btn btn-danger" value="Delete">--%>
<%--                    </form>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>
<script src="../../js/jquery-3.6.0.min.js"></script>
<script src="../../js/bootstrap.min.js"></script>
<%--<script>--%>
<%--    function setIdToForm(positionId) {--%>
<%--        $('#confirm-delete').modal('show');--%>
<%--        document.getElementById("idDelete").value = positionId;--%>
<%--    }--%>
<%--</script>--%>
</body>
</html>
