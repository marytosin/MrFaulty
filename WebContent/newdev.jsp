<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>New Developer</title>
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
<form action="newdevp.jsp" name="newdevfrm" method="post">
<table class="login" cellpadding="10" align="center">
<tr>
<td colspan="2" align="center"><h2>Add New developer</h2></td>
</tr>
<tr>
<td>First Name:</td>
<td><input type="text" name="fname" size="40"></td>
</tr>
<tr>
<td>Last Name:</td>
<td><input type="text" name="lname" size="40"></td>
</tr>
<tr>
<td>Email:</td>
<td><input type="text" name="emailid" size="40"></td>
</tr>
<tr>
<td colspan="2" align="center"><br><br>
<input type="submit" value="Submit">
<input type="reset" value="reset">
</td>
</tr>
</table>

</form>
</body>
</html>