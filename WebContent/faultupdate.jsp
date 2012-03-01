<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*"  import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

<head><title>My Contacts</title></head>

<body>

<%@include file='db.connect.jsp'%>

<%! boolean success = false; %>
<%
	String faultype = request.getParameter("faulttype");
	String shrtdes = request.getParameter("shortdescrip");
	String lngdesc = request.getParameter("longdescrip");	
	String vson = request.getParameter("version");
	String prnme = request.getParameter("productname");	
	String srty = request.getParameter("severity");
	String athrs = request.getParameter("author");	
	String pty = request.getParameter("priority");
	String rname = request.getParameter("respname");	
	int fid = Integer.parseInt(request.getParameter("id"));
	
	String sql= "UPDATE faultdb SET faulttype = ?, shortdescrip = ?, longdescrip= ? , version = ?, productname= ? , severity = ?, author= ?, priority = ?, respname= ? WHERE id = ?";
	
	PreparedStatement pstmt = con.prepareStatement(sql);
	pstmt.setString(1, faultype);
	pstmt.setString(2, shrtdes);
	pstmt.setString(3, lngdesc);
	pstmt.setString(4, vson);
	pstmt.setString(5, prnme);
	pstmt.setString(6, srty);
	pstmt.setString(7, athrs);
	pstmt.setString(8, pty);
	pstmt.setString(9, rname);
	pstmt.setInt(10, fid);
	
	int nRows = pstmt.executeUpdate();
	
	if(nRows==0){
		success = false;
	}
	
	else{
		response.sendRedirect("Home.jsp");
	}
	
	pstmt.close();con.close();

%>
	
	
	<%
			if(success==true){
	%>
	
	<h2>Contact have been successfully updated</h2>
	
	<%
		}//if end
		else{		
	%>
	
	<h2> Error -- Contact could not be updated </h2>
	
	<%
		}//else end
		
	%>

<p align='center'>
<a href="ContactDetails.jsp">View Contacts</a>
</p>

</body>
</html>