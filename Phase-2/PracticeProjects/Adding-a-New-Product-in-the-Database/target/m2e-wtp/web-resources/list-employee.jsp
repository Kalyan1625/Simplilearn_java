<%@page import="com.deo.EmployeeDao"%>
<%@page import="com.entity.Employee"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee List</title>
</head>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<body>

	<%
		List<Employee> employee1 = EmployeeDao.listEmployee();
		request.setAttribute("emplist", employee1);
	%>

	<table style="border: 1px solid black;">
		<tr>
			<th>Id</th>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Salary</th>
			<th>Department</th>
		</tr>

		<c:forEach items="${emplist}" var="emp">
			<tr>
				<td>${emp.getId()}</td>
				<td>${emp.getFirstName()}</td>
				<td>${emp.getLastName()}</td>
				<td>${emp.getSalary()}</td>
				<td>${emp.getDepartment()}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>