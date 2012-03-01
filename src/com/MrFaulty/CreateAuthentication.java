package com.MrFaulty;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CreateAuthentication
 */
@WebServlet("/CreateAuthentication")

public class CreateAuthentication extends HttpServlet{
/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
 int updateQuery=0;
public void init(ServletConfig config) throws ServletException{
super.init(config);
}
public void doPost(HttpServletRequest req, HttpServletResponse res) 
throws ServletException, IOException{
String connectionURL = "jdbc:mysql://localhost/mrfaulty";
Connection connection=null;
ResultSet rs;
res.setContentType("text/html");
PrintWriter out = res.getWriter();

String faulttype = req.getParameter("faulttype");
String shortdescrip = req.getParameter("shortdescrip");
String longdescrip = req.getParameter("longdescrip");
String productname = req.getParameter("productname");
String severity = req.getParameter("severity");
String author = req.getParameter("author");
String rname = req.getParameter("respname");
String prio = req.getParameter("priority");
String version = req.getParameter("version");

try {
Class.forName("com.mysql.jdbc.Driver");
connection = DriverManager.getConnection(connectionURL, "root", "root"); 
String sql = "insert into faultdb (faulttype,shortdescrip,longdescrip,productname,severity,author,respname,priority,version) values (?,?,?,?,?,?,?,?,?)";
java.sql.PreparedStatement pst = connection.prepareStatement(sql);

pst.setString(1, faulttype);
pst.setString(2, shortdescrip);
pst.setString(3, longdescrip);
pst.setString(4, productname);
pst.setString(5, severity);
pst.setString(6, author);
pst.setString(7, rname);
pst.setString(8, prio);
pst.setString(9, version);

updateQuery = pst.executeUpdate();
out.println("<form style=margin-top:0;margin-bottom:0; method=post action=>");
out.println("<table cellspacing=1 cellpadding=0 width=50% border=0 bgcolor=#008080 align=center>");
out.println("<tr><td align=center><font color=white>&nbsp;&nbsp;");
out.println("<a href=Home.jsp style=text-decoration:none;>HOME</a></font>");
out.println("&nbsp;&nbsp;&nbsp;<a href=Create.jsp style=text-decoration:none;>Create</a></font>");
out.println("&nbsp;&nbsp;&nbsp;<a href=listdev.jsp style=text-decoration:none;>List Developer</a></font>");
out.println("&nbsp;&nbsp;&nbsp;<a href=Home.jsp style=text-decoration:none;>HOME</a></font>");
out.println("&nbsp;&nbsp;&nbsp;<a href=logout.jsp style=text-decoration:none;>Log out</a>");
out.println("</td></tr></table></form>");
out.println(" <h1 align=center>New Faults have been reported:</h1><br> ");
out.println("<b align=center> Fault Type</b>:&nbsp;&nbsp;"+faulttype+"<br>");
out.println(" <b align=center>Short Description</b>:&nbsp;&nbsp;"+shortdescrip+"<br>");
out.println("<b align=center> Long Description</b>:&nbsp;&nbsp;"+longdescrip+"<br>");
out.println(" <b align=center>Product Name</b>:&nbsp;&nbsp;"+productname+"<br>");
out.println(" <b align=center>Severity</b>:&nbsp;&nbsp;"+severity+"<br>");
out.println(" <b align=center>Author</b>:&nbsp;&nbsp;"+author+"<br>");
out.println(" <b align=center>Priority</b>:&nbsp;&nbsp;"+prio+"<br>");
out.println("<b align=center> Version</b>:&nbsp;&nbsp;"+version+"<br>");

pst.close();
}
catch(ClassNotFoundException e){
out.println("Couldn't load database driver: " + e.getMessage());
}
catch(SQLException e){
out.println("SQLException caught: " + e.getMessage());
}
catch (Exception e){
out.println(e);
}
finally {

try {
if (connection != null) connection.close();
}
catch (SQLException ignored){
out.println(ignored);
}
}
}
}