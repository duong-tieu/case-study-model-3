<%--
  Created by IntelliJ IDEA.
  User: ThinkPad
  Date: 2/19/2023
  Time: 9:57 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Quản lý khách hàng</title>
</head>
<body>
<h1>Sửa thông tin khách hàng</h1>
<p><a href="<c:url value="/staffs"/>">Danh sách khách hàng</a></p>

<form action="<c:url value="/staff/edit"/>" method="post">
    <input type="hidden" name="id" value="${staffs.id}"/>
    <label>Họ tên: </label><br/>
    <input type="text" name="name" value="${staffs.name}"/><br/>
    <label>Email: </label><br/>
    <input type="text" name="email" value="${staffs.email}"/><br/>
    <label>Địa chỉ: </label><br/>
    <input type="text" name="address" value="${staffs.address}"/>
    <br/>
    <label>phone: </label><br/>
    <input type="text" name="phone" value="${staffs.phone}"/><br>
    <label>start date: </label><br/>
    <input type="text" name="startDate" value="${staffs.startDate}"/><br>
    <br/> <label>salary: </label><br/>
    <input type="text" name="salary" value="${staffs.salary}"/><br>
    <br/>
    <label>position: </label><br/>
    <input type="text" name="position" value="${staffs.position}"/>
    <br/><br/>
    <button type="submit" class="btn btn-success">Lưu lại</button>
</form>
<p>
    <c:if test="${requestScope['message'] != null}">
<h1>${requestScope['message']}</h1>
</c:if>
</p>
</body>
</html>

