<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*" import ="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

</head>
<body>

<%
	String dbURL = "jdbc:mysql://localhost/mrfaulty";
	String username = "root";
	String password = "root";
	Connection con = DriverManager.getConnection(dbURL, username, password);
%>

</body>
</html>