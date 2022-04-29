<%@page import="com.deo.EmployeeDao"%>
<%@page import="com.entity.Employee"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Handle Submit Employee</title>
</head>
<body>

<%
	String firstName = request.getParameter("firstName");
	String lastName = request.getParameter("lastName");
	String salary = request.getParameter("salary");
	
	String dept = request.getParameter("dept");
	
	
	Employee e = new Employee();
	e.setFirstName(firstName);
	e.setLastName(lastName);
	e.setSalary(Double.valueOf(salary));
	e.setDepartment(dept);
	
	EmployeeDao.addEmployee(e);
	
	response.sendRedirect("success.jsp");
	
	
	
	
%>
</body>
</html>