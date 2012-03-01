<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  import="java.sql.*" import ="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script >
function disableBackButton()
{
window.history.forward();
}
setTimeout("disableBackButton()", 0);

</script>
<script language="javascript">
function editRecord(faultid){
    var f=document.form;
    f.method="post";
    f.action='edit.jsp?faultid='+faultid;
    f.submit();
}
function deleteRecord(faultid){
    var f=document.form;
    f.method="post";
    f.action='deleteuser.jsp?faultid='+faultid;
    f.submit();
}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
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

<br><br><br>
<p align="center">
<b><font size="5" face="cambri">Faults reported are</font></b></p>
<form method="post"  name="issuelist_form">
<table border="0" cellpadding="10"  align="center"  >
<tr> 
<td align="center">

<th bgcolor=#008080 >Fault Type</th>
		<th bgcolor=#008080 >Summary</th>
		<th bgcolor=#008080 >Details</th>
		<th bgcolor=#008080>Version</th>
		<th bgcolor=#008080 >Product Name</th>
		<th bgcolor=#008080>Severity</th>
		<th bgcolor=#008080 >Author</th>
		<th bgcolor=#008080 >Priority</th>
		<th bgcolor=#008080 >Author Name</th>
		</tr>
	
<%
try{
Connection con = null;
String url = "jdbc:mysql://localhost:3306/";
String db = "mrfaulty";
String driver = "com.mysql.jdbc.Driver";
String userName ="root";
String password="root";
out.println("<hr width=50%/>");

Class.forName(driver).newInstance();
con = DriverManager.getConnection(url+db,userName,password);
ResultSet rs=null;
Statement st =null;
String query = "select * from faultdb";
 st = con.createStatement();
 rs = st.executeQuery(query);
int i=0;
while(rs.next()){ 
	int id=rs.getInt("id");
%>
<tr><td></td>
	
	<td><%=rs.getString("faulttype")%><br /><a href='editfault.jsp?id=<%=id%>'>Edit</a>|<a href='delfault.jsp?id=<%=id%>'>Delete</a></td>
	<td><%=rs.getString("shortdescrip")%></td>
	<td><%=rs.getString("longdescrip")%></td>
	<td><%=rs.getString("version")%></td>
	<td><%=rs.getString("productname")%></td>
	<td><%=rs.getString("severity")%></td>
	<td><%=rs.getString("author")%></td>
	<td><%=rs.getString("priority")%></td>
	<td><%=rs.getString("respname")%></td>
		</tr>
	
<%
i++;
}
}catch(SQLException e) { System.out.println(e.getMessage()); } %>
</table>

</form>
<br>

<p align="center">Click here to search for faults assigned to <a href="responsible.jsp"> here</a></br></br>
 Current date and time: 
<%= new java.util.Date() %> </p>
<%
    Integer hitsCount = 
      (Integer)application.getAttribute("hitCounter");
    if( hitsCount ==null || hitsCount == 0 ){
       /* First visit */
      
       hitsCount = 1;
    }else{
       /* return visit */
       
       hitsCount += 1;
    }
    application.setAttribute("hitCounter", hitsCount);
%>

<p align="center">Total number of visits: <%= hitsCount%></p>
</body>
</html>