<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*" import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>new dev</title>
</head>
<body>
<%boolean success=false; %>
<%
String dbURL="jdbc:mysql://localhost:3306/mrfaulty";
String username="root";
String password="root";
Connection con=DriverManager.getConnection(dbURL,username,password);
String firstn=request.getParameter("fname");
String lastn=request.getParameter("lname");
String emid=request.getParameter("emailid");
String sqlr="insert into developerdb(fname,lname,emailid) values(?,?,?)";
PreparedStatement pstmt=con.prepareStatement(sqlr);
pstmt.setString(1,firstn);
pstmt.setString(2,lastn);
pstmt.setString(3,emid);
int nrows=pstmt.executeUpdate();
if(nrows==0){
	success= false;
	}
else{
	success=true;
}
pstmt.close();
con.close();

%>
<%
if(success==true){
%>
<form style="margin-top:0;margin-bottom:0;" method="post" action="">
<table cellspacing=1 cellpadding=0 width="50%" border=0 bgcolor=#008080 align="center">	
<tr><td align="center"><font color="white">&nbsp;&nbsp;
      <a href="Home.jsp" class="menu" style="text-decoration:none;"> 
      HOME</a></font>
  
      &nbsp;&nbsp;&nbsp;<a href="Create.jsp"style="text-decoration:none;">
      CREATE</a>
  
       &nbsp;&nbsp;&nbsp;<a href="listdev.jsp"style="text-decoration:none;" >
      Developer List</a>
      
      &nbsp;&nbsp;&nbsp;<a href="report.jsp" style="text-decoration:none;">
      REPORTS</a>
  
      &nbsp;&nbsp;&nbsp;<a href="projects.jsp" style="text-decoration:none;">
      PROJECTS</a>
     <a href="logout.jsp" style="text-decoration:none;">Log out</a>
      
</td>

</tr>
</table>
</form>
<h2 align="center">New Developer have been added</h2>
<%
}//if end
else{
%>
<h2>Error-- Developer could not be added</h2>
<%
} //else end
%>
</body>
</html>