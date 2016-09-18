package Controller;

import java.io.IOException;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.jdbc.Connection;

import Model.connect;

/**
 * Servlet implementation class OrganiserServlet
 */
@WebServlet("/OrganiserServlet")
public class OrganiserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrganiserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession(true);
		String name=request.getParameter("username");
		String password = request.getParameter("password");

		String val= null;
		connect abc = new connect();
		String validation = abc.checkForRecord(name,password);
		if (validation!=null)
		{
			
			try {
			String url="jdbc:mysql://ballotbox.c8lctglgve3o.us-west-2.rds.amazonaws.com:3316/BallotBox";
		    String user="team5";
		    String pass="BallotBox";
		    
		    Connection myConnection=null;
		    
		    	myConnection=(Connection)DriverManager.getConnection(url,user,pass);
		    	System.out.println("Successful Connection made");
		    
			
			
			
			Timestamp end_time = null;
			 String q2 = String.format("select end_time from masterdb where election_id= \"%s\" ;",name);
			 PreparedStatement myState = null;
			 
				myState = myConnection.prepareStatement(q2);
			
			 ResultSet r = myState.executeQuery();
			 
			while (r.next()){
				 end_time = r.getTimestamp("end_time");
			 }
			 
			  val = new SimpleDateFormat("MM/dd/yyyy hh:mm:ss aa").format(end_time);
			 System.out.println("S is :" +val);
			 
			// int val = 8;
			//  request.setAttribute("val", val);
			/* String dat = "29";
			 String mon = "04";
			 String year = "2016";
			 String hr = "11";
			 String min = "53";
			 String DN = "AM";
			*/ 
			 
		//	 String val =   mon +"/" + dat + "/" +year + " "+hr+":"+min+" "+DN ;
			 //System.out.println(val);					 
		  
			} catch(Exception e){
		    	System.out.println("Connection did not work");
		    }
			
			
			
			
			
			
			
			request.setAttribute("val",val);
			session.setAttribute("election_id", name);
			RequestDispatcher RequetsDispatcherObj =request.getRequestDispatcher("/Administration_Homepage.jsp");
		    RequetsDispatcherObj.forward(request, response);
			//response.sendRedirect("Administration_Homepage.jsp");
			//getServletContext().getRequestDispatcher("/Administration_Homepage.jsp").forward(request, response);
		}
		
		else
		{
			request.setAttribute("error","Invalid Credentials.");
			getServletContext().getRequestDispatcher("/AdminLogin.jsp").forward(request, response);
			System.out.println("Invalid Credentials");
			
		}
		
		
		
		// TODO Auto-generated method stub
	}

}
