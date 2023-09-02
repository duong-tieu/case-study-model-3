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
    <%--    <title>Quản lý khách hàng</title>--%>
    <%--</head>--%>
    <%--<body>--%>
    <%--<h1>Thêm mới khách hàng</h1>--%>
    <%--<p><a href="<c:url value="/staffs"/>">Danh sách khách hàng</a></p>--%>

    <%--<form action="<c:url value="/staff/add"/>" method="post">--%>
    <%--    <label>Id: </label><br/>--%>
    <%--    <input type="text" name="id" value="${staff.id}"/><br/>--%>
    <%--    <label>Họ tên: </label><br/>--%>
    <%--    <input type="text" name="name" value="${staff.name}"/><br/>--%>
    <%--    <label>Địa chỉ: </label><br/>--%>
    <%--    <input type="text" name="address" value="${staff.address}"/><br>--%>
    <%--    <label>Email: </label><br/>--%>
    <%--    <input type="text" name="email" value="${staff.email}"/><br/>--%>
    <%--    <label>phone </label><br/>--%>
    <%--    <input type="text" name="phone" value="${staff.phone}"/><br>--%>
    <%--    <label>start date </label><br/>--%>
    <%--    <input type="text" name="startDate" value="${staff.startDate}"/><br>--%>
    <%--    <label>salary </label><br/>--%>
    <%--    <input type="text" name="salary" value="${staff.salary}"/><br>--%>
    <%--    <label>position: </label><br/>--%>
    <%--    <input type="text" name="position" value="${staff.position}"/>--%>
    <%--    <br/><br/>--%>
    <%--    <button type="submit" class="btn btn-success">Lưu lại</button>--%>
    <%--</form>--%>
    <%--<p>--%>
    <%--${message}--%>
    <%--</p>--%>
    <%--</body>--%>
    <%--</html>--%>


    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <!------ Include the above in your HEAD tag ---------->

    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <!------ Include the above in your HEAD tag ---------->


    <title>Bootstrap Example</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>


<hr>
<div class="container bootstrap snippet">
    <div class="row">
        <%--            <p><a href="<c:url value="/staffs"/>">Danh sách khách hàng</a></p>--%>
        <div class="col-sm-2"><a href="<c:url value="/staffs"/>"> back to home page</a></div>
    </div>
    <div class="row">
        <div class="col-sm-3"><!--left col-->


            <div class="text-center">
                <img src="http://ssl.gstatic.com/accounts/ui/avatar_2x.png" class="avatar img-circle img-thumbnail"
                     alt="avatar">
                <h6>Upload a different photo...</h6>
                <input type="file" class="text-center center-block file-upload">
            </div>
            </hr><br>


            <div class="panel panel-default">
                <div class="panel-heading">Website <i class="fa fa-link fa-1x"></i></div>
                <div class="panel-body"><a href="http://bootnipets.com">bootnipets.com</a></div>
            </div>


            <ul class="list-group">
                <li class="list-group-item text-muted">Activity <i class="fa fa-dashboard fa-1x"></i></li>
                <li class="list-group-item text-right"><span class="pull-left"><strong>Shares</strong></span> 125</li>
                <li class="list-group-item text-right"><span class="pull-left"><strong>Likes</strong></span> 13</li>
                <li class="list-group-item text-right"><span class="pull-left"><strong>Posts</strong></span> 37</li>
                <li class="list-group-item text-right"><span class="pull-left"><strong>Followers</strong></span> 78</li>
            </ul>

            <div class="panel panel-default">
                <div class="panel-heading">Social Media</div>
                <div class="panel-body">
                    <i class="fa fa-facebook fa-2x"></i> <i class="fa fa-github fa-2x"></i> <i
                        class="fa fa-twitter fa-2x"></i> <i class="fa fa-pinterest fa-2x"></i> <i
                        class="fa fa-google-plus fa-2x"></i>
                </div>
            </div>

        </div><!--/col-3-->
        <div class="col-sm-9">
            <ul class="nav nav-tabs">
                <li class="active"><a data-toggle="tab" href="#home">Home</a></li>
                <%--                    <li><a data-toggle="tab" href="#messages">Menu 1</a></li>--%>
                <%--                    <li><a data-toggle="tab" href="#settings">Menu 2</a></li>--%>
            </ul>


            <div class="tab-content">
                <div class="tab-pane active" id="home">
                    <hr>
                    <form class="form" action="<c:url value="/staff/add"/>" method="post" id="registrationForm">
                        <div class="form-group">

                            <div class="col-xs-6">

                                <label ><h4>id</h4></label>
                                <input type="text" class="form-control" name="id" value="${staff.id}"
                                       placeholder="Id staff" title="enter your id if any.">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-xs-6">
                                <label ><h4> Name</h4></label><br>
                                <input type="text" class="form-control" name="name" value="${staff.name}"
                                       placeholder=" name" title="enter your  name if any.">
                            </div>
                        </div>
<%--                        <div class="form-group">--%>
<%--                            <div class="col-xs-6">--%>
<%--                                <label ><h4> name</h4></label><br>--%>
<%--                                <input type="text" class="name" name="name" value="${staff.name}"--%>
<%--                                       placeholder=" name" title="enter your  name if any.">--%>
<%--                            </div>--%>
<%--                        </div>--%>

                        <div class="form-group">
                            <div class="col-xs-6">
                                <label for="phone"><h4>address</h4></label>
                                <input type="text" class="form-control" name="address" value="${staff.address}"
                                       id="phone" placeholder="enter address" title="enter your address  if any.">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-xs-6">
                                <label for="mobile"><h4>Email</h4></label>
                                <input type="email" class="form-control" name="email" value="${staff.email}" id="mobile"
                                       placeholder="enter email" title="enter your email if any.">
                            </div>
                        </div>
                        <div class="form-group">

                            <div class="col-xs-6">
                                <label for="email"><h4>phone</h4></label>
                                <input type="text" class="form-control" name="startDate" value="${staff.startDate}"
                                       id="email" placeholder="phone number" title="enter your email.">
                            </div>
                        </div>
                        <div class="form-group">

                            <div class="col-xs-6">
                                <label for="email"><h4>Start date</h4></label>
                                <input type="date" class="form-control" name="phone" value="${staff.phone}"
                                       placeholder="dd/mm/yyyy" title="enter a location">
                            </div>
                        </div>
                        <div class="form-group">

                            <div class="col-xs-6">
                                <label for="password"><h4>salary</h4></label>
                                <input type="text" class="form-control" name="salary" value="${staff.salary}"
                                       id="password" placeholder="salary" title="enter your password.">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-xs-6">
                                <label for="password2"><h4>position</h4></label>
                                <input type="text" class="form-control" name="position" ${staff.position} id="password2"
                                       placeholder="position" title="enter your password2.">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-xs-12">
                                <br>
                                <button class="btn btn-lg btn-success" type="submit"><i
                                        class="glyphicon glyphicon-ok-sign"></i> Save
                                </button>
                                <button class="btn btn-lg" type="reset"><i class="glyphicon glyphicon-repeat"></i> Reset
                                </button>
                            </div>
                        </div>
                    </form>

                    <hr>
                    <p>
                        <c:if test="${requestScope['message'] != null}">
                    <h1>${requestScope['message']}</h1>
                    </c:if>
                    </p>

                </div>

            </div><!--/tab-pane-->
        </div><!--/tab-content-->

    </div><!--/col-9-->
</div><!--/row-->

