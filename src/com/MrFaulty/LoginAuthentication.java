package com.MrFaulty;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.ServletConfig;

/**
 * Servlet implementation class LoginAuthentication
 */
@WebServlet("/LoginAuthentication")
public class LoginAuthentication extends HttpServlet {
 private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
 
       
        private ServletConfig config;
     
     public void init(ServletConfig config)
       throws ServletException{
       this.config=config;
    }


 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
  PrintWriter out = response.getWriter();
  String connectionURL = "jdbc:mysql://localhost:3306/mrfaulty";
  Connection connection=null;
  
  String userName=request.getParameter("user");
 
  String passwrd=request.getParameter("pass");

  response.setContentType("text/html");
  try {
    // Load the database driver
   Class.forName("com.mysql.jdbc.Driver");
   // Get a Connection to the database
   connection = DriverManager.getConnection(connectionURL, "root", "root"); 
   //Add the data into the database
   String sql = "select user,password from logindb where user='"+userName+"'and password='"+passwrd+"'";
   Statement s = connection.createStatement();
   ResultSet rs = s.executeQuery(sql);
  if(userName.equals(request.getParameter("user")) && passwrd.equals(request.getParameter("pass"))){
	  
	  String destination  ="Home.jsp";        
	  response.sendRedirect(response.encodeRedirectURL(destination));
	  
  }
  else{
   out.println("Please enter correct username and password");
   out.println("<a href='Login.jsp'><br>Login again</a>");
  }
  
   rs.close ();
   s.close ();
   }catch(Exception e){
   System.out.println("Exception is ;"+e);
  
 }

 }
 protected void doGET( ServletRequest session, ServletRequest request){
	 String userName=request.getParameter("userName");
	  if(userName==null) userName="";
	  session.setAttribute("user",userName);;
	  }
 }


