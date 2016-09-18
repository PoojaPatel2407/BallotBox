package Mailer;

import java.io.IOException;
import java.io.PrintWriter;
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

/**
 * Servlet implementation class UpdateEmail
 */
@WebServlet("/NotifyUsers")
public class NotifyUsers extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public NotifyUsers() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
    	
    	
       HttpSession session = request.getSession(true);
		

        String election_id = (String) session.getAttribute("election_id");
				
    	
    	//String election_id = request.getParameter("election_id");
	    String to="";  
	    String subject= "";  
	    String content="";  
	    String candidate_table;
		String voter_table;
		
	    candidate_table = election_id;
		candidate_table = candidate_table.concat("_Candidate");
		voter_table = election_id;
		voter_table = voter_table.concat("_Voter");
    	
		try {
			Class.forName("com.mysql.jdbc.Driver");

		} catch (ClassNotFoundException ex) {
			System.out.println(ex);
		}
		
		java.sql.Connection c;
		c = null;
		ResultSet result = null;
		try {
		//	c = DriverManager.getConnection("jdbc:mysql://localhost/ballotboxdb", "root", "");
			c = DriverManager.getConnection("jdbc:mysql://ballotbox.c8lctglgve3o.us-west-2.rds.amazonaws.com:3316/BallotBox?user=team5&password=BallotBox");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		String sql = "SELECT * FROM " + candidate_table ;
		java.sql.PreparedStatement ps = null;
		try {
			ps = c.prepareStatement(sql);
			result = ps.executeQuery();
		
		if (result.next()) 
		{
			String username= result.getString("Candidate_username");
			String password= result.getString("Candidate_password");
			
			subject= "BallotBox Voting";  
		    content="Welcome to BallotBox. Kindly Login with ur credentials. As follows:"
		    		+ "UserId-" +username+
		    		 "Password-" +password+"/n"
		    		 	+ "Follow the link: http://ballotboxteam5.pwmcx4h3iy.us-west-2.elasticbeanstalk.com/CandidateLogin.jsp?param1="+election_id;
		    		 //+ "Follow the link: http://localhost:8080/BallotBox/CandidateLogin.jsp?param1="+election_id;
			String get_Candidate_mailID = result.getString("Candidate_email");
			SendEmail.sendEmail("smtp.gmail.com", "587", "ballotboxSEteam5@gmail.com", "ballotbox@team5", get_Candidate_mailID, subject, content);
			
		}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		sql = "SELECT * FROM " + voter_table;
		ps = null;
		try {
			System.out.println(sql);
			ps = c.prepareStatement(sql);
			result = ps.executeQuery();
		
		if (result.next()) 
		{
			String username= result.getString("Voter_username");
			String password= result.getString("Voter_password");
			
			subject= "BallotBox Voting";  
		    content="Welcome to BallotBox. Kindly Login with ur credentials. As follows:"
		    		+ "UserId-" +username+
		    		 "Password-" +password+"/n"
		    		 	+ "Follow the link: http://ballotboxteam5.pwmcx4h3iy.us-west-2.elasticbeanstalk.com/VoterLogin1.jsp?param1="+election_id;
			    		 		
		    		 //+ "Follow the link: http://localhost:8080/BallotBox/VoterLogin1.jsp?param1="+election_id;
			String get_Voter_mailID = result.getString("Voter_email");
			SendEmail.sendEmail("smtp.gmail.com", "587", "ballotboxSEteam5@gmail.com", "ballotbox@team5", get_Voter_mailID, subject, content);
			
		}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//HttpSession session = request.getSession();
		
		
		
		
		
		
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
				
		session.setAttribute("success_mail", "1");
		RequestDispatcher RequetsDispatcherObj =request.getRequestDispatcher("/Administration_Homepage.jsp");
	    RequetsDispatcherObj.forward(request, response);
		
    }
}
