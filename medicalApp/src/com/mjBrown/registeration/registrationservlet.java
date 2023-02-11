package com.mjBrown.registeration;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.*;

 
import java.sql.*;
import java.sql.PreparedStatement;

 
/**
 * Servlet implementation class registrationservlet
 */
@WebServlet("/register")
public class registrationservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
             String uname = request.getParameter("name");	
             String email = request.getParameter("email");	
             String password = request.getParameter("pass");	
             String usertype = "uesr";
             RequestDispatcher dispatcher = null;
             Connection con = null;
              
            
         	try {
        		Class.forName("com.mysql.jdbc.Driver");
        		   con = DriverManager.getConnection
        				("jdbc:mysql://localhost:3306/ml?useSSL=false" ,"root","1111");
        		PreparedStatement pst = con.prepareStatement("insert into users(user_name,email,pwd,utype) values (?,?,?,?)");
        		pst.setString(1, uname);
        		pst.setString(2, email);
        		pst.setString(3, password);
        		pst.setString(4, usertype );
               int rowCount = pst.executeUpdate();
               dispatcher= request.getRequestDispatcher("registrationservlet");
               if(rowCount > 0) {
            	   request.setAttribute("status", "success");
            	   dispatcher = request.getRequestDispatcher("login.jsp");
               }
               else {
            	   request.setAttribute("status", "faild");
            	   dispatcher = request.getRequestDispatcher("registration.jsp");
               }
               dispatcher.forward(request, response);
        	}catch(Exception e) {
        		
        		e.printStackTrace();
        		
        	}
        	}
         	 
             
	}



