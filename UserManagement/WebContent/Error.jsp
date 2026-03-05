<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true" %>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Error Page</title>
</head>

<body>

<center>

<h1>Something went wrong</h1>

<h2>Error Message:</h2>

<p><%= exception.getMessage() %></p>

</center>

</body>

</html>