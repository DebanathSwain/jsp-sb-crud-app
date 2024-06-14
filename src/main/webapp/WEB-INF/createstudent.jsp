<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color: #FFFFE0;">

<div style="margin-top:50px; margin-left:250px; height:50px;"></div>
<h1>Create Contact</h1>
<form method="post" action="/create-student">
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
            <td><input type="submit" value="Create"/></td>
        </tr>
    </table>
</form>
</body>
</html>