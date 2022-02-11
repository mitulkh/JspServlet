<%@ page import="com.registration.model.Employee" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Display</title>
		<link rel="stylesheet" href="design.css">
	</head>

	<body>
		<h1 style="color:red">Current Employee Detail</h1>
		<%
		Employee employee = (Employee) session.getAttribute("data");
		%>
		<table id="employees">
			<tr>
				<th>First Name</th>
				<th>Last Name</th>
				<th>User Name</th>
				<th>Contact No</th>
			</tr>
			<tr>
				<td><%= employee.getFirstName() %></td>
				<td><%= employee.getLastName() %></td>
				<td><%= employee.getUserName() %></td>
				<td><%= employee.getContactNo() %></td>
			</tr>
		</table>
	</body>

</html>