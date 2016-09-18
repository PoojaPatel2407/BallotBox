package Mailer;

import java.io.IOException;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.jdbc.Connection;

/**
 * Servlet implementation class CalculateResult
 */
@WebServlet("/CalculateResult")
public class CalculateResult extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public CalculateResult() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
        HttpSession session = request.getSession(true);
		
		String election_id = (String) session.getAttribute("election_id");
		//String election_id = "suny";
		
		//java.util.Date date = new java.util.Date();
		//java.sql.Date sqlDate = new java.sql.Date(date.getTime()); 
		//System.out.println(sqlDate);
		Date date= new Date();
        //getTime() returns current time in milliseconds
	 long time = date.getTime();
        //Passed the milliseconds to constructor of Timestamp class 
	 Timestamp ts = new Timestamp(time);
	 Timestamp end_date=null;
		
		String[] candidate_list;
		int[] no_of_votes;
		String[] candidate_username_list;
		int candidateCount=0;
		
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
		//	c = DriverManager.getConnection("jdbc:mysql://localhost/ballotboxdb?autoReconnect=true&useSSL=false", "root", "");
			c = DriverManager.getConnection("jdbc:mysql://ballotbox.c8lctglgve3o.us-west-2.rds.amazonaws.com:3316/BallotBox","team5","BallotBox");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		String sql = "SELECT * FROM  masterdb WHERE election_id= ?";
		java.sql.PreparedStatement ps = null;
		try {
			ps = c.prepareStatement(sql);
			ps.setString(1, election_id);
			result = ps.executeQuery();
										
				while (result.next()) {
					end_date= result.getTimestamp("end_time");
					}
		//System.out.println(end_date);
		if(end_date.getTime() - ts.getTime()>0)
		{
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
			session.setAttribute("time_left", "1");
			//System.out.println("here");
			RequestDispatcher RequetsDispatcherObj = request.getRequestDispatcher("/Administration_Homepage.jsp");
			RequetsDispatcherObj.forward(request, response);
			
		}
		sql = "SELECT * FROM " + candidate_table;
		ps = null;
		
			ps = c.prepareStatement(sql);
			result = ps.executeQuery();
										
				while (result.next()) {
					candidateCount++;
					}
				candidate_list = new String[candidateCount];
				no_of_votes = new int[candidateCount];
				candidate_username_list= new String[candidateCount];
				
				sql = "SELECT * FROM " + candidate_table;
				ps = null;				
					ps = c.prepareStatement(sql);
					result = ps.executeQuery();
					int i=0;				
						while (result.next()) {
							candidate_list[i] = result.getString("Candidate_name");
							no_of_votes[i] = result.getInt("Total_votes");
							candidate_username_list[i] = result.getString("Candidate_username");
							  i++;
							}
						
						int max = 0;
						for(int j=0; j<candidateCount; j++)
						{
							if (no_of_votes[j] > no_of_votes[max]) {
							      max = j;
							    }
						}
						
						request.setAttribute("candidate_username", candidate_username_list[max]);
						request.setAttribute("candidate_name", candidate_list[max]);
				        RequestDispatcher RequetsDispatcherObj =request.getRequestDispatcher("/ResultPage.jsp");
					    RequetsDispatcherObj.forward(request, response);
			
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
	}

}
