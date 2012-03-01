<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List of Developers</title>
</head>
<body>

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
<br><br><br>
<p align="center">
<b><font size="5" face="cambri">Developers List</font></b></p>
<table border="0" borderColor="#ffe9bf" align="center" cellpadding="10" >
<tr> 
<th align=center bgcolor=#008080 > First Name</th>
<th bgcolor=#008080 >Last Name</th>
		<th bgcolor=#008080 width=200>Email</th>
		
		</tr>
	
<%
Connection con = null;
String url = "jdbc:mysql://localhost:3306/";;;
String db = "mrfaulty";
String driver = "com.mysql.jdbc.Driver";
String userName ="root";
String password="root";

int sumcount=0;
Statement st;
try{
Class.forName(driver).newInstance();
con = DriverManager.getConnection(url+db,userName,password);
String query = "select * from developerdb order by fname";
st = con.createStatement();
ResultSet rs = st.executeQuery(query);
%>

<%
while(rs.next()){
%>
<tr align="center">
<td><%=rs.getString(3)%></td>
<td><%=rs.getString(2)%></td>
<td><%=rs.getString(1)%></td>

</tr>
<%
}
%>

<%
}
catch (Exception e) {
e.printStackTrace();
}
%>
</table>
<p align="center">
<a href="newdev.jsp">Add New Developer</a>
</body>
</html>