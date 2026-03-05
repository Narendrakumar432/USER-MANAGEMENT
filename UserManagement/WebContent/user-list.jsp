<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>

<title>User Management</title>

<link rel="stylesheet"
href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

</head>

<body>

<div class="container">

<h3 class="text-center">User List</h3>

<hr>

<a href="user?action=new" class="btn btn-success">Add New User</a>

<br><br>

<table class="table table-bordered">

<tr>
<th>ID</th>
<th>Name</th>
<th>Email</th>
<th>Country</th>
<th>Actions</th>
</tr>

<c:forEach var="user" items="${listUser}">

<tr>

<td>${user.id}</td>
<td>${user.name}</td>
<td>${user.email}</td>
<td>${user.country}</td>

<td>

<a href="user?action=edit&id=${user.id}">Edit</a>

&nbsp;&nbsp;

<a href="user?action=delete&id=${user.id}">Delete</a>

</td>

</tr>

</c:forEach>

</table>

</div>

</body>

</html>