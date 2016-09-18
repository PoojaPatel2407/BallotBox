package BallotBoxservlets;


import java.awt.image.BufferedImage;
import java.io.*;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

import com.mysql.jdbc.Connection;

import java.util.List;
//import model.hashtag;

/**
 * Servlet implementation class VotingModuleServlet
 */
@WebServlet("/VotingModuleServlet")
public class VotingModuleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public VotingModuleServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		//get request parameter to look up if user already voted
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			Object value = request.getSession().getAttribute("username");
			
			String action = request.getParameter("action");
			System.out.println("action :" + action + ", value: " + value);
			if (value.equals(action)) {
				try{
					String[] temp = action.split("_");	
					
					
					
					
					String candTable = String.format("%s_Candidate", temp[0]);
					// Get total count of Candidates
					int count = Vote.candidateNumber(candTable);
					request.setAttribute("result", count);
					System.out.println( count);
					
					// Get Blurb
					
					Map<String, List<String>> V = Vote.candidateDetails(candTable);
				//	List<BufferedImage>  V = Vote.candidateDetails(searchTable);
					RequestDispatcher rdImg = this.getServletContext().getRequestDispatcher("/VotingModule.jsp");
					request.setAttribute("blurb", V);
					//rdImg.include((ServletRequest)request, (ServletResponse)response);
					rdImg.forward((ServletRequest)request, (ServletResponse)response);
							} 
				catch(Exception e){
					e.printStackTrace();
				}
			}
			else if ("Vote".equals(action)) {
					try{
						String user = (String) value;	// voter name
						String[] temp = user.split("_");	
						String votertable = String.format("%s_Voter", temp[0]);
						System.out.println("username-"+user);
						// send username to database for cross check if voter has already voted or not
						boolean vote_flag = Vote.main(user,votertable);
						if(!vote_flag){
								System.out.println("Vote is 0");					
								System.out.println("Radio: "+request.getParameter("radios")); 
								if(request.getParameter("radios") != null){
									System.out.println("Radio not  empty");
									//response.setContentType("text/javascript");
									//PrintWriter t = response.getWriter();
									//t.print("<script type=\"text/javascript\">var ok = confirm('Are you sure. If yes please press OK'); if(ok==true){ ok=window.location='voterSurvey.jsp';} else {history.go(-1);}</script>");

									
								/*	t.println("<script>var ok = confirm('Are you sure. If yes please press OK');" 
											+ " if(ok==true)"
											+ "{ok=window.location='voterSurvey.jsp'; } "
													+ "{ok=window.location='home.jsp'; } "
											+ "else {history.go(-1);}</script>");
									*/	
								//	out.println("<html><body onload=\"confirm('Are you sure?')\"></body></html>");
									out.println("<html><body onload=\"alert('Your vote has been registered. Thanks')\"></body></html>");
									Vote.flagUser(user,votertable); 
								//	out.println(<font> </font>);
									
									
								//	RequestDispatcher rmd = getServletContext().getRequestDispatcher("/home.jsp");
									RequestDispatcher rmd = getServletContext().getRequestDispatcher("/voterSurvey.jsp");
									rmd.include(request, response);			}
								else {
									System.out.println("Radio is empty");
								//	PrintWriter ot = response.getWriter();
									HttpSession session = request.getSession();
									
									session.setAttribute("no_candidate", "1");
								/*	 out.println("<script>");
									   out.println("alert('No Candidate selected !!');");
									   out.println("location='/VotingModule.jsp';");
									   out.println("</script>");
									   */
									out.println("<html><body onload=\"alert('No Candidate selected !!')\"></body></html>");
									RequestDispatcher reqdisp = getServletContext().getRequestDispatcher("/VotingModule.jsp");
									
									reqdisp.include(request, response);
								}
						}
						else{
							System.out.println("Vote is not 0");
						//	PrintWriter ut = response.getWriter();
							 /*out.println("<script>");
							   out.println("alert('Your vote exist');");
							   out.println("location='/voterSurvey.jsp';");
							   out.println("</script>");
							   */
							out.println("<html><body onload=\"alert('Your vote exist')\"></body></html>");
							RequestDispatcher r = getServletContext().getRequestDispatcher("/voterSurvey.jsp");
							r.include(request, response);			
							   }
						}catch(Exception ex){
							ex.printStackTrace();
						}
			}
			}
}