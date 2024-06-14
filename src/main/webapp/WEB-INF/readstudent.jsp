<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="stag" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 60%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}
</style>
</head>
<body style="background-color: #FFFFE0;">
<div style="margin-top:50px; margin-left:200px; height:50px;"></div>

<h1>Read Students</h1>
<table style="margin-top: 0px;margin-left: 100px; "
>
    <tr>
        <th>Id</th>
        <th>Name</th>
        <th>Age</th>
        <th>Email</th>
      
    </tr>
<c:forEach var="student" items="${students}">
        <tr>
            <td>${student.id}</td>
            <td>${student.name}</td>
            <td>${student.age}</td>
            <td>${student.email}</td>
            <td><a href="/update-student/${student.id}">Update</a></td>
            <td><a href="/delete-student/${student.id}">Delete</a></td>
        </tr>
    </c:forEach>
</table>
<br/>
<a href="/create-student">Create Student</a>
</body>
</html>