<%--
  Created by IntelliJ IDEA.
  User: ThinkPad
  Date: 2/19/2023
  Time: 9:57 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--<h1>Danh sách khách hàng</h1>--%>
<%--<form action="<c:url value="/staff/searchById"/>" method="get">--%>
<%--    <input type="text" name="id" placeholder="search name">--%>
<%--    <input type="submit" value="submit">--%>
<%--</form>--%>


<%--<table border="1">--%>
<%--    <thead>--%>
<%--    <tr>--%>
<%--        <th>Mã số</th>--%>
<%--        <th>Họ tên</th>--%>
<%--        <th>Email</th>--%>
<%--        <th>Địa chỉ</th>--%>
<%--        <th>Hành động</th>--%>
<%--    </tr>--%>
<%--    </thead>--%>
<%--    <tbody>--%>
<%--    <c:forEach var="staff" items="${staffs}">--%>
<%--        <tr>--%>
<%--            <td>${staff.id}</td>--%>
<%--            <td>${staff.name}</td>--%>
<%--            <td>${staff.email}</td>--%>
<%--            <td>${staff.address}</td>--%>
<%--            <td>--%>
<%--                <a href="<c:url value="/staff/detail"/>?id=${staff.id}">detail</a> |--%>
<%--                <a href="<c:url value="/staff/edit"/>?id=${staff.id}">edit</a> |--%>
<%--                <a href="<c:url value="/staff/remove"/>?id=${staff.id}">delete</a>--%>
<%--            </td>--%>
<%--        </tr>--%>
<%--    </c:forEach>--%>
<%--    </tbody>--%>
<%--</table>--%>
<%--</body>--%>
<%--</html>--%>


<head>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
          integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>
    <title>Customer Manager</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <%--    <style><%@include file="/WEB-INF/view/style.css"%></style>--%>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/js/all.min.js"
            crossorigin="anonymous"></script>
    <style>

        .edit {
            float: left;
            width: 50%;
            padding: 1px;
            padding-left: 40px;
            /*height: 10px; !* Should be removed. Only for demonstration *!*/
        }

        /* Clear floats after the columns */
        .delete:after {
            content: "";
            display: table;
            clear: both;
        }
    </style>
</head>
<body class="sb-nav-fixed">
<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
    <%--    <p><a href="<c:url value="/staffs"/>">back tp home page</a></p>--%>
    <a class="navbar-brand" href="<c:url value="/staffs"/>">Customer Manager</a>
    <button class="btn btn-link btn-sm order-1 order-lg-0" id="sidebarToggle" href="#"><i class="fas fa-bars"></i>
    </button>
    <!-- Navbar Search-->
    <%--    <form action="<c:url value="/staff/searchById"/>" method="get">--%>
    <%--        <input type="text" name="id" placeholder="search name">--%>
    <%--        <input type="submit" value="submit">--%>
    <%--    </form>--%>

    <form action="<c:url value="/staff/searchById"/>" method="get"
          class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
        <div class="input-group">
            <input class="form-control" type="text" name="id" placeholder="Search for name..." aria-label="Search"
                   aria-describedby="basic-addon2"/>
            <div class="input-group-append">
                <button class="btn btn-primary" type="submit"><i class="fas fa-search"></i></button>
            </div>
        </div>
    </form>
    <!-- Navbar-->
    <ul class="navbar-nav ml-auto ml-md-0">
        <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" id="userDropdown" href="#" role="button" data-toggle="dropdown"
               aria-haspopup="true" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
                <a class="dropdown-item" href="#">Settings</a>
                <a class="dropdown-item" href="#">Activities</a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="login.html">Logout</a>
            </div>
        </li>
    </ul>
</nav>
<%--<div id="layoutSidenav">--%>
<%--    <div id="layoutSidenav_nav">--%>
<%--        <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">--%>
<%--            <div class="sb-sidenav-menu">--%>
<%--                <div class="nav">--%>
<%--                    <a class="nav-link" href="tables.html">--%>
<%--                        <div class="sb-nav-link-icon"><i class="fas fa-user-alt"></i></div>--%>
<%--                        Quản lý khách hàng--%>
<%--                    </a>--%>
<%--                    <a class="nav-link" href="tables.html">--%>
<%--                        <div class="sb-nav-link-icon"><i class="fas fa-user-shield"></i></div>--%>
<%--                        Quản lý loại quyền--%>
<%--                    </a>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <div class="sb-sidenav-footer">--%>
<%--                <div class="small">Logged in as:</div>--%>
<%--                Start Bootstrap--%>
<%--            </div>--%>
</nav>
</div>
<div id="layoutSidenav_content">
    <main>
        <div class="container-fluid">
            <h1 class="mt-4">Danh sách khách hàng</h1>
            <div class="card mb-4">
                <%--                <div class="card-header">--%>
                <%--                    Danh sách khách hàng--%>
                <%--                </div>--%>
                <div style="color: black" class="card-header"><a href="<c:url value="/staff/add"/>">Add new Customer</a>
                </div>
                <p>
                    <c:if test="${requestScope['message'] != null}">
                <h1>${requestScope['message']}</h1>
                </c:if>
                </p>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                            <thead>
                            <tr style="text-align: center">
                                <th>
                                    <form action="<c:url value="/staff/sortById"/>" method="get">
                                        <button type="submit">id <i class='fas fa-angle-double-down'></i></button>
                                    </form>
                                </th>
                                <th>name</th>
                                <th>address</th>
                                <th>position</th>
                                <th>action</th>
                            </tr>
                            </thead>
                            <c:forEach var="staff" items="${staffs}">
                                <tr>
                                    <td><a href="<c:url value="/staff/detail"/>?id=${staff.id}">${staff.id}</a></td>
                                    <td>${staff.name}</td>
                                    <td>${staff.address}</td>
                                    <td>${staff.position}</td>

                                    <td>
                                            <%--                                        <form class="edit" action="<c:url value="/staff/edit"/>?id=${staff.id}" method="get">--%>
                                            <%--                                            <input type="submit">edit</input>--%>
                                            <%--                                        </form>--%>
                                            <%--                                        <form class="delete" action="<c:url value="/staff/remove"/>?id=${staff.id}" method="get">--%>
                                            <%--                                            <input type="submit">delete</input>--%>
                                            <%--                                        </form>--%>
                                        <a href="<c:url value="/staff/edit"/>?id=${staff.id}">edit</a> |
                                        <a href="<c:url value="/staff/remove"/>?id=${staff.id}">delete</a>
                                    </td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </main>
    <footer class="py-4 bg-light mt-auto">
        <div class="container-fluid">
            <div class="d-flex align-items-center justify-content-between small">
                <div class="text-muted">Copyright &copy; Your Website 2020</div>
                <div>
                    <a href="#">Privacy Policy</a>
                    &middot;
                    <a href="#">Terms &amp; Conditions</a>
                </div>
            </div>
        </div>
    </footer>
</div>
</div>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
        crossorigin="anonymous"></script>
<script src="js/scripts.js"></script>
<script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
<script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script>
<script src="assets/demo/datatables-demo.js"></script>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>
</body>
</html>
