<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<script >
function Validate(){
 var user=document.frm.user
 var pass=document.frm.pass
 
 if ((user.value==null)||(user.value=="")){
  alert("Please Enter user name")
  user.focus()
  return false
 }
 if ((pass.value==null)||(pass.value=="")){
  alert("Please Enter password")
  pass.focus()
  return false
 }
 return true
 }
function disableBackButton()
{
window.history.forward();
}
setTimeout("disableBackButton()", 0);

</script>
<html>

<head>

<title>Login Authentication</title>
</head>
<body>

<form name="frm" action="LoginAuthentication" method="Post" onSubmit="return Validate()" >
<table align="center"><tr><td><h2>Login Authentication</h2></td></tr></table>
<table width="300px" align="center" style="border:1px solid #000000;background-color:#efefef;">
<tr><td colspan=2></td></tr>
<tr><td colspan=2>&nbsp;<br></td></tr>
<tr><td align="center">User Name:&nbsp;&nbsp;&nbsp;<input type="text" name="user" value=""/><br></td></tr>
<tr><td align="center">Password:&nbsp;&nbsp;<input type="password" name="pass" value=""/><br></td></tr>
<tr><td align="center"><br>&nbsp;&nbsp;&nbsp;<input type="submit" value="Sign-In" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" value="Reset" /></td></tr>
<tr><td colspan=2>&nbsp;</td></tr>
</table>
</form>

</body>
</html>