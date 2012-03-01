<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"  import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>



<head><title>My Contacts</title></head>

<body>

<%@include file='db.connect.jsp'%>

<%! boolean success = false; %>
<%
	int id = Integer.parseInt(request.getParameter("id"));	
	
	String sql= "DELETE FROM faultdb WHERE id = ?";
	
	PreparedStatement pstmt = con.prepareStatement(sql);
	pstmt.setInt(1, id);
	
	int nRows = pstmt.executeUpdate();
	
	if(nRows==0){
		success = false;
	}
	
	else{
		success = true;	
	}
	
	pstmt.close();con.close();

%>
	
	
	<%
			if(success==true){
				response.sendRedirect("Home.jsp");
	%>
	
	<h2>Contact have been successfully deleted</h2>
	
	<%
		}//if end
		else{		
	%>
	
	<h2> Error -- Contact could not be deleted </h2>
	
	<%
		}//else end
		
	%>


</body>
</html>
