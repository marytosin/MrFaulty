package com.MrFaulty;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Home
 */
@WebServlet("/Home")
public class Home extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	public void init(ServletConfig config) throws ServletException{
		super.init(config);
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String connectionURL = "jdbc:mysql://localhost/mrfaulty";
		Connection connection=null;
		response.setContentType("text/html");
		new java.util.Date();
		PrintWriter out = response.getWriter();
		out.println("<html><head><title>Home</title></head>");
		out.println("<form style=margin-top:0;margin-bottom:0; method=post action= >");
		out.println("<table cellspacing=1 cellpadding=1 width=100% border=2 bgcolor=#008080>");
		out.println("<tr><td>&nbsp;&nbsp;");
		out.println(">HOME</a> &nbsp;&nbsp;&nbsp;");
		out.println("<a href=Create.jsp>Create</a> &nbsp;&nbsp;&nbsp;");
		out.println("<a href=Query.jsp>Query</a> &nbsp;&nbsp;&nbsp;");
		out.println("<a href=Report.jsp>Report</a> &nbsp;&nbsp;&nbsp;");
		out.println("<a href=Project.jsp>Project</a> &nbsp;&nbsp;&nbsp;");
		out.println("</td>");
		out.println("</tr>");
		out.println("</table>");
		out.println("</form>");
		out.println("<body><h1>Faults reported are</h1>");
		out.println("<table border=0 borderColor=#ffe9bf align=center width=930 >");
		out.println("<tr>" 
				+"<td <nobr><input type=checkbox name=allbox value=1  onClick=document.location=(remove.jsp)>"
				+ "<th align=center bgcolor=#008080 width=80> Fault ID</th>" 
				+"<th bgcolor=#008080 width=200>Fault Type</th>"
				+"<th bgcolor=#008080 width=200>Summary</th>"
				+"<th bgcolor=#008080 width=150>Version</th>"
				+"<th bgcolor=#008080 width=100 >Product Name</th>"
				+"<th bgcolor=#008080 width=100>Severity</th>"
				+"<th bgcolor=#008080 width=100>Author</th>"
				+"</tr>"
				);
		try{
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection(connectionURL, "root", "root"); 
			Statement sr = connection.createStatement();
			String query = "select faultid,faulttype,shortdescrip,version,productname,severity,author from faultdb";
			
			ResultSet rst = sr.executeQuery(query);
	;
		//iterate through each row of rst
		while(rst.next())
		{
			String fautid=rst.getString("faultid");
			String fauttyp=rst.getString("faulttype");
			String sumry=rst.getString("shortdescrip");
			String vid=rst.getString("version");
			String proname=rst.getString("productname");
			String severid=rst.getString("severity");
			String authid=rst.getString("author");
			out.println("<tr align=center>" 
					+"<td <nobr><input type=checkbox name=allbox value=1  onClick=document.location=(remove.jsp)>"
					+ "<td width=80>" +fautid+"</td>" 
					+"<td width=200>"+fauttyp+"</td>"
					+"<td width=200>"+sumry+"</td>"
					+"<td width=150>"+vid+"</td>"
					+"<td width=100>"+proname+"</td>"
					+"<td width=100>"+severid+"</td>"
					+"<td width=100>"+authid+"</td>"
					+"</tr>"
					);
		}
		out.println("<table></body</html>");
		}
		catch(Exception ex)
		{
			out.println("<HTML>" +
                    "<Head><Title>" +
                    "Bedrock: Error" +
                    "</Title></Head>\n<Body>" +
                    "<P>SQL error in doGet: " +
                    ex.getMessage() + "</P></Body></HTML>");
        return;
}
out.close();
		}
	}

	

