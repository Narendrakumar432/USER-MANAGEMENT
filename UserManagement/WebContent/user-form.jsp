<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>User Management Application</title>

<link rel="stylesheet"
href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

</head>

<body>

<header>

<nav class="navbar navbar-expand-md navbar-dark"
style="background-color: blue">

<div>
<a href="https://www.xadmin.net" class="navbar-brand">
User Management Application
</a>
</div>

<ul class="navbar-nav">
<li>
<a href="<%=request.getContextPath()%>/" class="nav-link">
Users
</a>
</li>
</ul>

</nav>

</header>

<br>

<div class="container col-md-5">

<div class="card">

<div class="card-body">

<c:choose>

<c:when test="${user != null}">
<form action="<%=request.getContextPath()%>/update" method="post">
<input type="hidden" name="id" value="${user.id}" />
</c:when>

<c:otherwise>
<form action="<%=request.getContextPath()%>/insert" method="post">
</c:otherwise>

</c:choose>

<h2 class="text-center">

<c:choose>
<c:when test="${user != null}">
Edit User
</c:when>

<c:otherwise>
Add New User
</c:otherwise>
</c:choose>

</h2>

<fieldset class="form-group">

<label>User Name</label>

<input type="text"
name="name"
class="form-control"
value="${user.name}"
required>

</fieldset>

<fieldset class="form-group">

<label>User Email</label>

<input type="text"
name="email"
class="form-control"
value="${user.email}">

</fieldset>

<fieldset class="form-group">

<label>User Country</label>

<input type="text"
name="country"
class="form-control"
value="${user.country}">

</fieldset>

<button type="submit" class="btn btn-success">
Save
</button>

</form>

</div>

</div>

</div>

</body>

</html>