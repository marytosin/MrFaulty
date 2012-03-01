<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body >

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
<form name="f1" align="center">
<%
 String st=request.getParameter("s1");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mrfaulty", "root", "root");
Statement stmt=con.createStatement();
Statement stmt1=con.createStatement();
ResultSet rs=stmt.executeQuery("select distinct respname from faultdb");
%> 
<h4><font>Search for faults assigned to</font></h4><select name="s1" onChange="document.f1.submit()">
<option>SELECT </option>
<%
  while(rs.next())
   {
    String x=rs.getString("respname");
   %>
<option <%
           if(st !=null && st.equals(x))
   out.println("selected");
      %>
    ><%=x%></option>
<%
   }
   %>
</select>

  <%
     if(st !=null)
       {
   ResultSet rs1=stmt1.executeQuery("select * from faultdb where respname='"+st+"'");
  %>
<table border="0" cellpadding="10" align="center">
  <tr><th>Fault ID</th><th>Fault Name</th><th>Summary</th><th>Details</th><th>Product Name</th><th>Severity</th><th>Priority</th></tr>
<%
  while(rs1.next())
  {
       String fid=rs1.getString("faultid");
       String fname=rs1.getString("faulttype");
       String sdescrip=rs1.getString("shortdescrip");
       String ldescrip=rs1.getString("longdescrip");
       String pname=rs1.getString("productname");
       String sever=rs1.getString("severity");
       String prio=rs1.getString("priority");
       
       

   %>
            <tr>
            <td><b><font color='#663300'><%=fid%></font></b></td>
            <td><b><font color='#663300'><%=fname%></font></b></td>
            <td><b><font color='#663300'><%=sdescrip%></font></b></td>
            <td><b><font color='#663300'><%=ldescrip%></font></b></td>
            <td><b><font color='#663300'><%=pname%></font></b></td>
            <td><b><font color='#663300'><%=sever%></font></b></td>
            <td><b><font color='#663300'><%=prio%></font></b></td>
            </tr>
 <%
    }//end of while
 %>
</table>
<%
   } //end of if
 %>

</form>
</body>
</html>