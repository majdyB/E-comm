
 
import java.io.PrintWriter;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.*;

 
import java.sql.*;
import java.sql.PreparedStatement;
import java.sql.Statement;
 
 
/**
 * Servlet implementation class Login
 */
@WebServlet("/login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		// TODO Auto-generated method stub
        String uname = request.getParameter("username");
        String upass = request.getParameter("password");
        HttpSession session = request.getSession();
        RequestDispatcher dispatcher = null;
        try {
        	Class.forName("com.mysql.jdbc.Driver");
        	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ml?useSSL=false" ,"root","1111");   
        	PreparedStatement pst = con.prepareStatement("select * from users where user_name=? and pwd=?");
        	pst.setString(1, uname);
        	pst.setString(2, upass);
        	ResultSet rs = pst.executeQuery();
        	if (rs.next()) {
        		
        		session.setAttribute("name", rs.getString("user_name"));
        		session.setAttribute("type", rs.getString(5));
        		// هون بتقلو لوين يوديه بعد ما يسجل دخول
        		dispatcher = request.getRequestDispatcher("index.jsp");
        		
        		
        		
        	}
        	else {
        		request.setAttribute("status", "faild");
        		dispatcher  = request.getRequestDispatcher("index.jsp");
        		
        	}
        	dispatcher.forward(request, response);
        }catch(Exception e) {
        	e.printStackTrace();
        }

	}

}
