<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

</head>
<body>
<% 
String id=request.getParameter("faulttypeid");

String faulttype=request.getParameter("faulttype");
String shortdescrip=request.getParameter("shortdescrip");
String longdescrip=request.getParameter("longdescrip");
String productname=request.getParameter("productname");
String severity=request.getParameter("severity");
String author=request.getParameter("author");
String version=request.getParameter("verion");
try{
Connection conn = null;
Class.forName("com.mysql.jdbc.Driver").newInstance();
conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mrfaulty","root;", "root");

Statement st=null;
st=conn.createStatement();
st.executeUpdate("update faultdb set faulttype='"+faulttype+"',shortdescrip='"+shortdescrip+"',longdescrip='"+longdescrip+"',productname='"+productname+"',severity='"+severity+"',author='"+author+"',version='"+version+"' where faultid='"+id+"'");
out.println("Data is updated successfully");
}
catch(Exception e){
out.println(e);
}
%>
</body>
</html>