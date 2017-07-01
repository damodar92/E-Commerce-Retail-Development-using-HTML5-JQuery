
import JavaPackages.DBUtilities;
import JavaPackages.Pagination;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Sign_Up extends HttpServlet {

	private static final long serialVersionUID = 5071124248205518796L;


	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=utf-8");
		doPost(request, response);
	}


	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=utf-8");
		DBUtilities dbu = new DBUtilities();
		//System.out.println("RegisterServlet.doPost()");
		String username = request.getParameter("username");
                                      String password = request.getParameter("password");
                                      String firstname = request.getParameter("firstname");
                                      String lastname = request.getParameter("lastname");
                                      String email = request.getParameter("email");
                                      String usrtel = request.getParameter("usrtel");
                                      String SecurityQuestion1 = request.getParameter("SecurityQuestion1");
                                      String SecurityQuestion2 = request.getParameter("SecurityQuestion2");
                                
                                      String fsql = "(SELECT `C_Username`FROM `customer_details` where `C_Username`= '"+username+"');";
                                      DBUtilities dbu1 = new DBUtilities();
                                      List<Map<String,String>> flist = dbu1.find(fsql);  
		                
                                if(flist.size()>0)
                                {
                                            PrintWriter out = response.getWriter();  
                                            response.setContentType("text/html");  
                                            out.println("<script type=\"text/javascript\">");  
                                            out.println("alert('Username already exixts! Please select another username');"); 
                                             out.println("location='Sign_Up.jsp';");
                                            out.println("</script>");
                                }
                                else{
                      
                                        int res;
                                      /*  String sql;
                                        sql = "INSERT INTO `customer_details`(`C_Username`,`C_Password`,`C_FirstName`,`C_LastName`,`C_Email`,`C_MobileNumber`,`C_SQA_1`,`C_SQA_2`) VALUES ('"+username+"','"+password+"','"+firstname+"','"+lastname+"','"+email+"','"+usrtel+"','"+SecurityQuestion1+"','"+SecurityQuestion2+"')";
                                         dbu.update(sql);*/
                                         
                                         
                                         
		String sql;
                                        sql = "INSERT INTO `customer_details`(`C_Username`,`C_Password`,`C_FirstName`,`C_LastName`,`C_Email`,`C_Mobilenumber`,`C_SQA_1`,`C_SQA_2`) VALUES ('"+username+"','"+password+"','"+firstname+"','"+lastname+"','"+email+"','"+usrtel+"','"+SecurityQuestion1+"','"+SecurityQuestion2+"')";
                                       
		dbu.update(sql);
                
                
                
                                            PrintWriter out = response.getWriter();  
                                            response.setContentType("text/html");  
                                            out.println("<script type=\"text/javascript\">");  
                                            out.println("alert('Thank you for Regsitering! Enjoy Shopping!');"); 
                                             out.println("location='Login_Page.jsp';");
                                            out.println("</script>");
		
                                             //response.sendRedirect("Products.jsp"); 
                                       }	
                                }

                            }
