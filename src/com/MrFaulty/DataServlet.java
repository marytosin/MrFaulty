package com.MrFaulty;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DataServlet
 */
@WebServlet("/DataServlet")
public class DataServlet extends HttpServlet {
	
       /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private ServletConfig config;
       //setting the jsp page
       String page="Home.jsp";
    public void init(ServletConfig config)
    		throws ServletException{
    	this.config=config;
    }
    public DataServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();

		  //Establish connection to MySQL database

		  String connectionURL = "jdbc:mysql://localhost/mrfaulty";

		  Connection connection= null;

		  ResultSet rs;

		  response.setContentType("text/html");

		  @SuppressWarnings("rawtypes")
		List<Comparable> dataList= new ArrayList<Comparable>(); 

		  try {

		 // Load the database driver

		  Class.forName("com.mysql.jdbc.Driver");

		  // Get a Connection to the database

		  connection = DriverManager.getConnection(connectionURL, "root", "root"); 

		  //Select the data from the database

		  String sql = "select * from faultdb";

		  Statement s = connection.createStatement();

		  rs=s.executeQuery (sql);

		  

		  while (rs.next ()){
			
			out.println ("<tr>");
		       out.println("<TD><%=rs.getInt(1)%></TD>");
		       out.println("<TD><%=rs.getString(2)%></TD>");
		        out.println("<TD><%=rs.getString(3)%></TD>");
		        out.println("<TD><%=rs.getString(4)%></TD>");
		        out.println("<TD><%=rs.getString(5)%></TD>");
		        out.println("<TD><%=rs.getString(6)%></TD>");
		        out.println("<TD><%=rs.getString(7)%></TD>");
		        out.println("<TD><%=rs.getString(8)%></TD>");
		   out.println("</TR>") ;
		  

		  }

		  rs.close ();

		  s.close ();
		  connection.close();

		  }catch(Exception e){

		  System.out.println("Exception is ;"+e);

		  }


		  //Disptching request

		  RequestDispatcher dispatcher = request.getRequestDispatcher(page);

		  if (dispatcher != null){

		  dispatcher.forward(request, response);

		  } 

		  }

		}