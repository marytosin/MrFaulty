<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Fault</title>
</head>
<body>

<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>

<html>

<head><title>My Contacts</title></head>

<body>
<%@include file='db.connect.jsp'%>
<form style="margin-top:0;margin-bottom:0;" method="post" action="">
<table cellspacing=1 cellpadding=0 width="50%" border=0 bgcolor=#008080 align="center">	
<tr><td align="center"><font color="white">&nbsp;&nbsp;
      <a href="Home.jsp" class="menu" style="text-decoration:none;"> 
      HOME</a></font>
  
      &nbsp;&nbsp;&nbsp;<a href="Create.jsp"style="text-decoration:none;" >
      CREATE</a>
  
       &nbsp;&nbsp;&nbsp;<a href="listdev.jsp"style="text-decoration:none;" >
      DEVELOPER LIST</a>
      
      &nbsp;&nbsp;&nbsp;<a href="listrep.jsp" style="text-decoration:none;">
      REPORTER LIST</a>
  
      &nbsp;&nbsp;&nbsp;<a href="logout.jsp" style="text-decoration:none;">
      Log out</a>
      
</td>

</tr>
</table>
</form>
<form action="faultupdate.jsp"  name='newfaultform' method="post">

<table class='login' cellpadding='10' align='center'>

<tr>
<td colspan="2" align="center"><h2>Edit Contact</h2></td>
</tr>

<%

	int fid = Integer.parseInt(request.getParameter("id"));

	String sql= "SELECT * FROM faultdb WHERE id = ?";

	PreparedStatement pstmt = con.prepareStatement(sql);
	pstmt.setInt(1, fid);

	ResultSet rs = pstmt.executeQuery();

	while(rs.next())
	{
		String ftyp = rs.getString("faulttype");
		String sdesc = rs.getString("shortdescrip");
		String ldesc = rs.getString("longdescrip");
		String vsion = rs.getString("version");
		String pnam = rs.getString("productname");
		String sver = rs.getString("severity");
		String ath = rs.getString("author");
		String pritu = rs.getString("priority");
		String renme = rs.getString("respname");
		int id = rs.getInt("id");

  %>

	<tr>
	<td>Fault Type: </td>
	<td><input type="text" name ="contact_name" value = "<%=ftyp%>"size="40"> </td>
	</tr>

	<tr>
	<td>Summary: </td>
	<td><input type="text" name ="mobile" value = "<%=sdesc%>" size="40"></td>
	</tr>

	<tr>
	<td>Details: </td>
	<td><input type="text" name ="email" value = "<%=ldesc%>" size="40"></td>
	</tr>
    <tr>
	<td>Version: </td>
	<td><input type="text" name ="email" value = "<%=vsion%>" size="40"></td>
	</tr>
	<tr>
	<td>Product Name: </td>
	<td><input type="text" name ="email" value = "<%=pnam%>" size="40"></td>
	</tr>
	<tr>
	<td>Severity: </td>
	<td><input type="text" name ="email" value = "<%=sver%>" size="40"></td>
	</tr>
	<tr>
	<tr>
	<td>Author: </td>
	<td><input type="text" name ="email" value = "<%=ath%>" size="40"></td>
	</tr>
	<tr>
	<tr>
	<td>Priority: </td>
	<td><input type="text" name ="email" value = "<%=pritu%>" size="40"></td>
	</tr>
	<tr>
	<tr>
	<td>Name: </td>
	<td><input type="text" name ="email" value = "<%=renme%>" size="40"></td>
	</tr>
	<td colspan="2" align="center"><br/><br/>
	<input type = "hidden" name ="contact_id" value = "<%=fid%>"/>
	<input type="Submit" value ="Save">
	<input type="Reset" value ="Reset">
	</td>
	</tr>

	<%
	}//while

rs.close();
rs = null;
pstmt.close();
pstmt = null;
con.close();

%>

</table>
</form>
<p align='center'>
<a href="ContactDetails.jsp">View Contacts</a>
</p>

</body>
</html>