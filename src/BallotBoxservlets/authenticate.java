package BallotBoxservlets;

import java.io.IOException;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;
import javax.servlet.http.Cookie;
/**
 * Servlet implementation class authenticate
 */
@WebServlet("/authenticate")
public class authenticate extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public java.sql.Statement myStatement; //SQL QUERY OR INSERT STATEMENTS
    /**
     * @see HttpServlet#HttpServlet()
     */
	
    //BELOW checks if  the input is valid
    public boolean validify(String userinput) {
    	return userinput.matches("[A-Za-z0-9-_]+");
    	//return userinput.matches("[A-Za-z0-9]*");
    }
    public authenticate() {
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

		/*******************BEGIN DB Connection MANAGEMENT*********************/
	    try {
	    	Class.forName("com.mysql.jdbc.Driver");
	    	System.out.println("Driverlocated");
	    } catch (ClassNotFoundException e) {
	    	System.out.println("Driver could NOT be located:" + e);
	    	
	    }
	    /*
	    String url="jdbc:mysql://localhost:3306/ballotboxdb";
	    String user="root";
	    String password="root";
	    */
	    String url="jdbc:mysql://ballotbox.c8lctglgve3o.us-west-2.rds.amazonaws.com:3316/BallotBox";
	    String user="team5";
	    String password="BallotBox";
	    
	    Connection myConnection=null;
	    try {
	    	myConnection=(Connection)DriverManager.getConnection(url,user,password);
	    	System.out.println("Successful Connection made");
	    } catch(SQLException e){
	    	System.out.println("Connection did not work");
	    }
	/*******************END DB Connection MANAGEMENT **************************/
    
	   /******************BEGIN AUTHENTICATION**************/
	    response.setContentType("text/html");   
		//get the user hashtag name input and save to myHashtag variable
	    
	    /****   Session variable ******/
		String myUsername = request.getParameter("username");
		HttpSession session = request.getSession();
		session.setAttribute("username", myUsername);
		System.out.println(myUsername);
		
		String[] temp = myUsername.split("_");	
		String voterTable = String.format("%s_Voter", temp[0]);
		//get the user post input and save to myPost variable
		String myPassword = request.getParameter("password");
		//VALIDATE USERNAME INPUT
		if (validify(myUsername) == true){
			System.out.println("Logging in with username: " + myUsername); //Check username is valid alphanumeric
			System.out.println("With Password: " + myPassword);  //Check value of password
		}	else{
			System.out.println("Username can not contain Special Characters");
		}
        try {
        	String query = null;
        	PreparedStatement myStatement = null;
        	//query = "select Voter_username from new_Voter where Voter_username = ?";
        	query = String.format("select Voter_username from %s where Voter_username =?",voterTable);
        	//query = "select Voter_username from Ualbany_Voter where Voter_username = ?";
        	myStatement = myConnection.prepareStatement(query);
        	myStatement.setString(1, myUsername);
        	System.out.println("Executing:  " + myStatement + "on the database" );
			ResultSet results = myStatement.executeQuery();
			
			while (results.next()) {
				String answer = results.getString(1);
				System.out.println("THE RESULT OF SEARCH FOR USERNAME WAS: " + answer);
				
		/********** Used in VotingModule to retreive session user name : Description: Session Cookies   *************/
				
				Cookie crunchifyCookie = new Cookie("username", myUsername);
		         // setting cookie to expiry in 60 mins
		         crunchifyCookie.setMaxAge(60 * 60);
		         response.addCookie(crunchifyCookie);
		      
		 /*****************  END OF SESSION COOKIEs *************/
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        try {
        	String query = null;
        	PreparedStatement myStatement = null;
        	//query = "select Voter_password from new_Voter where Voter_username = ?";
        	query = String.format("select Voter_password from %s where Voter_username =?",voterTable);
        	//query = "select Voter_password from Ualbany_Voter where Voter_username = ?";
        	myStatement = myConnection.prepareStatement(query);
        	myStatement.setString(1, myUsername);
        	System.out.println("Executing:  " + myStatement + "on the database" );
			ResultSet results = myStatement.executeQuery();
			
			while (results.next()) {
				String answer = results.getString(1);
				System.out.println("THE RESULT OF SEARCH FOR PASSWORD WAS: " + answer);
				 if (answer.equals(myPassword)){
					 System.out.println("The passwords match");
					 //GO TO userlogin2.jsp page for CAPTCHA and then WEBCAM plugin page
				
		 /*************************** USED IN VOTERSOCIAL.JSP Author@Navita*************************************/					    
					 Timestamp start_time = null;
					 Timestamp end_time  = null;
					 String q2 = String.format("select start_time,end_time from masterdb where election_id= \"%s\" ;",temp[0]);
					 PreparedStatement myState = null;
					 myState = myConnection.prepareStatement(q2);
					 ResultSet r = myState.executeQuery();
					 while (r.next()){
						 System.out.println(r);
						 start_time = r.getTimestamp("start_time");
						 end_time = r.getTimestamp("end_time");
					 }
					 
					 String val = new SimpleDateFormat("MM/dd/yyyy hh:mm:ss aa").format(start_time);
					 String end_val = new SimpleDateFormat("MM/dd/yyyy hh:mm:ss aa").format(end_time);
					 System.out.println("S is :" +val+    "			end is :"+ end_val);
					 
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
				session.setAttribute("end_val", end_val);
				session.setAttribute("val",val);
				//  request.setAttribute("val",val);
				  
	/*************************** END OF VOTERSOCIAL.JSP *************************************/
					 
					  RequestDispatcher dispatcher = request.getRequestDispatcher("VoterSocial.jsp");
			//	RequestDispatcher dispatcher = request.getRequestDispatcher("Captcha.jsp");
				 	 dispatcher.forward(request, response);
			        }
				 else {
					 System.out.println("The passwords do not match");
					 //REDIRECT TO loginerror.jsp
					 RequestDispatcher dispatcher = request.getRequestDispatcher("loginerror.jsp");
					 dispatcher.forward(request, response);
				 }
			}
        	
        }catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        
   
          
        
	

       
		
		
 /**********************BEGIN CREATE HASHTAG******************************/
		doGet(request, response);
	}

}