package Mailer;

import java.io.IOException;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
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

/**
 * Servlet implementation class AdminPageRedirect
 */
@WebServlet("/AdminPageRedirect")
public class AdminPageRedirect extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public AdminPageRedirect() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
  HttpSession session = request.getSession(true);
		

        String election_id = (String) session.getAttribute("election_id");
        String val= null;
        
        
        try {
			String url="jdbc:mysql://ballotbox.c8lctglgve3o.us-west-2.rds.amazonaws.com:3316/BallotBox";
		    String user="team5";
		    String pass="BallotBox";
		    
		    Connection myConnection=null;
		    
		    	myConnection=(Connection)DriverManager.getConnection(url,user,pass);
		    	System.out.println("Successful Connection made");
		    
			
			
			
			Timestamp end_time = null;
			 String q2 = String.format("select end_time from masterdb where election_id= \"%s\" ;",election_id);
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
			//session.setAttribute("election_id", election_id);
			RequestDispatcher RequetsDispatcherObj =request.getRequestDispatcher("/Administration_Homepage.jsp");
			RequetsDispatcherObj.forward(request, response);
	}

}
