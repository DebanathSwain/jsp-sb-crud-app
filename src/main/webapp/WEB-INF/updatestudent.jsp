<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<h1>Update Contact</h1>
<form method="post" action="/update-student/${id}">
    <table>
        <tr>
            <td>Name: </td>
            <td><input type="text" name="name"/></td>
        </tr>
        <tr>
            <td>Age: </td>
            <td><input type="text" name="age"/></td>
        </tr>
        <tr>
            <td>Email: </td>
            <td><input type="text" name="email"/></td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" value="Update"/></td>
        </tr>
    </table>
</form>
</body>
</html>