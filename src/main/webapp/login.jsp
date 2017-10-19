<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: andersoncardoso
  Date: 10/17/17
  Time: 1:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:if test="${param.user.equals('ilaha') && param.password.equals('iloveanderson')}">
    <c:redirect url="profile.jsp"/>
</c:if>
<html>
<head>
    <title>Login Page</title>
    <%@include file="partials/navbar.jsp" %>
    <%@include file="partials/styles.jsp" %>
    <%@include file="partials/scripts.jsp" %>
</head>
<body>
<div class="container text-center" style="max-width: 400px">
    <h1 style="margin: 80px 0 100px 0">Login Page</h1>
<form id="form" method="POST" action="/login.jsp">
    <div class="form-group">
        <label>Username</label>
        <input class="form-control" type="text" id="username" name="user">
    </div>
    <div class="form-group">
        <label>Password</label>
        <input class="form-control" type="password" id="password" name="password">
    </div>
    <div class="text-center">
        <input class="btn btn-primary" type="submit" id="login" name="login" value="Login">
    </div>
</form>
</div>
</body>
</html>
