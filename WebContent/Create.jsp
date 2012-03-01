<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Create  </title>
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
<br>
<table align="center"><tr><td><h2>Create and submit</h2></td></tr></table>
<form name="createreport" action="CreateAuthentication" method="post" >



<table align="center" border="0" cellpadding="10">


<tr><td><b>Issue Type&nbsp;&nbsp;</b>&nbsp;&nbsp;
</td><td> <input type="text" name="faulttype"><br>
</td>
</tr>

<tr><td>
<font color="red" size=2>
<b>Summary*&nbsp;&nbsp;</b></font>&nbsp;&nbsp;
</td><td> <input type="text" name="shortdescrip" size="50"><br>
</td>
</tr>

<tr><td>
<font color="red" size=2>
<b>Detail*&nbsp;&nbsp;</b></font>&nbsp;&nbsp;
</td><td> <textarea cols="40" rows="7" name="longdescrip"></textarea><br>
</td>
</tr>



 <!--the product name;where ther is fault -->       
<tr><td>Product
<b>&nbsp;&nbsp;</b>&nbsp;&nbsp;
</td><td> 
<select name="productname" 
           style="font-size:14px;">
        <option  selected value="window">Window</option>
<option value="solaris">Solaris</option>
<option value="linux">Linux</option>
<option value="ibm">IBM</option>
        </select><br>
        </td></tr>
        <!--How serious it is -->      
        <tr><td>Severity
<b>&nbsp;&nbsp;</b>&nbsp;&nbsp;
</td><td> 
<select name="severity" style="font-size:14px;">
 <option selected value="normal">Normal</option>
<option value="critical">Critical</option>
<option value="serious">Serious</option>
<option value="noncritical">Non-Critical</option>
<option value="minor">Minor</option>
        </select><br>
        </td>
        </tr>
        <!--who's responsible -->      
      <tr><td>Responsible<b>&nbsp;&nbsp;</b>&nbsp;&nbsp;</td><td> 
<select name="author" style="font-size:14px;">
        <option selected value="administrator">Administrator</option>
<option value="developer">Developer</option>

        </select>  <br><br>
        </td>
        </tr>
        <!--the dev/admin name -->      
          <!--As new developers,administrators are added to the database,the web admin have to update the option list -->
      <tr><td>Responsible Name<b>&nbsp;&nbsp;</b>&nbsp;&nbsp;</td><td> 
<select name="respname" style="font-size:14px;">
        <option selected value="MArk Ven">Mark Ven</option>
<option value="Gen Kan">Gen Kan</option>
<option value="Fern Garry">Fern Garry</option>
<option value="Ibori James">Ibori James</option>
<option value="Jogn Samson">Jogn Samson</option>
<option value="Egfg yhrfv">Stephanie Gregg</option>
<option value="Thgfh yhrgh">Theophilus Yern</option>
<option value="Yhfg hgdf">June Vera</option>


        </select>  <br><br>
        </td>
        </tr>
          <tr><td>Priority<b>&nbsp;&nbsp;</b>&nbsp;&nbsp;</td><td> 
<select name="priority" style="font-size:14px;">
        <option selected value="Low">Low</option>
<option value="Medium">Medium</option>
   <option  value="High">High</option>
<option value="Urgent">Urgent</option>

        </select>  <br><br>
        </td>
        </tr>
        
  <tr><td>
     <font color="red" size=2>
<b>Found in version*&nbsp;&nbsp;</b></font>
</td><td> 
<select name="version" style="font-size:14px;">
<option selected value="alpha1.0">alpha 1.0</option>
<option value="beta1.0">beta 1.0</option>
<option value="beta1.2">beta 1.2</option>
<option value="beta2.0">beta 2.0</option>
<option value="beta2.1">beta 2.1</option>


        </select><br>
        </td>
        </tr>
         <tr><td align="center"><input type="submit" value="Submit"><input type="reset" value="Reset">
         
        
         </td></tr>
        
</table>
</font>
</form>
</body>
</html>