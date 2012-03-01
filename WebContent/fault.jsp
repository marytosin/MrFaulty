<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="db.connect.jsp" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<br><br>
<form method="post" name="form">

<%

String fid = request.getParameter("faultid");
Statement st;
String id=request.getParameter("faultid");
int sumcount=0;
try{

String query = "select * from faultdb where faultid="+id+"'";
st = con.createStatement();
ResultSet rs = st.executeQuery(query);
%>
<%
while(rs.next()){
%>
<b>Fault ID: <%=rs.getString(1)%></b><br>
<b>Fault Type:<%=rs.getString(2)%></b><br>
<b>Short Description:<%=rs.getString(3)%></b><br>
<b>Long Description:<%=rs.getString(4)%></b><br>
<b>Version:<%=rs.getString(5)%></b><br>
<b>Product Name:<%=rs.getString(6)%></b><br>
<b>Severity:<%=rs.getString(7)%></b><br>
<b>Author:<%=rs.getString(8)%></b><br>
<b>Priority:<%=rs.getString(9)%></b><br>
<b>Response Name:<%=rs.getString(10)%></b><br>

<%
}
%>
<%
}
catch(Exception e){
e.printStackTrace();
}
%>

</form>

</body>
</html>